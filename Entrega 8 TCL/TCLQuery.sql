use hospital;

set @@autocommit = 1;
set @@autocommit = 0;
select @@autocommit;

start transaction;
delete from treatment where treatment_id = 1;
delete from treatment where treatment_id = 2;
delete from treatment where treatment_id = 3;
-- rollback;
commit;

start transaction;
insert into patient values(null,12575459,"Liya","Short","IOMA",1107810378,1107810378,"Mujer","Lomas de zamora"),
(null,39570199,"Lamar","Rice","IOMA",1148547489,1148547489,"Hombre","Lomas de zamora"),
(null,26097875,"Tommy","Bond","IOMA",1190949625,1190949625,"Hombre","Lomas de zamora"),
(null,49070924,"Jude","Pugh","IOMA",1191309910,1191309910,"Mujer","Lomas de zamora");
savepoint sp1;
insert into patient value(null,48159892,"Adelle","Villarreal","IOMA",1169447823,1169447823,"Mujer","Lomas de zamora"),
(null,81514242,"Lyndsey","Miller","IOMA",1151649723,1151649723,"Mujer","Lomas de zamora"),
(null,18024951,"Khushi","Jacobson","IOMA",1183084296,1183084296,"Hombre","Lomas de zamora"),
(null,98111397,"Esther","Raymond","IOMA",1124035290,1124035290,"Mujer","Lomas de zamora");
savepoint sp2;

-- release savepoint sp1;
rollback;
commit;