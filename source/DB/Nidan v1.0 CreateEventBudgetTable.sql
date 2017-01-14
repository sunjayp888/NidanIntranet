USE [Nidan]
GO

/****** Object:  Table [dbo].[EventBudget]    Script Date: 17/12/2016 03:09:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventBudget](
	[EventBudgetId] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfAttendees] [decimal](18, 0) NULL,
	[EventCost] [decimal](18, 0) NULL,
	[EventPricePerPerson] [decimal](18, 0) NULL,
	[EstimatedMarketingGrandTotal] [decimal](18, 0) NULL,
	[SubTotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_EventBudget] PRIMARY KEY CLUSTERED 
(
	[EventBudgetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


