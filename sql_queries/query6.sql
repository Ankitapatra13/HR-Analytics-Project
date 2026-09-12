-- Identify departments or regions where employees are struggling (low ratings and low KPI completion).

SELECT 
    department,
    region,
    COUNT(employee_id) AS struggling_employees,
    ROUND(AVG(avg_training_score), 2) AS avg_training_score
FROM
    hr_analytics_dataset
WHERE
    previous_year_rating < 3
        AND kpis_met_more_than_eighty = 0
GROUP BY department , region
HAVING struggling_employees >= 10
ORDER BY struggling_employees DESC
;
