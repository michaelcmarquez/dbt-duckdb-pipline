select
    job_location,
    COUNT(*) AS postings
from {{ ref('job_postings') }}
group by job_location
order by postings desc
limit 10