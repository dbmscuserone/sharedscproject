SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Person].[PersonPhone](
	[BusinessEntityID] [int] NOT NULL,
	[PhoneNumber] [dbo].[Phone] NOT NULL,
	[PhoneNumberTypeID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC,
	[PhoneNumber] ASC,
	[PhoneNumberTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Person].[PersonPhone] ADD  CONSTRAINT [DF_PersonPhone_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
