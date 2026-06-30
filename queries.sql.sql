SELECT * FROM college_placement WHERE placement_status = 'Placed';
SELECT * FROM college_placement LIMIT 5;
-- Average salary by degree
SELECT degree_t,AVG(salary_inr) AS Average_Salary FROM college_placement GROUP BY degree_t;
-- Top 10 highest salaries
SELECT * FROM college_placement ORDER BY salary_inr DESC LIMIT 10;
-- Degrees with average salary greater than 200000
SELECT degree_t,AVG(salary_inr) AS Average_Salary FROM college_placement GROUP BY degree_t HAVING AVG(salary_inr) > 200000;
-- Degrees starting with 'C'
SELECT *FROM college_placement WHERE degree_t LIKE 'C%';
-- Placement statistics by degree
SELECT degree_t,COUNT(*) AS Total_Students,AVG(salary_inr) AS Average_Salary,MAX(salary_inr) AS Highest_Salary
FROM college_placement WHERE placement_status = 'Placed'GROUP BY degree_t ORDER BY Average_Salary DESC;