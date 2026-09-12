-- Rank regions within each department by the proportion of top performers (KPI > 80%).

WITH regional_kpis AS (
SELECT department,
region,
COUNT(employee_id) AS total_employees,
SUM(kpis_met_more_than_eighty) AS top_performers,
ROUND(100 * SUM(kpis_met_more_than_eighty)/COUNT(employee_id),2) AS top_performer_pct
FROM hr_analytics_dataset
GROUP BY department,region
)

SELECT department,
region,
total_employees,
top_performer_pct,
DENSE_RANK() OVER (PARTITION BY department ORDER BY top_performer_pct DESC)  AS regional_rank_in_dept
FROM regional_kpis
;
