use cis

Create table Loc_Mast
(
LocID bigint primary key,
Loc_TypeID int,
StateID smallint ,
DistID smallint,
MandID int,
VilID int,
Name1 varchar(30),
Pin	varchar(10)	
)

Create table Comm_Mast
(
CommID bigint primary key,
Comm_Div_TypeID int,
CatID smallint ,
NameID smallint,
TypeID int,
GradeID int,
Name1 varchar(30)
)

create table City_Mast
(
CityID bigint primary key,
Name1 varchar(50)
)

create table Info_Supplier
(
Infosup_id int primary key,
Name1 varchar(25),
Dob DateTime,
Addr varchar(50),
City varchar(30),
Pin_Code varchar(10),
Phone varchar(15),
Cell varchar(20),
Fax varchar(15),
Email varchar(40),
Age int,
Mother_Tongue varchar(15),
Occupation varchar(20),
Biz_Category varchar(15),
Joining_Dt DateTime,
Qualif varchar(15),
Payment bigint,
End_Dt DateTime
)

create table Market_Mast
(
MarketID int primary key,
Name1 varchar(30),
Address1 varchar(30),
Pin varchar(10),
Amc varchar(3),
Computerized varchar(3),
Phone1 varchar(20),
Phone2 varchar(20),
Fax1 varchar(20),
Fax2 varchar(20),
Email varchar(30),
LocID bigint  
)

select * from Cust_Mast
create table Cust_Mast
(
Cust_id bigint primary key,
Name1 varchar(25),
Addr varchar(50),
City varchar(20),
Pin varchar(10),
Phone varchar(18),
Cell varchar(25),
Fax varchar(18),
Email varchar(30),
Mother_ton varchar(20),
DOB DateTime,
Age int,
Occupation varchar(25),
Qualification varchar(20),
Joining_Dt DateTime,
Biz_Category varchar(15)
)

create table UOM_Mast
(
MSR_ID int not null,
MSR_Name varchar(30) not null ,
MSR_STAN varchar(30) not null,
MSR_Value int not null,
constraint PK_UOM primary key(MSR_ID,MSR_Name,MSR_STAN,MSR_Value)
)

create table COMM_UNIT
(
MSR_ID int not null,
CatID smallint
)

create table Market_Comm
(
CommID bigint,
MarketID int,
MRK_COMM_MSR varchar(20)
)

create table Comm_Price
(
CommID int,
Name1  varchar(30),
CatID smallint ,
NameID smallint,
TypeID int,
GradeID int,
UOM  varchar(15),
Price float,
Infosup_id int,
MarketID int,
Data_Col_Date datetime,
Data_Col_Time datetime,
CONSTRAINT PK_COPRI PRIMARY KEY(CommID,Infosup_id,MarketID,
Data_Col_Date,Data_Col_Time)
)

create table Login_Form
(
Username varchar(25),
Password1 varchar(25),
CnfrmPassword varchar(25),
Status1 varchar(20),
Flag varchar(10)check([Flag] in ('Yes','No'))
)

create table Market_Info
(
Infosup_id int,
MarketID int 
)

drop table Market_Info

select * from Login_Form

insert into Login_Form values('aaa','147258','147258','Administrator','Yes')

select MarketID from Market_Info where Infosup_id=1

select * from Market_Info where Infosup_id=1

select mi.MarketID,mm.Name1 from Market_Info mi,Market_Mast mm where mi.MarketID=mm.MarketID and Infosup_id=1

select  StateID,Name1 from Loc_Mast where Loc_TypeID=1

select * from Loc_Mast

select DistID,Name1 from Loc_Mast where StateID=1 and Loc_TypeID=2

select Name1 from Loc_Mast where StateID=1
select * from Cust_Mast 

select distinct DistID,Name1 from Loc_Mast where Loc_TypeID=2

select MandID,Name1 from Loc_Mast where Loc_TypeID=3

select VilID,Name1 from Loc_Mast where Loc_TypeID=4

select * from City_Mast


select Infosup_id from Info_Supplier where Name1='Venu Gopal'

select MarketID,Name1 from Market_Mast

select Infosup_id from Info_Supplier where Name1='Venu Gopal'

select * from Comm_Price

delete from Comm_Price

select CommID from Market_Comm where MarketID=15

SELECT [CommID], [Name1], [CatID], [NameID], [TypeID], [GradeID] FROM [Comm_Mast] where CommID=(select CommID from Market_Comm where (MarketID=15)) 


SELECT [CommID], [Name1], [CatID], [NameID], [TypeID], [GradeID] FROM [Comm_Mast] WHERE CommID = 70 or CommID=15 or CommID=25

select * from Market_Comm
select * from Market_Mast
select * from Comm_Price

sp_help UOM_Mast
drop table UOM_Mast

select * from (select  distinct(StateID )from  Loc_Mast) loc_mast  

select count(*) from Loc_Mast

sp_help Loc_Mast

select LocID,StateID,Name1 from Loc_Mast where Loc_TypeID=1

select count(*) from Comm_Mast

select max(CommID)+1 from Comm_Mast

select count(NameID) from Comm_Mast where CatID=1

select max(NameID)+1 from Comm_Mast where CatID=1

select count(CommID) from Comm_Mast

select max(CommID)+1 from Comm_Mast

select * from comm_mast

sp_help comm_mast

delete from City_Mast

select dateAdd(dd,datediff(dd,0,'1/1/2007'),0)

select truncate(getdate(),10) 

select substring(dateAdd(dd,datediff(dd,0,'1/1/2007'),0),1,10)

create type Date from DateTime

create rule DateRule as convert(varchar,'Dob',101)=@DateTime

go

exec sp_bindrule 'DateOnlyRule','Date'

drop type Date

drop rule Date 

drop table Info_Supplier

delete from Info_Supplier

insert into Info_Supplier values(2,'aaa','5/12/2003','asdffdfgf','Kolkata','500016','85462371','878654645','45454454','asdf@gmail.com',20,'telugu','Software Programmer','Broker','6/5/2008','B.Tech',10000,'11/19/2007')

select convert(char(10),'5/11/2007',101)

select LocID from Loc_Mast where VilID= and MandID=1 and DistID=1 and StateID=1 and Loc_TypeID=4

select MandID,Name1 from Loc_Mast where Loc_TypeID=4

select LocID from Loc_Mast where VilID=2 and MandID=1 and DistID=1 and StateID=1 and Loc_TypeID=4

select * from Market_Comm

select * from Comm_Mast

select * from City_Mast

select * from Info_Supplier

select * from Market_Mast

select * from Cust_Mast

delete from Info_Supplier

select LocID from Loc_Mast where  MandID=1 and DistID=9 and StateID=1 and Loc_TypeID=3

select Name1 from Comm_Mast

select Name1 from Market_Mast

select LocID from Loc_Mast where VilID =null and MandID=1 and DistID=1 and StateID=1 and Loc_TypeID=3

select distinct(VilID),Name1 from Loc_Mast where Loc_TypeID=4 and DistID= 16 and MandID=1

select * from Market_Comm

select * from Comm_Mast where Comm_Div_TypeID=4 and CatID=4 and Name1='Ac'

select distinct(Name1) from Comm_Mast where CatID=1

select * from Comm_Mast where Name1='Ac'

select * from Market_Mast,comm_mast

select * from Comm_Unit

delete from Comm_Unit where MSR_ID=5

select * from UOM_Mast

select * from Comm_Mast,UOM_Mast

select CommID,Name1,CatID,NameID,TypeID,GradeID,MSR_Name from Comm_Mast,UOM_Mast abc

select * from Market_Mast

select * from Loc_Mast