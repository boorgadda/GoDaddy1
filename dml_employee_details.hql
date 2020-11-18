select emp_name, bank_name, dept_name, address from testdb.employee_data e inner join testdb.bank_details b
on e.emp_id = b.emp_id
left outer join testdb.dept_details d on d.emp_id = e.emp_id
right outer join testdb.demographic_details a on a.emp_id = e.emp_id
;