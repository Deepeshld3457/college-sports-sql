# 🏆 College Sports Eligibility & Tournament Selection System
### SQL Portfolio Project | MySQL | SVCE Chennai

---

## 📌 Project Overview

This project simulates a **College Sports Eligibility System** for Sri Venkateswara College of Engineering (SVCE), Chennai. The system evaluates student athletes across three key dimensions — academic eligibility, attendance, and practice performance — to determine who qualifies for upcoming inter-college tournaments.

Built entirely in **MySQL Workbench** using a custom-designed relational database with realistic synthetic data.

---

## 🎯 Problem Statement

A college sports coordinator needs to:
- Track which students are part of the sports team across 13 different sports
- Check academic eligibility (no pending arrears)
- Verify attendance eligibility (minimum 80% attendance)
- Monitor practice consistency and punctuality
- Identify injured players who cannot participate despite being eligible
- Generate a final ranked list of eligible players per sport

---

## 🗃️ Database Schema

The database consists of **8 tables** with proper relationships via foreign keys:

| Table | Description |
|---|---|
| `students` | Master table — student details, department, semester, batch |
| `sports_team` | Which student plays which sport and position |
| `arrear` | Pending or cleared subject arrears per student |
| `attendance` | Monthly attendance percentage per student |
| `practice` | Daily practice log — punctuality and performance rating |
| `fitness_status` | Current fitness status — fit, injured, or recovering |
| `tournament` | Upcoming tournament details |
| `selections` | Final selected players per tournament |

### Entity Relationship Overview
```
students ──< sports_team
students ──< arrear
students ──< attendance
students ──< practice
students ──< fitness_status
students ──< selections >── tournament
```

---

## 📊 Dataset

- **50 students** from SVCE across 5 departments (CSE, ECE, IT, MECH, CIVIL)
- **13 sports** — Cricket, Football, Kabaddi, Volleyball, Badminton, Basketball, Athletics, Swimming, Tennis, Table Tennis, Throwball, Khokho, Handball
- **150 attendance records** — 3 months per student (Jan, Feb, Mar 2024)
- **150 practice log entries** — 3 sessions per student
- **15 arrear records** — mix of pending and cleared
- **8 tournament entries**
- **33 selection records**

All data is synthetic but realistic — Tamil Nadu names, SVCE departments, and real sport positions.

---

## 🔍 Queries & Business Problems Solved

### Query 1 — Sports Team Overview
**Business Question:** Who are all the students in the sports team and what do they play?

**Concepts:** `JOIN`, `ORDER BY`

Lists all 50 students with their department, degree, semester, sport and position.

---

### Query 2 — Attendance Eligibility Check
**Business Question:** Which students have maintained at least 80% average attendance?

**Concepts:** `JOIN`, `AVG`, `GROUP BY`, `HAVING`, `ROUND`

Calculates average attendance across 3 months per student and filters those meeting the 80% threshold.

---

### Query 3 — Arrear Eligibility Check
**Business Question:** Which students have no pending arrears?

**Concepts:** `Subquery`, `NOT IN`

Uses a subquery to identify students with pending arrears and excludes them from the eligible list.

---

### Query 4 — Combined Eligibility Check ⭐
**Business Question:** Which students pass BOTH the attendance and arrear eligibility criteria?

**Concepts:** `JOIN`, `Subquery`, `NOT IN`, `GROUP BY`, `HAVING`

The core query of the project — combines both eligibility conditions to produce the final list of academically and attendance-wise eligible players.

---

### Query 5 — Practice Performance Ranking ⭐
**Business Question:** Among eligible students, who are the top performers in each sport based on practice?

**Concepts:** `CTE`, `Window Function`, `RANK()`, `PARTITION BY`, `CASE WHEN`

Uses two CTEs — one for eligible students and one for practice scores — then applies `RANK()` with `PARTITION BY sports_name` to rank players within each sport separately.

---

### Query 6 — Late Practice Attendance
**Business Question:** Which students came late to practice more than once?

**Concepts:** `COUNT`, `WHERE`, `GROUP BY`, `HAVING`

Identifies consistently unpunctual students who may be a discipline concern for selection.

---

### Query 7 — Department Wise Eligibility Breakdown
**Business Question:** How many eligible vs non-eligible players does each department have?

**Concepts:** `CTE`, `CASE WHEN`, `SUM`, `Conditional Aggregation`, `GROUP BY`

Produces a department-wise summary report showing eligible and non-eligible counts side by side.

---

### Query 8 — Eligible But Injured Players
**Business Question:** Are there students who are academically eligible but physically unfit to play?

**Concepts:** `Multiple Subqueries`, `IN`, `NOT IN`, `JOIN`

Handles a real-world edge case — students who pass all academic and attendance checks but are currently injured or recovering. Helps the coordinator plan for replacements.

---

## 💡 Key SQL Concepts Demonstrated

| Concept | Used In |
|---|---|
| INNER JOIN | Queries 1, 2, 4, 5, 6, 8 |
| Subqueries | Queries 3, 4, 7, 8 |
| NOT IN / IN | Queries 3, 4, 7, 8 |
| GROUP BY + HAVING | Queries 2, 4, 5, 6 |
| AVG, COUNT, SUM | Queries 2, 6, 7 |
| CTE (WITH clause) | Queries 5, 7 |
| Window Functions | Query 5 |
| RANK() PARTITION BY | Query 5 |
| CASE WHEN | Queries 5, 7 |
| ENUM data type | arrear, practice, fitness_status, selections |
| Foreign Keys | All tables |
| AUTO_INCREMENT | All tables except students |

---

## 🛠️ Tools Used

- **Database:** MySQL 8.0
- **IDE:** MySQL Workbench
- **Data:** Custom synthetic data with Tamil Nadu context

---

## 📁 Project Structure

```
college-sports-sql/
│
├── README.md
├── college_sports_final.sql        -- Full schema + data export from Workbench
└── college_sports_queries.sql      -- All 8 analytical queries
```

---

## 🚀 How to Run This Project

1. Install MySQL 8.0 and open MySQL Workbench
2. Run `college_sports_final.sql` to create the database, all tables and insert data
3. Run any query from `college_sports_queries.sql` to see results
4. Verify setup with `SHOW TABLES;` and `SELECT COUNT(*) FROM students;`

---

## 📈 Key Insights from the Data

- Out of 50 students, approximately **35 are fully eligible** to participate
- **8 students** are blocked due to pending arrears
- **8 students** are blocked due to low attendance (below 80%)
- **1 student** (Muthu Selvam) is academically eligible but currently recovering from injury
- Deepesh A (1032, CSE, Kabaddi) ranks among top performers in practice with avg rating 8.67
- Badminton and Athletics teams have the strongest overall practice performance ratings

---

## 👤 Author

**Deepesh A**
B.E Computer Science Engineering | Semester 5 | Batch 2022
Sri Venkateswara College of Engineering, Chennai

📧 deepesh.a@svce.ac.in

---

*This project was built as part of a Data Analyst portfolio to demonstrate SQL skills including database design, complex querying, CTEs, window functions, and real-world business problem solving.*
