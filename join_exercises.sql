use employees;

# write a query that shows each department along with the name of the current manager for that department

select dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager' from employees as e
    inner join dept_manager as dm on e.emp_no = dm.emp_no
    inner join departments as d on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
order by dept_name;

# Find the name of all departments currently managed by women.

select dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager' from employees as e
    inner join dept_manager as dm on e.emp_no = dm.emp_no
    inner join departments as d on d.dept_no = dm.dept_no
where gender like 'F' and dm.to_date = '9999-01-01'
order by dept_name;

# Find the current titles of employees currently working in the Customer Service department.

describe titles;

select title as 'title', count(t.emp_no) as 'Total' from titles as t
    inner join dept_emp as de on t.emp_no = de.emp_no
    inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service' and de.to_date = '9999-01-01' and t.to_date = '9999-01-01'
group by title;

# Find the current salary of all current managers.

describe salaries;
describe titles;

select d.dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager', s.salary as 'Salary' from employees as e
    inner join dept_manager as dm on dm.emp_no = e.emp_no
    inner join departments as d on d.dept_no = dm.dept_no
    inner join salaries as s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
order by d.dept_name;

