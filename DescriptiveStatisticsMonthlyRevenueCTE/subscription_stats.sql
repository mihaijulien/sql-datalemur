with monthly_revs as (
select
    date_trunc('month', s.OrderDate) as ordermonth,
    p.ProductName, 
    sum(s.Revenue) as revenue
from 
    Products p
join 
    Subscriptions s
on p.ProductID = s.ProductID
where
    s.OrderDate between '2022-01-01' and '2022-12-31'
group by
    ordermonth, p.ProductName;
)

select 
    ProductName,
    min(revenue) as min_rev,
    max(revenue) as max_rev,
    avg(revenue) as avg_rev,
    stddev(revenue) as std_dev_rev
from 
    monthly_revs
group by
    ProductName;

