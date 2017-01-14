USE [Nidan_Dev]
GO

/****** Object:  Table [dbo].[Enquiry]    Script Date: 12/01/2017 06:49:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Enquiry](
	[EnquiryId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [varchar](500) NOT NULL,
	[ContactNo] [bigint] NOT NULL,
	[EmailId] [varchar](500) NULL,
	[Age] [int] NOT NULL,
	[Qualification] [varchar](500) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[GuardianName] [varchar](500) NULL,
	[GuardianContactNo] [bigint] NULL,
	[Occupation] [varchar](500) NULL,
	[Religion] [varchar](500) NULL,
	[CatagoryCode] [varchar](100) NULL,
	[Gender] [varchar](100) NOT NULL,
	[EducationalQualification] [varchar](500) NOT NULL,
	[YearOFPassOut] [varchar](100) NULL,
	[Marks] [varchar](100) NULL,
	[AreaOfInterest] [varchar](500) NULL,
	[HowDidYouKnowAboutUs] [varchar](500) NULL,
	[PreTrainingStatus] [varchar](100) NULL,
	[EmploymentStatus] [varchar](100) NULL,
	[Promotional] [varchar](100) NULL,
	[EnquiryDate] [date] NOT NULL,
	[Place] [varchar](100) NOT NULL,
	[CounselledBy] [varchar](500) NOT NULL,
	[CourseOffered] [varchar](500) NOT NULL,
	[PreferTiming] [datetime] NULL,
	[Remarks] [varchar](max) NULL,
	[CentreId] [int] NOT NULL,
	[OrganisationId] [int] NOT NULL,
 CONSTRAINT [PK_Enquiry] PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_Centre] FOREIGN KEY([CentreId])
REFERENCES [dbo].[Centre] ([CentreId])
GO

ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_Centre]
GO

ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_Organisation] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisation] ([OrganisationId])
GO

ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_Organisation]
GO


