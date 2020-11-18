CREATE TABLE 
    bank_details (
    emp_id string,
    bank_name string,
    ifsc_code string,
    branch_name string
    --address string
  ) ;

CREATE TABLE 
    demographic_details (
    emp_id string,
    city_name string,
    mail_id string,
    --mob_number string
    address string
  ) ;

CREATE TABLE 
    dept_details (
    emp_id string,
    dept_name string,
    dept_id string,
    mob_number string
    --address string
  ) ;

CREATE TABLE 
    employee_data (
    emp_id string,
    emp_name string,
    mail_id string,
    mobile_number string
    --address string
  ) ;

select emp_name, bank_name, dept_name, address from employee_data e inner join bank_details b
on e.emp_id = b.emp_id
left outer join dept_details d on d.emp_id = e.emp_id
right outer join demographic_details a on a.emp_id = e.emp_id
;