use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery

select first_name, last_name from employees
where hire_date in (
    select hire_date from employees
    where emp_no like 101010
    );

select title from titles
where emp_no in (
    select emp_no from employees
    where first_name like 'Aamod'
    );

select first_name, last_name from employees
where gender = 'F' and emp_no in (
    select emp_no from dept_manager
    where to_date like '9999-01-01'
    );

select dept_name from departments
where dept_no in (
    select dept_no from dept_manager
    where emp_no in (
        select emp_no from employees
        where gender = 'F'
        )
    and to_date like '9999-01-01'
    );

select first_name, last_name from employees
where emp_no in (
    select emp_no from salaries
    where salary like (select max(salary) from salaries)
    )