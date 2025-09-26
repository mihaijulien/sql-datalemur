select 
    user_id, 
    DATEDIFF(max(date(post_date)), min(date(post_date))) as days_between
from
    posts
where
    YEAR(post_date) = 2021
group by 
    user_id
having
    count(post_id) > 1;
