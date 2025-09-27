SELECT u.city, count(u.city) as total_orders from users u
left join trades t
on u.user_id = t.user_id
where t.status = 'Completed'
group by u.city
order by total_orders desc;
