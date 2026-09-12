-- Classify employees into performance tiers using a custom scoring rubric.

SELECT 
    employee_id,
    department,
    previous_year_rating,
    avg_training_score,
    CASE
        WHEN
            kpis_met_more_than_eighty = 1
                AND awards_won = 1
                AND previous_year_rating >= 4.5
        THEN
            'Tier 1: Top Performer'
        WHEN
            kpis_met_more_than_eighty = 1
                AND previous_year_rating >= 3.5
        THEN
            'Tier 2: High Performer'
        WHEN previous_year_rating >= 3.0 THEN 'Tier 3: Good Performer'
        ELSE 'Tier 4: Needs Improvement'
    END AS performance_hierarchy
FROM
    hr_analytics_dataset
;
