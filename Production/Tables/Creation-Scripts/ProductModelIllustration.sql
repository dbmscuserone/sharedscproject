SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[ProductModelIllustration](
	[ProductModelID] [int] NOT NULL,
	[IllustrationID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductModelIllustration_ProductModelID_IllustrationID] PRIMARY KEY CLUSTERED 
(
	[ProductModelID] ASC,
	[IllustrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Production].[ProductModelIllustration] ADD  CONSTRAINT [DF_ProductModelIllustration_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
