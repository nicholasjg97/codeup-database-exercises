use employees;

select distinct last_name from employees
order by last_name desc limit 10;

select salary, emp_no from salaries
order by salary desc limit 5;

select salary, emp_no from salaries
order by salary desc
limit 5 offset 46;