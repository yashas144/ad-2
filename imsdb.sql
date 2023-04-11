use ims;
create table teacherinfo(empid varchar(20), fname varchar(25), lname varchar(20), department varchar(20));
rename table teacherinfo to teacher_info;
alter table teacher_info add primary key(empid);
desc teacher_info;
insert into teacher_info values('T01','Sharada','G','IT');
insert into teacher_info values('T02','Harikrishna','P','IT');
insert into teacher_info values('T03','Shilpa','T','IT');
-- Execute from Here
insert into teacher_info values('T04','Mummoorthy','A','IT');
insert into teacher_info values('T05','Suresh','K','IT');
insert into teacher_info values('T06','Sai Prasad','A','IT');
insert into teacher_info values('T07','Srinivasa Rao','P','IT');
insert into teacher_info values('T08','Vazralu','M','IT');
insert into teacher_info values('T09','Uma Maheshwar Rao','I','IT');
insert into teacher_info values('T10','Aruna Kumari','B','IT');
insert into teacher_info values('T11','Swetha','K','IT');
insert into teacher_info values('T12','Sudhakar Reddy','K','IT');
insert into teacher_info values('T13','Prameela','N','IT');
insert into teacher_info values('T14','Naresh','P','IT');
insert into teacher_info values('T15','Shobana Joshi','IT'); 
insert into teacher_info values('T16','Chandrashekar','IT');
insert into teacher_info values('T17','Jayasree','IT');
insert into teacher_info values('T18','Srinidhi','IT');
insert into teacher_info values('T19','Sudha Rani','IT');
insert into teacher_info values('T20','Vijetha','IT');
insert into teacher_info values('T21','Shanthi','IT');
insert into teacher_info values('T22','Lavaraju','IT');
insert into teacher_info values('T23','Nagamani','IT');
insert into teacher_info values('T24','Ramya Sri','IT');
insert into teacher_info values('T25','Indraja','IT');
insert into teacher_info values('T26','Mani Kumar','IT');
insert into teacher_info values('T27','Chandrashekar','IT');
insert into teacher_info values('T28','Ramya Smruthi','IT');
select * from teacher_info;
alter table teacher_info alter lname set default null;
alter table teacher_info drop column lname;
alter table teacher_info rename column fname to emp_name;


create table exam_schedule(empid varchar(20), APR_21_2023 varchar(20),APR_24_2023 varchar(20),APR_25_2023 varchar(20),APR_26_2023 varchar(20),APR_27_2023 varchar(20));
insert into exam_schedule values("T01","Yes","No","No","Yes","No");
insert into exam_schedule values("T02","Yes","Yes","No","No","No");
insert into exam_schedule values("T03","Yes","No","No","No","No");
insert into exam_schedule values("T04","Yes","No","No","Yes","No");
insert into exam_schedule values("T05","Yes","No","No","No","Yes");
insert into exam_schedule values("T06","No","Yes","No","No","No");
insert into exam_schedule values("T07","Yes","No","No","Yes","No");
insert into exam_schedule values("T08","No","No","Yes","Yes","No");
insert into exam_schedule values("T09","Yes","Yes","No","No","No");
insert into exam_schedule values("T10","No","No","Yes","No","Yes");
insert into exam_schedule values("T11","No","No","Yes","No","Yes");
insert into exam_schedule values("T12","Yes","No","No","Yes","No");
insert into exam_schedule values("T13","No","No","Yes","No","Yes");
insert into exam_schedule values("T14","Yes","No","No","Yes","No");
insert into exam_schedule values("T15","No","No","No","Yes","Yes");
insert into exam_schedule values("T16","Yes","Yes","Yes","Yes","Yes");
insert into exam_schedule values("T17","No","No","Yes","No","Yes");
insert into exam_schedule values("T18","No","No","No","Yes","Yes");
insert into exam_schedule values("T19","No","Yes","No","Yes","No");
insert into exam_schedule values("T20","Yes","No","Yes","No","Yes");
select * from exam_schedule;














