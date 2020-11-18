create table dp_stage.emp1(empid int,empname string,salary int,dept string) row format delimited
fields terminated by '/t' stored as textfile;

insert into table dp_stage.emp1 values(49, 'krishna', 50,'technology');

--select * from emp1;
