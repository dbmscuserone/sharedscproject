SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[CurrencyRate](
	[CurrencyRateID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyRateDate] [datetime] NOT NULL,
	[FromCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ToCurrencyCode] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AverageRate] [money] NOT NULL,
	[EndOfDayRate] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CurrencyRate_CurrencyRateID] PRIMARY KEY CLUSTERED 
(
	[CurrencyRateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Sales].[CurrencyRate] ADD  CONSTRAINT [DF_CurrencyRate_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
