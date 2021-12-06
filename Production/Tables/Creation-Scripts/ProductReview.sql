SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[ProductReview](
	[ProductReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ReviewerName] [dbo].[Name] NOT NULL,
	[ReviewDate] [datetime] NOT NULL,
	[EmailAddress] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](3850) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductReview_ProductReviewID] PRIMARY KEY CLUSTERED 
(
	[ProductReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Production].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_ReviewDate]  DEFAULT (getdate()) FOR [ReviewDate]
GO
ALTER TABLE [Production].[ProductReview] ADD  CONSTRAINT [DF_ProductReview_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
