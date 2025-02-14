SELECT COUNT(job_id) AS Total_jobs,
    MAX(job_title_short) AS job_title_short,
    -- Aggregating job_title_short
    MAX(job_location) AS job_location,
    -- Aggregating job_location
    CASE
        WHEN job_location = 'Anywhere' THEN 'REMOTE'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS Identifier
FROM job_postings_fact
GROUP BY CASE
        WHEN job_location = 'Anywhere' THEN 'REMOTE'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END;