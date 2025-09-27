select extract(month from submit_date) as mth, product_id as product, avg(stars)::numeric(10,2)
from reviews
group by mth, product
order by mth, product;
