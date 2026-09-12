-- Examine how educational qualification correlates with service tenure, training score, and awards won.

SELECT 
    education,
    COUNT(employee_id) AS total_employees,
    ROUND(AVG(length_of_service), 1) AS avg_tenure_yrs,
    ROUND(AVG(avg_training_score), 2) AS avg_training_score,
    SUM(awards_won) AS total_awards_won
FROM
    hr_analytics_dataset
GROUP BY education
ORDER BY avg_training_score DESC
;
