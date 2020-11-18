
CREATE TABLE IF NOT EXISTS
    bank_details (
    emp_id string,
    bank_name string,
    ifsc_code string,
    branch_name string
    --address string
  ) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
    'serialization.format' = '        ',
    'field.delim' = ','
  )
  TBLPROPERTIES ('has_encrypted_data'='false');

CREATE TABLE IF NOT EXISTS
    demographic_details (
    emp_id string,
    city_name string,
    mail_id string,
    --mob_number string
    address string
  ) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
    'serialization.format' = '        ',
    'field.delim' = ','
  )
  TBLPROPERTIES ('has_encrypted_data'='false');




CREATE TABLE IF NOT EXISTS
    dept_details (
    emp_id string,
    dept_name string,
    dept_id string,
    mob_number string
    --address string
  ) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
    'serialization.format' = '        ',
    'field.delim' = ','
  )
  TBLPROPERTIES ('has_encrypted_data'='false');



CREATE TABLE IF NOT EXISTS
    employee_data (
    emp_id string,
    emp_name string,
    mail_id string,
    mobile_number string
    --address string
  ) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
  WITH SERDEPROPERTIES (
    'serialization.format' = '        ',
    'field.delim' = ','
  )
  TBLPROPERTIES ('has_encrypted_data'='false');



select emp_name, bank_name, dept_name, address from employee_data e inner join bank_details b
on e.emp_id = b.emp_id
left outer join dept_details d on d.emp_id = e.emp_id
right outer join demographic_details a on a.emp_id = e.emp_id
;