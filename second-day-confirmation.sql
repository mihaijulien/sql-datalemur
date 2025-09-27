select e.user_id from emails e
inner join texts t
on e.email_id = t.email_id
where t.action_date = DATE_ADD(e.signup_date, interval 1 day) 
and t.signup_action = 'Confirmed';
