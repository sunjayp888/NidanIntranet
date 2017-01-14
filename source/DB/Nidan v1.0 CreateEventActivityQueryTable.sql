USE [Nidan]
GO

/****** Object:  Table [dbo].[EventActivityQuery]    Script Date: 17/12/2016 15:10:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EventActivityQuery](
	[EventActivityQueryId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[EventActivityId] [varchar](500) NULL,
 CONSTRAINT [PK_EventActivityQuery] PRIMARY KEY CLUSTERED 
(
	[EventActivityQueryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


