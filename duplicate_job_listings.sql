with job_count_cte as (
select 
  company_id, 
  title, 
  count(job_id) as job_count,
  description
from job_listings
group by title, description, company_id
)

select count(company_id) as duplicate_companies
from job_count_cte
where job_count > 1;
