SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[ProductDocument](
	[ProductID] [int] NOT NULL,
	[DocumentNode] [hierarchyid] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductDocument_ProductID_DocumentNode] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[DocumentNode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Production].[ProductDocument] ADD  CONSTRAINT [DF_ProductDocument_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
