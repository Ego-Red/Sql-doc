SELECT cd.company_id,
    cd.name AS company_name,
    jpf.job_no_degree_mention
FROM company_dim cd,
    job_postings_fact jpf
WHERE company_id IN (
        SELECT company_id
        FROM job_postings_fact
        WHERE job_no_degree_mention = TRUE
    )
LIMIT 20;