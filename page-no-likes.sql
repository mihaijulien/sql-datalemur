select pg.page_id
from pages pg
left join page_likes pl 
on pg.page_id = pl.page_id
where pl.page_id is NULL
order by pg.page_id;
