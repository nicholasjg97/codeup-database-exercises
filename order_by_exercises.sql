use employees;

describe employees;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name asc;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name asc, last_name asc;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name asc, first_name asc;

select * from employees
where last_name like 'E%'
   or last_name like '%e%'
   or last_name like '%e'
order by emp_no;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;

select * from employees
where last_name like 'E%'
   or last_name like '%e%'
   or last_name like '%e'
order by emp_no desc;

select * from employees;