WITH Top_skills AS (
    SELECT Skills,
        ROUND(AVG(salary_year_avg), 0) AS Avg_salary
    FROM job_postings_fact
        INNER JOIN skills_job_dim AS Sk ON Sk.job_id = job_postings_fact.job_id
        INNER JOIN skills_dim ON skills_dim.skill_id = Sk.skill_id
    WHERE job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
    GROUP BY skills
)
SELECT *
FROM Top_skills
ORDER BY Avg_salary DESC
LIMIT 30;
/*
 Breakdown of these results:
 Big Data & Cloud Are Essential – Skills like Kafka, Pyspark, MongoDB, Terraform, and VMware show that handling large datasets and working in cloud environments are becoming standard for top analysts.
 
 Technical & Automation Skills Stand Out – Knowledge of scripting (Golang, Perl), infrastructure automation (Ansible, Puppet), and even blockchain analytics (Solidity) is making analysts more valuable in modern data roles.
 
 Collaboration & Workflow Matter – Tools like Notion, Confluence, and Atlassian highlight the importance of strong documentation, reporting, and teamwork in high-paying analyst positions.
 
 Takeaway: The role of a Data Analyst is evolving—expanding into cloud, automation, and workflow management can lead to better opportunities! 
 
 [
 {
 "skills": "svn",
 "avg_salary": "400000"
 },
 {
 "skills": "solidity",
 "avg_salary": "179000"
 },
 {
 "skills": "couchbase",
 "avg_salary": "160515"
 },
 {
 "skills": "datarobot",
 "avg_salary": "155486"
 },
 {
 "skills": "golang",
 "avg_salary": "155000"
 },
 {
 "skills": "mxnet",
 "avg_salary": "149000"
 },
 {
 "skills": "dplyr",
 "avg_salary": "147633"
 },
 {
 "skills": "vmware",
 "avg_salary": "147500"
 },
 {
 "skills": "terraform",
 "avg_salary": "146734"
 },
 {
 "skills": "twilio",
 "avg_salary": "138500"
 },
 {
 "skills": "gitlab",
 "avg_salary": "134126"
 },
 {
 "skills": "kafka",
 "avg_salary": "129999"
 },
 {
 "skills": "puppet",
 "avg_salary": "129820"
 },
 {
 "skills": "keras",
 "avg_salary": "127013"
 },
 {
 "skills": "pytorch",
 "avg_salary": "125226"
 },
 {
 "skills": "perl",
 "avg_salary": "124686"
 },
 {
 "skills": "ansible",
 "avg_salary": "124370"
 },
 {
 "skills": "hugging face",
 "avg_salary": "123950"
 },
 {
 "skills": "tensorflow",
 "avg_salary": "120647"
 },
 {
 "skills": "cassandra",
 "avg_salary": "118407"
 },
 {
 "skills": "notion",
 "avg_salary": "118092"
 },
 {
 "skills": "atlassian",
 "avg_salary": "117966"
 },
 {
 "skills": "bitbucket",
 "avg_salary": "116712"
 },
 {
 "skills": "airflow",
 "avg_salary": "116387"
 },
 {
 "skills": "scala",
 "avg_salary": "115480"
 },
 {
 "skills": "linux",
 "avg_salary": "114883"
 },
 {
 "skills": "confluence",
 "avg_salary": "114153"
 },
 {
 "skills": "pyspark",
 "avg_salary": "114058"
 },
 {
 "skills": "mongodb",
 "avg_salary": "113608"
 },
 {
 "skills": "aurora",
 "avg_salary": "113394"
 }
 ]
 */