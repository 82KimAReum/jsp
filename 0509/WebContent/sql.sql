create or replace procedure sp_zipcode_select
(
 v_dong in zipcode.dong%type,
 v_results out sys_refcursor
)
as
begin
 open v_results for
 select zipcode,sido,gugun,dong,bunji
 from zipcode
 where dong like concat(concat('%',v_dong),'%');
end;