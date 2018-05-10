
--MyBatis 이용하기

create user sungjukmgmt identified by sungjukmgmt
default tablespace users
temporary tablespace temp;

grant connect,resource to sungjukmgmt;

create table Student(
hakbun char(4) not null ,
irum varchar(20) not null ,
kor number(3) not null,
eng number(3) not null,
mat number(3) not null,
edp number(3) not null,
sum number(3) default 0,
avg number(5,2) default 0.00 ,
grade char(1),
constraint student_hakbun_pk primary key(hakbun)
)
drop table student;
--

create or replace procedure sp_student_delete
(
    v_hakbun in Student.hakbun%type
)
is
begin
    delete from Student
    where hakbun=v_hakbun;
    commit;
end;
--
create or replace procedure sp_student_insert
(
    v_hakbun in Student.hakbun%type,
    v_irum in Student.irum%type,
    v_kor in Student.kor%type,
    v_eng in Student.eng%type,
    v_mat in Student.mat%type,
    v_edp in Student.edp%type,
    v_sum in Student.sum%type,
    v_avg in Student.avg%type,
    v_grade in Student.grade%type
)
is
begin
    insert into Student(hakbun,irum,kor,eng,mat,edp,sum,avg,grade)
    values( v_hakbun, v_irum, v_kor, v_eng, v_mat, v_edp, v_sum, v_avg, v_grade);
    commit;
end;


--
create or replace procedure sp_student_update
(
   
   
    v_kor in Student.kor%type,
    v_eng in Student.eng%type,
    v_mat in Student.mat%type,
    v_edp in Student.edp%type,
    v_sum in Student.sum%type,
    v_avg in Student.avg%type,
    v_grade in Student.grade%type,
    v_hakbun in Student.hakbun%type
)
is
begin
    UPDATE Student SET kor= v_kor, eng= v_eng, mat= v_mat, edp= v_edp,
		sum= v_sum,avg= v_avg,grade= v_grade
		WHERE hakbun =  v_hakbun; 
    commit;
end;

--
create or replace procedure sp_student_select_one
(
 v_hakbun in student.hakbun%type,
 v_student out sys_refcursor
)
as
begin 
    open v_student for
    select hakbun,irum,kor,eng,mat,edp,sum,avg,grade
    from student where hakbun=v_hakbun;
end;
--
create or replace procedure sp_student_select_all
(

 v_students out sys_refcursor
)
as
begin 
    open v_students for
    select hakbun,irum,kor,eng,mat,edp,sum,avg,grade
    from student 
    order by sum desc;
end;
--
