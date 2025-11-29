📘 College AI Impact Analysis — SQL Project

This project contains a collection of SQL queries designed to analyze how AI adoption impacts colleges, students, departments, and academic performance.

The dataset includes information about colleges, students, performance metrics, and EdTech usage.
This README explains each query and the insights it helps uncover.

📂 Project Structure
college_analysis_sql.sql
README.md
🎯 Project Objective

To analyze AI adoption in colleges and understand its impact on:

Student performance

GPA improvement

Attendance changes

EdTech usage patterns

Department-level outcomes

AI platform effectiveness

🗃️ Database Used

The project uses a database named collegedb1:

CREATE DATABASE collegedb1;
USE collegedb1;

📊 SQL Queries & Explanations
1️⃣ List all colleges that adopted AI in 2024

Finds colleges where adoption_year = 2024.

2️⃣ Find number of students in each department

Counts students grouped by department.

3️⃣ Average GPA Before vs After AI Adoption

Joins college, student, and performance tables to show GPA changes.

4️⃣ Top 10 Students by Hours Spent on EdTech Platforms

Ranks students based on their total usage time.

5️⃣ Correlation Pattern: AI Acceptance vs GPA Change

Shows how accepting more AI recommendations correlates with GPA improvement.

6️⃣ Attendance Improvement After AI Adoption

Calculates difference:
attendance_after_ai - attendance_before_ai.

7️⃣ Which AI Platform Produced the Highest GPA Improvement?

Compares LearnAI, SmartTutor, MindEd to find the best performer.

8️⃣ Does Usage Hours Lead to Better Quiz Performance?

Analyzes the relationship between total hours spent vs quizzes taken.

9️⃣ Departments Most Benefited From AI Adoption

Finds which department has the highest total GPA improvement.

🔟 First-Year vs Final-Year: Who Benefited Most?

Compares GPA improvement between Sem-2 (first-year) and Sem-8 (final-year).

🧠 Key Insights From Queries

✔ Impact of AI across colleges
✔ Student engagement and performance tracking
✔ Identification of top users and improvements
✔ Department-level performance shifts
✔ Evaluation of AI platforms

🛠️ Technologies Used

MySQL / SQL

Inner & left joins

Group By, Aggregations

Ranking & filtering

Performance analytics

📥 How to Use

Import tables (colleges, students, performance, edtech_usage).

Run the SQL file:

SOURCE college_analysis_sql.sql;


View analytics outputs in your SQL editor.

⭐ Author

SQL Analysis Project created using real-world EdTech adoption scenarios.