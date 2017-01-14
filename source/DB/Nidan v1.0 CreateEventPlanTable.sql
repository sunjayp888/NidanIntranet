USE [Nidan]
GO

/****** Object:  Table [dbo].[EventPlan]    Script Date: 17/12/2016 15:11:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EventPlan](
	[EventPlanId] [int] IDENTITY(1,1) NOT NULL,
	[NameOfEvent] [varchar](500) NULL,
	[EventDate] [date] NULL,
	[Time] [datetime] NULL,
	[Location] [varchar](500) NULL,
	[PlanningDate] [date] NULL,
	[EventPurpose] [nvarchar](max) NULL,
	[TargetAudienceWho] [varchar](500) NULL,
	[ResponsiblePersonName] [varchar](500) NULL,
	[Designation] [varchar](500) NULL,
	[TeamMembersName] [varchar](500) NULL,
	[ExpectedNumberOfParticipants] [int] NULL,
	[WhoAreTheyOriginOfTheSpectators] [varchar](500) NULL,
	[EstimatedRevenueGenerationByThisEventOrAfterThisEvent] [decimal](18, 0) NULL,
	[BudgetEstimate] [decimal](18, 0) NULL,
 CONSTRAINT [PK_EventPlan] PRIMARY KEY CLUSTERED 
(
	[EventPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


