SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ProductNumber] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MakeFlag] [dbo].[Flag] NOT NULL,
	[FinishedGoodsFlag] [dbo].[Flag] NOT NULL,
	[Color] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SafetyStockLevel] [smallint] NOT NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[Size] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SizeUnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WeightUnitMeasureCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Weight] [decimal](8, 2) NULL,
	[DaysToManufacture] [int] NOT NULL,
	[ProductLine] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Class] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Style] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NOT NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Product_ProductID] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Production].[Product] ADD  CONSTRAINT [DF_Product_MakeFlag]  DEFAULT ((1)) FOR [MakeFlag]
GO
ALTER TABLE [Production].[Product] ADD  CONSTRAINT [DF_Product_FinishedGoodsFlag]  DEFAULT ((1)) FOR [FinishedGoodsFlag]
GO
ALTER TABLE [Production].[Product] ADD  CONSTRAINT [DF_Product_rowguid]  DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE [Production].[Product] ADD  CONSTRAINT [DF_Product_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
