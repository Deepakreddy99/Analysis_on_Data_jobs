SELECT 
   job_id,
   cd.name as company_name,
   job_title,
   job_location,
   job_schedule_type,
   salary_year_avg,
   job_posted_date
FROM job_postings_fact as jp
LEFT JOIN company_dim as cd ON cd.company_id = jp.company_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND job_work_from_home = TRUE
    AND salary_year_avg is NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10