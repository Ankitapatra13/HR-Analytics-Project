-- A summary query to generate core HR metrics for an executive dashboard.

SELECT 
    department,
    COUNT(employee_id) AS total_headcount,
    ROUND(AVG(age), 1) AS avg_age,
    ROUND(AVG(length_of_service), 1) AS avg_tenure_yrs,
    ROUND(AVG(previous_year_rating), 1) AS avg_rating,
    ROUND(AVG(avg_training_score), 2) AS avg_training_score,
    SUM(awards_won) AS total_awards,
    ROUND(100 * SUM(kpis_met_more_than_eighty) / COUNT(employee_id),
            2) AS kpi_met_pct
FROM
    hr_analytics_dataset
GROUP BY department
ORDER BY total_awards DESC
;
