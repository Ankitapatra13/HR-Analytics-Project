-- Determine whether taking more trainings leads to higher performance ratings and KPI achievement.

SELECT 
    no_of_trainings,
    COUNT(employee_id) AS employee_count,
    ROUND(AVG(avg_training_score), 2) AS avg_training_score,
    ROUND(AVG(previous_year_rating), 1) AS avg_rating,
    ROUND(100 * SUM(kpis_met_more_than_eighty) / COUNT(employee_id),
            2) AS kpis_met_pct
FROM
    hr_analytics_dataset
GROUP BY no_of_trainings
ORDER BY no_of_trainings ASC
;
