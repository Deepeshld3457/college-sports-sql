-- ============================================================
-- College Sports Eligibility & Tournament Selection System
-- SVCE Chennai | MySQL Project
-- Author: Deepesh A | CSE | Batch 2022 | Semester 5
-- ============================================================

USE college_sports;

-- ============================================================
-- QUERY 1: List all students in the sports team
--          with their department, degree, sport and position
-- Concepts: JOIN, ORDER BY
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    s.degree,
    s.semester,
    st.sports_name,
    st.position
FROM students s
JOIN sports_team st ON s.student_id = st.student_id
ORDER BY s.department, s.student_name;


-- ============================================================
-- QUERY 2: Find students with average attendance >= 80%
-- Concepts: JOIN, AVG, GROUP BY, HAVING, ROUND
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    s.degree,
    s.semester,
    ROUND(AVG(a.percentage), 2) AS avg_attendance
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name, s.department, s.degree, s.semester
HAVING AVG(a.percentage) >= 80
ORDER BY avg_attendance DESC;


-- ============================================================
-- QUERY 3: Find students with NO pending arrears
-- Concepts: Subquery, NOT IN
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    s.semester,
    st.sports_name
FROM students s
JOIN sports_team st ON s.student_id = st.student_id
WHERE s.student_id NOT IN (
    SELECT student_id 
    FROM arrear 
    WHERE status = 'pending'
)
ORDER BY s.department, s.student_name;


-- ============================================================
-- QUERY 4: Combined eligibility check
--          No pending arrears AND attendance >= 80%
-- Concepts: JOIN, Subquery, NOT IN, GROUP BY, HAVING
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    s.degree,
    s.semester,
    st.sports_name,
    ROUND(AVG(a.percentage), 2) AS avg_attendance
FROM students s
JOIN sports_team st ON s.student_id = st.student_id
JOIN attendance a ON s.student_id = a.student_id
WHERE s.student_id NOT IN (
    SELECT student_id 
    FROM arrear 
    WHERE status = 'pending'
)
GROUP BY s.student_id, s.student_name, s.department, 
         s.degree, s.semester, st.sports_name
HAVING AVG(a.percentage) >= 80
ORDER BY avg_attendance DESC;


-- ============================================================
-- QUERY 5: Rank eligible students by practice performance
-- Concepts: CTE, Window Function, RANK(), PARTITION BY, CASE WHEN
-- ============================================================

WITH eligible_students AS (
    SELECT 
        s.student_id,
        s.student_name,
        s.department,
        s.semester,
        st.sports_name
    FROM students s
    JOIN sports_team st ON s.student_id = st.student_id
    JOIN attendance a ON s.student_id = a.student_id
    WHERE s.student_id NOT IN (
        SELECT student_id FROM arrear 
        WHERE status = 'pending'
    )
    GROUP BY s.student_id, s.student_name, 
             s.department, s.semester, st.sports_name
    HAVING AVG(a.percentage) >= 80
),
practice_scores AS (
    SELECT 
        student_id,
        ROUND(AVG(performance_rating), 2) AS avg_rating,
        SUM(CASE WHEN on_time = 'yes' THEN 1 ELSE 0 END) AS times_on_time
    FROM practice
    GROUP BY student_id
)
SELECT 
    e.student_id,
    e.student_name,
    e.department,
    e.sports_name,
    p.avg_rating,
    p.times_on_time,
    RANK() OVER (
        PARTITION BY e.sports_name 
        ORDER BY p.avg_rating DESC
    ) AS sport_rank
FROM eligible_students e
JOIN practice_scores p ON e.student_id = p.student_id
ORDER BY e.sports_name, sport_rank;


-- ============================================================
-- QUERY 6: Students who came late to practice more than once
-- Concepts: COUNT, WHERE, GROUP BY, HAVING, ORDER BY
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    st.sports_name,
    COUNT(*) AS total_late_count
FROM students s
JOIN practice p ON s.student_id = p.student_id
JOIN sports_team st ON s.student_id = st.student_id
WHERE p.on_time = 'no'
GROUP BY s.student_id, s.student_name, 
         s.department, st.sports_name
HAVING COUNT(*) > 1
ORDER BY total_late_count DESC;


-- ============================================================
-- QUERY 7: Department wise breakdown of eligible vs not eligible
-- Concepts: CASE WHEN, SUM, Conditional Aggregation, GROUP BY
-- ============================================================

WITH attendance_avg AS (
    SELECT student_id,
           AVG(percentage) AS avg_pct
    FROM attendance
    GROUP BY student_id
),
pending_arrears AS (
    SELECT DISTINCT student_id
    FROM arrear
    WHERE status = 'pending'
)
SELECT 
    s.department,
    COUNT(*) AS total_students,
    SUM(CASE 
        WHEN s.student_id NOT IN (SELECT student_id FROM pending_arrears)
        AND (SELECT avg_pct FROM attendance_avg WHERE student_id = s.student_id) >= 80
        THEN 1 ELSE 0 
    END) AS eligible_count,
    SUM(CASE 
        WHEN s.student_id IN (SELECT student_id FROM pending_arrears)
        OR (SELECT avg_pct FROM attendance_avg WHERE student_id = s.student_id) < 80
        THEN 1 ELSE 0 
    END) AS not_eligible_count
FROM students s
GROUP BY s.department
ORDER BY s.department;


-- ============================================================
-- QUERY 8: Students who are eligible but injured/recovering
-- Concepts: Multiple Subqueries, IN, NOT IN, JOIN
-- ============================================================

SELECT 
    s.student_id,
    s.student_name,
    s.department,
    s.semester,
    st.sports_name,
    f.status AS fitness_status,
    f.reason
FROM students s
JOIN sports_team st ON s.student_id = st.student_id
JOIN fitness_status f ON s.student_id = f.student_id
WHERE s.student_id NOT IN (
    SELECT student_id FROM arrear 
    WHERE status = 'pending'
)
AND s.student_id IN (
    SELECT student_id FROM attendance
    GROUP BY student_id
    HAVING AVG(percentage) >= 80
)
AND s.student_id IN (
    SELECT student_id FROM fitness_status
    WHERE status IN ('injured', 'recovering')
)
ORDER BY f.status, s.department;
