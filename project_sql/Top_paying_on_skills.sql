WITH top_paying_jobs AS (
SELECT 
   job_id,
   cd.name as company_name,
   job_title,
   salary_year_avg
FROM job_postings_fact as jp
LEFT JOIN company_dim as cd ON cd.company_id = jp.company_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND job_work_from_home = TRUE
    AND salary_year_avg is NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10)

SELECT
  tp.*,
  sd.skills
FROM top_paying_jobs as tp
JOIN skills_job_dim as sj ON tp.job_id = sj.job_id
JOIN skills_dim AS sd ON sd.skill_id = sj.skill_id
ORDER BY tp.salary_year_avg DESC
