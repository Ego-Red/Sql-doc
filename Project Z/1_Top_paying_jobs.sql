SELECT job_id,
    job_location,
    job_title,
    job_schedule_type,
    salary_year_avg
FROM job_postings_fact
WHERE job_title_short LIKE '%Data Analyst%'
    AND salary_year_avg IS NOT NULL
    AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;