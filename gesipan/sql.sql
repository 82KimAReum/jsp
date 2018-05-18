lsnrstl status
sqlplus /nolog
conn sys as sysdba
show user
create user gesipan identified by gesipan 
default tablespace users
temporary tablespace temp;

grant connect,resource to gesipan;

--
create sequence seq_gesipan_idx
start with 1
increment by 1
 maxvalue 9999
nocycle
nocache;

create table Gesipan
(
	idx number(4),
	name varchar(20) not null,
    email varchar(50) not null,
    title varchar(100) not null,
    contents long not null,
    writedate date not null,
    readcount number(4) not null,
    filename varchar2(100) ,
    grp number(4) not null,
    lev number(4) not null,
    step number(4) not null,
    constraint gesipan_idx_pk primary key(idx)
)


create or replace procedure sp_select_all
(
    v_gesipan out sys_refcursor
)
as
begin
    open v_gesipan for
    select idx,grp,name,email,title,writedate,readcount,filename,lev
    from Gesipan 
    order by grp desc,step asc;
end;

--
create or replace procedure sp_gesipan_insert
(   
    v_name in Gesipan.name%type,
    v_email in Gesipan.email%type,
    v_title in Gesipan.title%type,
    v_contents in Gesipan.contents%type,
    v_filename in Gesipan.filename%type
    
)
is
    v_max number ;
begin
   insert into Gesipan
   values (seq_gesipan_idx.NEXTVAL, v_name,v_email, v_title,v_contents,sysdate,0,v_filename,0,0,0);
   commit;
   select max(idx) into v_max from Gesipan;
   update Gesipan set grp = v_max where idx = v_max;
   commit;
end;
--

create or replace procedure sp_select_one
(
	v_idx IN Gesipan.idx%type,
	v_gesipan OUT sys_refcursor
)
as
begin
	open v_gesipan for 
	select idx,name,email,title,contents,writedate,readcount,filename,grp,lev,step
	from Gesipan
	where idx=v_idx;
end;

--
 create or replace procedure sp_readcount_update
(
	v_idx IN Gesipan.idx%type
	
)
is
begin
	update Gesipan set readcount=readcount+1
    where idx=v_idx;
    commit;
end;
--
create or replace procedure sp_replyupdate
(
    v_grp in Gesipan.grp%type,
    v_step in Gesipan.step%type
)
is 
begin
    update Gesipan set step = step+1
    where grp =v_grp and step >=v_step;
end;
--
create or replace procedure sp_gesipan_reply_insert
(   
    v_name in Gesipan.name%type,
    v_email in Gesipan.email%type,
    v_title in Gesipan.title%type,
    v_contents in Gesipan.contents%type,
    v_filename in Gesipan.filename%type,
    v_grp in Gesipan.grp%type,
    v_lev in Gesipan.lev%type,
    v_step in Gesipan.step%type
)
is
begin
   insert into Gesipan(idx,name,email,title,contents,writedate,readcount,filename,grp,lev,step)
   values (seq_gesipan_idx.NEXTVAL, v_name,v_email, v_title,v_contents,sysdate,0,v_filename,v_grp,v_lev,v_step);
   commit;
end;
--
create or replace procedure sp_select_count
(
    v_count out number
)
is
begin
    select count(idx) into v_count
    from Gesipan ;
end;
--
create or replace procedure sp_select_filename
(
    v_idx in Gesipan.idx%type,
    v_filename out Gesipan.filename%type
)
is
begin
    select filename into v_filename
    from Gesipan 
    where idx=v_idx;
end;
----





