create database collegedb1;
use collegedb1;
-- 1. List all colleges that adopted AI in 2024.
SELECT 
    college_name, adoption_year
FROM
    colleges
WHERE
    adoption_year = 2024;
-- 2. Find the number of students in each department. 
SELECT 
    department, COUNT(student_id)
FROM
    students
GROUP BY department;
-- 3. Show the average GPA before and after AI adoption for each college.
SELECT 
    c.college_name, AVG(p.gpa_after_ai) as gpa_after_ai, avg(p.gpa_before_ai) as gpa_before_ai
FROM
    colleges c
        JOIN
    students s ON c.college_id = s.college_id
        JOIN
    performance p ON p.student_id = s.student_id
GROUP BY c.college_name;
-- 4. Identify the top 10 students with the highest “hours_spent” on EdTech platforms.
SELECT 
    student_id, SUM(hours_spent) AS total_hours_spent
FROM
    edtech_usage
GROUP BY student_id
ORDER BY total_hours_spent DESC limit 10;
-- 5. Show the correlation pattern: students who accepted more AI recommendations vs. change in GPA.
SELECT 
    s.student_id,
    COUNT(CASE
        WHEN ed.ai_recommendations_accepted = 1 THEN 1
    END) AS total_accepted_recommendations,
    (p.gpa_after_ai - p.gpa_before_ai) AS gpa_change
FROM
    students s
        JOIN
    edtech_usage ed ON s.student_id = ed.student_id
        JOIN
    performance p ON s.student_id = p.student_id
GROUP BY s.student_id , p.gpa_after_ai , p.gpa_before_ai
ORDER BY total_accepted_recommendations DESC;


-- 6. Compare attendance improvement:-- o Calculate “attendance_after_ai – attendance_before_ai” for each student.
SELECT 
    s.student_name,
    (attendance_after_ai - attendance_before_ai) AS attendance_improvement
FROM
    students s
        JOIN
    performance p ON s.student_id = p.student_id;
--     7. Find which AI platform (LearnAI, SmartTutor, MindEd) resulted in the highest average GPA improvement.
SELECT 
    c.ai_platform,
    AVG(p.gpa_after_ai - p.gpa_before_ai) AS GPA_improvement
FROM
    colleges c
        JOIN
    students s ON c.college_id = s.college_id
        JOIN
    performance p ON p.student_id = s.student_id
GROUP BY c.ai_platform
ORDER BY GPA_improvement DESC
LIMIT 1;
-- 8. Check whether increased usage hours lead to better quiz performance:o Group by student, calculate total hours and total quizzes, and compare.
SELECT 
    s.student_id, SUM(ed.hours_spent), SUM(ed.quizzes_taken),(SUM(ed.hours_spent) - SUM(ed.quizzes_taken)) as compare
FROM
    colleges c
        JOIN
    students s ON c.college_id = s.college_id
        JOIN
    edtech_usage ed ON s.student_id = ed.student_id
GROUP BY s.student_id
ORDER BY SUM(ed.hours_spent) ASC;
-- 9. Identify departments most benefited from AI adoption (highest GPA improvement grouped by department).
SELECT 
    s.department,
    SUM(p.gpa_after_ai - p.gpa_before_ai) AS GPA_improvement
FROM
    colleges c
        JOIN
    students s ON c.college_id = s.college_id
        JOIN
    performance p ON p.student_id = s.student_id
GROUP BY s.department
ORDER BY GPA_improvement DESC
LIMIT 1;
-- 10. Determine if first-year students or final-year students gained the most improvement.
SELECT 
    semester,
    avg(gpa_after_ai - gpa_before_ai) AS GPA_improvement
FROM
    performance
WHERE
    semester IN ('Sem-2' , 'Sem-8')
    group by semester
ORDER BY GPA_improvement DESC
LIMIT 1;