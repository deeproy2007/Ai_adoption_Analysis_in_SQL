# README.md

# 📘 College AI Impact Analysis — SQL Project

This project analyzes the impact of **AI adoption in colleges** using SQL. It explores how AI influences academic performance, student engagement, platform effectiveness, and department-level outcomes.

---

## 🛠️ Tools & Technologies Used

* **MySQL / SQL**
* Data filtering & retrieval
* JOIN operations
* Aggregations (SUM, AVG, COUNT)
* Performance comparison techniques
* Ranking & correlation analysis

---

## 🎯 Project Objective

The goal of this SQL project is to understand how AI technologies influence:

* Student GPA improvement
* Attendance performance
* EdTech usage behavior
* Department-wise academic outcomes
* Effectiveness of different AI learning platforms
* Year-wise academic growth (first-year vs final-year students)

---

## 📂 File Structure

```
college_analysis_sql.sql
readme.md
tool.txt
```

---

## 📊 Key SQL Analyses Included

### **1️⃣ Colleges That Adopted AI (2024)**

Fetches colleges with AI adoption in 2024.

### **2️⃣ Student Count by Department**

Provides the size of each academic department.

### **3️⃣ GPA Before vs After AI Adoption**

Analyzes GPA improvement after AI adoption.

### **4️⃣ Top 10 Students by EdTech Usage**

Ranks students by total hours spent using EdTech tools.

### **5️⃣ Correlation Between AI Recommendations Accepted & GPA Change**

Shows how accepting AI recommendations impacts GPA growth.

### **6️⃣ Attendance Improvement After AI**

Calculates increase in attendance after AI-based interventions.

### **7️⃣ Best Performing AI Platform**

Identifies the platform with the highest average GPA improvement.

### **8️⃣ Hours Spent vs Quiz Performance**

Analyzes if more hours spent leads to better quiz results.

### **9️⃣ Most Benefited Department**

Finds which department gained the highest GPA improvement from AI.

### **🔟 First-Year vs Final-Year Performance Improvement**

Determines whether Sem-2 or Sem-8 students improved the most.

---

## 📊 Tables Used in the Project

### **colleges**

Stores college-level information like AI adoption year and platform.

### **students**

Contains student identity, department, and academic level.

### **performance**

Includes GPA and attendance before and after AI adoption.

### **edtech_usage**

Tracks hours spent, quizzes attempted, and AI recommendations accepted.

---

## 🚀 How to Run

1. Import all tables into MySQL.
2. Run the SQL script:

   ```sql
   SOURCE college_analysis_sql.sql;
   ```
3. View results in your SQL client.

---

## ✔ Summary

This SQL project delivers analytical insights on AI adoption in colleges. It highlights how students perform with AI tools, which departments benefit most, and which AI platforms produce the highest academic improvement.

Use this repository to:

* Practice SQL
* Build portfolio projects
* Analyze real-world education data
