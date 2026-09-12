-- Profile the distribution of employees across age groups and experience levels within each department.

SELECT 
    department,
    age_group,
    COUNT(employee_id) AS staff_count,
    ROUND(AVG(length_of_service), 1) AS avg_years_in_company,
    ROUND(AVG(previous_year_rating), 2) AS avg_rating
FROM
    hr_analytics_dataset
GROUP BY department , age_group
ORDER BY department , age_group
;
