SELECT c.company_id,
    c.name AS company_name,
    j.job_no_degree_mention
FROM company_dim c,
    job_postings_fact j --JOIN job_postings_fact j ON c.company_id = j.company_id
WHERE j.job_no_degree_mention = TRUE
LIMIT 50;