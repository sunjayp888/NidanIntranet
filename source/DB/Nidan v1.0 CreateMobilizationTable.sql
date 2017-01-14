USE [Nidan_Dev]
GO

/****** Object:  Table [dbo].[Mobilization]    Script Date: 12/01/2017 06:49:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Mobilization](
	[MobilizationId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[OrganisationId] [int] NOT NULL,
	[CentreId] [int] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Mobile] [bigint] NOT NULL,
	[InterestedCourse] [varchar](500) NOT NULL,
	[Qualification] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Mobilization] PRIMARY KEY CLUSTERED 
(
	[MobilizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Mobilization]  WITH CHECK ADD  CONSTRAINT [FK_Mobilization_Centre] FOREIGN KEY([CentreId])
REFERENCES [dbo].[Centre] ([CentreId])
GO

ALTER TABLE [dbo].[Mobilization] CHECK CONSTRAINT [FK_Mobilization_Centre]
GO

ALTER TABLE [dbo].[Mobilization]  WITH CHECK ADD  CONSTRAINT [FK_Mobilization_Event] FOREIGN KEY([EventId])
REFERENCES [dbo].[Event] ([EventId])
GO

ALTER TABLE [dbo].[Mobilization] CHECK CONSTRAINT [FK_Mobilization_Event]
GO

ALTER TABLE [dbo].[Mobilization]  WITH CHECK ADD  CONSTRAINT [FK_Mobilization_Organisation] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisation] ([OrganisationId])
GO

ALTER TABLE [dbo].[Mobilization] CHECK CONSTRAINT [FK_Mobilization_Organisation]
GO


