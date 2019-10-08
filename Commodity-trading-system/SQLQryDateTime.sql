use santhi

CREATE RULE DateOnly
AS 
CONVERT(varchar(8), @DateTime, 112)=@DateTime
go

select '01/01/08 9:45:00 AM' - dateadd(dd,0, datediff(dd,0,'01/01/08 9:45:00 AM')) 
select dateadd(ss,(09*3600)+(45*60)+00,0)
select datediff(dd,0,'01/01/08 9:45:00 AM')

select dateadd(dd,0, datediff(dd,0,'01/01/08 9:45:00 AM')) - datediff(dd,0,'01/01/08')

CREATE RULE TimeOnly
AS
datediff(dd,0,@DateTime) = 0
GO

exec sp_addtype udt_Date, 'DateTime'

exec sp_addType udt_Time, 'DateTime'

go

exec sp_bindrule 'DateOnly', 'udt_Date'

exec sp_bindrule 'TimeOnly', 'udt_Time'

go

create table Test 
(
ID int primary key,
TransDate udt_Date,
TransTime udt_Time
)

insert into Test (ID, TransDate, TransTime) VALUES (1,'1/1/2004','10:23 AM')

select * from Test

drop table Test

exec sp_unbindrule 'udt_Date'

exec sp_unbindrule 'udt_Time'

drop rule DateOnly

drop rule TimeOnly

exec sp_droptype 'udt_Date'

exec sp_droptype 'udt_Time'
