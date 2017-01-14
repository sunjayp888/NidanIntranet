USE [Nidan_Dev]
GO

/****** Object:  Table [dbo].[FollowUp]    Script Date: 12/01/2017 06:50:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FollowUp](
	[MobilizationId] [int] NOT NULL,
	[EnquiryId] [int] NOT NULL,
	[FollowUpDate] [date] NOT NULL,
	[Remark] [varchar](max) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CentreId] [int] NOT NULL,
	[EnquiryStatus] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FollowUp] PRIMARY KEY CLUSTERED 
(
	[MobilizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[FollowUp]  WITH CHECK ADD  CONSTRAINT [FK_FollowUp_Centre] FOREIGN KEY([CentreId])
REFERENCES [dbo].[Centre] ([CentreId])
GO

ALTER TABLE [dbo].[FollowUp] CHECK CONSTRAINT [FK_FollowUp_Centre]
GO

ALTER TABLE [dbo].[FollowUp]  WITH CHECK ADD  CONSTRAINT [FK_FollowUp_Enquiry] FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Enquiry] ([EnquiryId])
GO

ALTER TABLE [dbo].[FollowUp] CHECK CONSTRAINT [FK_FollowUp_Enquiry]
GO

ALTER TABLE [dbo].[FollowUp]  WITH CHECK ADD  CONSTRAINT [FK_FollowUp_Organisation] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organisation] ([OrganisationId])
GO

ALTER TABLE [dbo].[FollowUp] CHECK CONSTRAINT [FK_FollowUp_Organisation]
GO


