-- Evaluate which recruitment channel yields the highest-performing hires based on performance KPIs and training scores. 

SELECT 
    recruitment_channel,
    COUNT(employee_id) AS total_hires,
    ROUND(AVG(previous_year_rating), 1) AS avg_rating,
    ROUND(AVG(avg_training_score), 2) AS avg_training_score,
    ROUND(100 * SUM(kpis_met_more_than_eighty) / COUNT(employee_id),
            2) AS high_kpi_performers_pct
FROM
    hr_analytics_dataset
GROUP BY recruitment_channel
ORDER BY high_kpi_performers_pct DESC
;
