SELECT COUNT(job_id) AS Total_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'REMOTE'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS Identifier
FROM job_postings_fact
GROUP BY Identifier;