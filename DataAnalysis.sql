--Question 1
select e.emp_no
,e.last_name
,e.first_name
,e.sex
,s.salary
from employee e
inner join salaries s
on e.emp_no = s.emp_no;

--Question 2
select e.emp_no
,e.last_name
,e.first_name
,e.hire_date
from employee e
where EXTRACT('Year' FROM hire_date)='1986'

--Question 3:List the Manager= m0001
select e.emp_no
,e.last_name
,e.first_name
,dm.dept_no
,d.dept_name
,e.emp_title_id
from employee e
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join department d
on dm.dept_no = d.dept_no
where(e.emp_title_id)='m0001';

--Question 4
select e.emp_no
,e.last_name
,e.first_name
,dm.dept_no
,d.dept_name
from employee e
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join department d
on dm.dept_no = d.dept_no;

--Question 5
select first_name
,last_name
,sex
from employee
where (first_name)='Hercules'
and (last_name) like 'B%';

--Question 6: Sales department = d007
select e.emp_no
,e.last_name
,e.first_name
,dm.dept_no
from employee e
inner join dept_manager dm
on e.emp_no = dm.emp_no
where(dm.dept_no)='d007';

--Question 7
select e.emp_no
,e.last_name
,e.first_name
,d.dept_name
from employee e
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join department d
on dm.dept_no = d.dept_no
where(d.dept_name)= 'Sales'
or(d.dept_name)='Development';

--Question 8
select count(last_name) 
,e.last_name
from employee e
group by(last_name)
order by(last_name)desc;
