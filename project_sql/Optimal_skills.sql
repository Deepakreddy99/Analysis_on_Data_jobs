WITH demanded_skills AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(jp.job_id) AS demand_count
    FROM job_postings_fact jp
    JOIN skills_job_dim sj
        ON jp.job_id = sj.job_id
    JOIN skills_dim sd
        ON sd.skill_id = sj.skill_id
    WHERE jp.job_title_short = 'Data Analyst'
      AND jp.salary_year_avg IS NOT NULL
      AND jp.job_work_from_home = TRUE
    GROUP BY sd.skill_id, sd.skills
),
average_salary AS (
    SELECT
        sd.skill_id,
        ROUND(AVG(jp.salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact jp
    JOIN skills_job_dim sj
        ON jp.job_id = sj.job_id
    JOIN skills_dim sd
        ON sd.skill_id = sj.skill_id
    WHERE jp.job_title_short = 'Data Analyst'
      AND jp.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id
)
SELECT
    ds.skill_id,
    ds.skills,
    ds.demand_count,
    a.avg_salary
FROM demanded_skills ds
JOIN average_salary a
    ON ds.skill_id = a.skill_id
ORDER BY ds.demand_count DESC, a.avg_salary DESC
LIMIT 25;