SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Info_Supplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Info_Supplier](
	[Infosup_id] [int] NOT NULL,
	[Name1] [varchar](25) NULL,
	[Dob] [datetime] NULL,
	[Addr] [varchar](50) NULL,
	[City] [varchar](30) NULL,
	[Pin_Code] [varchar](10) NULL,
	[Phone] [varchar](15) NULL,
	[Cell] [varchar](20) NULL,
	[Fax] [varchar](15) NULL,
	[Email] [varchar](40) NULL,
	[Age] [int] NULL,
	[Mother_Tongue] [varchar](15) NULL,
	[Occupation] [varchar](20) NULL,
	[Biz_Category] [varchar](15) NULL,
	[Joining_Dt] [datetime] NULL,
	[Qualif] [varchar](15) NULL,
	[Payment] [bigint] NULL,
	[End_Dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Infosup_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Market_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Market_Mast](
	[MarketID] [int] NOT NULL,
	[Name1] [varchar](30) NULL,
	[Address1] [varchar](30) NULL,
	[Pin] [varchar](10) NULL,
	[Amc] [varchar](3) NULL,
	[Computerized] [varchar](3) NULL,
	[Phone1] [varchar](20) NULL,
	[Phone2] [varchar](20) NULL,
	[Fax1] [varchar](20) NULL,
	[Fax2] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[LocID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cust_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cust_Mast](
	[Cust_id] [bigint] NOT NULL,
	[Name1] [varchar](25) NULL,
	[Addr] [varchar](50) NULL,
	[City] [varchar](20) NULL,
	[Pin] [varchar](10) NULL,
	[Phone] [varchar](18) NULL,
	[Cell] [varchar](25) NULL,
	[Fax] [varchar](18) NULL,
	[Email] [varchar](30) NULL,
	[Mother_ton] [varchar](20) NULL,
	[DOB] [datetime] NULL,
	[Age] [int] NULL,
	[Occupation] [varchar](25) NULL,
	[Qualification] [varchar](20) NULL,
	[Joining_Dt] [datetime] NULL,
	[Biz_Category] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cust_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UOM_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UOM_Mast](
	[MSR_ID] [int] NOT NULL,
	[MSR_Name] [varchar](30) NOT NULL,
	[MSR_STAN] [varchar](30) NOT NULL,
	[MSR_Value] [int] NOT NULL,
 CONSTRAINT [PK_UOM] PRIMARY KEY CLUSTERED 
(
	[MSR_ID] ASC,
	[MSR_Name] ASC,
	[MSR_STAN] ASC,
	[MSR_Value] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMM_UNIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMM_UNIT](
	[MSR_ID] [int] NOT NULL,
	[CatID] [smallint] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Market_Comm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Market_Comm](
	[CommID] [bigint] NULL,
	[MarketID] [int] NULL,
	[MRK_COMM_MSR] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comm_Price]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comm_Price](
	[CommID] [int] NOT NULL,
	[Name1] [varchar](30) NULL,
	[CatID] [smallint] NULL,
	[NameID] [smallint] NULL,
	[TypeID] [int] NULL,
	[GradeID] [int] NULL,
	[UOM] [varchar](15) NULL,
	[Price] [float] NULL,
	[Infosup_id] [int] NOT NULL,
	[MarketID] [int] NOT NULL,
	[Data_Col_Date] [datetime] NOT NULL,
	[Data_Col_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_COPRI] PRIMARY KEY CLUSTERED 
(
	[CommID] ASC,
	[Infosup_id] ASC,
	[MarketID] ASC,
	[Data_Col_Date] ASC,
	[Data_Col_Time] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login_Form]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login_Form](
	[Username] [varchar](25) NULL,
	[Password1] [varchar](25) NULL,
	[CnfrmPassword] [varchar](25) NULL,
	[Status1] [varchar](20) NULL,
	[Flag] [varchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loc_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Loc_Mast](
	[LocID] [bigint] NOT NULL,
	[Loc_TypeID] [int] NULL,
	[StateID] [smallint] NULL,
	[DistID] [smallint] NULL,
	[MandID] [int] NULL,
	[VilID] [int] NULL,
	[Name1] [varchar](30) NULL,
	[Pin] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comm_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comm_Mast](
	[CommID] [bigint] NOT NULL,
	[Comm_Div_TypeID] [int] NULL,
	[CatID] [smallint] NULL,
	[NameID] [smallint] NULL,
	[TypeID] [int] NULL,
	[GradeID] [int] NULL,
	[Name1] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City_Mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[City_Mast](
	[CityID] [bigint] NOT NULL,
	[Name1] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proctprice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[proctprice]
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
' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Login_Form__Flag__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[Login_Form]'))
ALTER TABLE [dbo].[Login_Form]  WITH CHECK ADD CHECK  (([Flag]='No' OR [Flag]='Yes'))
