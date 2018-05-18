truncate table Gesipan;

drop sequence seq_gesipan_idx;

create sequence seq_gesipan_idx
start with 1
increment by 1
 maxvalue 9999
nocycle
nocache;

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

create or replace procedure sp_select_all
(
    v_gesipan out sys_refcursor
)
as
begin
    open v_gesipan for
    select idx,grp,name,email,title,writedate,readcount
    from Gesipan 
    order by grp desc,step asc;
end;
--
create or replace procedure sp_select_all
(
    v_gesipan out sys_refcursor
)
as
begin
    open v_gesipan for
    select idx,grp,name,email,title,writedate,readcount,filename
    from Gesipan 
    order by grp desc,step asc;
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
 