select 
  emp.employee_id as employee_id,
  emp.name as employee_name
from employee as mgr
inner join employee as emp 
on mgr.employee_id = emp.manager_id
where emp.salary > mgr.salary;
