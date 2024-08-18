/*
1-DDL- DATA DEFINATION LANGUAGE - (CREATE/DROP/ALTER/TRUNCATE/COMMENT/REMANE)
2-DML- DATA MANIPULATION LANGUAGE - (INSERT/UPDATE/DELETE)
3-DQL- DATA QUERY LANGUAGE - (SELECT)
4-DCL- DATA CONTROL LANGUAGE - (GRANT/REVOKE)
5-TCL- TRANSACTIC CONTROL LANGUAGE - (COMMIT/ROLLBACK/SAVEPOINT/SETTRANSACTION)
*/

create database basics; /*1-used to create database*/
show databases ; 
drop database basics; /* 2-use to drop database*/
show databases ; 
use basics ; 
create table student_table1(
Student_id int,
Student_name varchar(100),
Student_course varchar(40)
);
insert into student_table1(Student_id,Student_name,Student_course)
values (1,"ram",'c001');
insert into student_table1(Student_id,Student_name,Student_course)
values(2,"shaym",'C002');
insert into student_table1(Student_id,Student_name,Student_course)
values(3,"ishu",'C029');
insert into student_table1(Student_id,Student_name,Student_course)
values(4,"somu",'C008');
insert into student_table1(Student_id,Student_name,Student_course)
values(5,"sai",'C005');
Show tables ;/* show all the tables in the database*/
alter table student_table1 add email varchar(100);/* DDL 3-use to alter into taable */
Select * from student_table1; /* it will show all the tables present in the database*/
describe table student_table1;/* it will describe the table*/


/* OPERATORS */
select * from Student_table1 where Student_id =5 and Student_course ="C005";/* AND OPERATOR (works when All the conditions is true) */
/* WHERE (it is used to filter the record from the data)*/
select * from Student_table1 where Student_id = 4 or Student_course = "C029";/* OR OPERATOR (works when if any conditions is true) */
select * from Student_table1 where not Student_id = 7 ;/* NOT OPERATOR (works when if the conditions are NOT true) */

select * from Student_table1 where Student_course in ("C029","C005"); /* IN OPERATOR (hepls to search data contains in table/database )*/
select * from Student_table1 where Student_id between 1 and 5; /*BETWEEN OPERATOR (helps to find out in between contained data )*/

select * from Student_table1 where Student_name like 's%'; /* LIKE OPERATOR (helps search patterns in table)(%-used for starting from s)*/
select * from Student_table1 where Student_name like '%am%';/*(%am%-used for searching a names where 'am' is in between )*/
select * from Student_table1 where Student_name like '%m';/*(%m-used for searching a names ends with 'm' )*/

select * from Student_table1 where email is null;/*NULL OPERATOR (used to find out null values in thr table)*/