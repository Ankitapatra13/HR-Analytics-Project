-- Analyze gender representation across departments and compare award distribution within each department.

SELECT department,
gender,
COUNT(employee_id) AS employee_count,
ROUND(100 * COUNT(employee_id) / SUM(COUNT(employee_id)) OVER (PARTITION BY department),2)  AS gender_pct_dept,
SUM(awards_won) AS total_awards_won
FROM hr_analytics_dataset
GROUP BY department,gender
ORDER BY department,gender
;
