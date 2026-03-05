SELECT
    skills ,
   round (avg(salary_year_avg),0) as Avg_salary
FROM job_postings_fact jp
JOIN skills_job_dim as sj ON jp.job_id = sj.job_id
JOIN skills_dim AS sd ON sd.skill_id = sj.skill_id
WHERE job_title_short = 'Data Analyst' 
AND salary_year_avg is NOT NULL
GROUP BY skills
ORDER BY  Avg_salary DESC
LIMIT 10