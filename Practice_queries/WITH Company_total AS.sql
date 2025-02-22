WITH Company_total AS (
    SELECT company_id,
        COUNT(*) AS Total
    FROM job_postings_fact
    GROUP BY company_id
)
SELECT NAME,
    Company_total.Total
FROM Company_total
    LEFT JOIN company_dim ON company_dim.company_id = Company_total.company_id
ORDER BY Total DESC