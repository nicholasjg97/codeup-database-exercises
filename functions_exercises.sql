use employees;

select concat(first_name, last_name) from employees
where last_name like 'e%e';

# the employees
select * from employees
where month(birth_date) = (12)
    and day(birth_date) = (25);
# the count
select count(*) from employees
where month(birth_date) = (12)
  and day(birth_date) = (25);

# the employees
select * from employees
where year(hire_date) between 1990 and 1999
    and month(birth_date) = (12)
    and day(birth_date) = (25);
# the count
select count(*) from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = (12)
  and day(birth_date) = (25);

select first_name, last_name from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = (12)
  and day(birth_date) = (25)
order by hire_date desc limit 1;

select *, datediff(current_date, hire_date) daysWorking from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = (12)
  and day(birth_date) = (25);


select * from employees;