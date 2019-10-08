USE [cis]
GO
/****** Object:  StoredProcedure [dbo].[proctprice]    Script Date: 01/28/2008 10:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[proctprice]
(
@CommID int ,
@Name1 varchar(30),
@CatID smallint ,
@NameID smallint,
@TypeID int,
@GradeID int,
@UOM varchar(15),
@Price float,
@Infosup_id int,
@MarketID int,
@Data_Col_Date datetime,
@Data_Col_Time datetime
)
as
begin
  insert into Comm_Price values(@CommID,@Name1,@CatID,@NameID,@TypeID,@GradeID,@UOM,@Price,@Infosup_id,@MarketID,@Data_Col_Date,@Data_Col_Time)
end

select *from comm_price

drop procedure proctprice

exec proctprice 10,'aaa',46,15,0,0,'Kg',15.15