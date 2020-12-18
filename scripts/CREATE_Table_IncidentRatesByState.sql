USE [PoliceShootings]
GO

/****** Object:  Table [dbo].[censusStatePopulations2014]    Script Date: 12/11/2020 12:26:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[IncidentRatesByState](
	[state] [nvarchar](255) NULL,
	[year] [nvarchar](max) NULL,
	[IncidentCount] [int] NULL,
	[Quotient] [float] NULL,
	[IncidentRatePerThousandPopulation][float] NULL 
) ON [PRIMARY]
GO


