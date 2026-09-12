# Select the number of employees who outperformed in their department and calculate their average length of service and average training score.

WITH high_performers AS (
SELECT employee_id, department, region, age, previous_year_rating, length_of_service, kpis_met_more_than_eighty, awards_won, avg_training_score
FROM hr_analytics_dataset
WHERE previous_year_rating > 4 AND kpis_met_more_than_eighty = 1 AND awards_won = 1
)

SELECT department,
COUNT(employee_id) AS eligible_employees, 
ROUND(AVG(length_of_service),1) AS avg_tenure_years,
ROUND(AVG(avg_training_score),2) AS avg_training_score
FROM high_performers
GROUP BY department
ORDER BY eligible_employees DESC;
