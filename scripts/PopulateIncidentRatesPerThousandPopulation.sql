 -- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
USE [PoliceShootings]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mark Koivula
-- Create date: 12/11/2020
-- Description:	IncidentRatesPerThousandPopulation
-- =============================================
CREATE PROCEDURE PopulateIncidentRatesPerThousandPopulation 
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
   
  --Divide the population size by one thousand. In the example, 250,000 divided by 1,000 equals 250, which is called the quotient, 
  --the result of division. 
  --Divide the number of occurrences by the previous quotient. 
  --In the example, 10,000 divided by 250 equals 40.
 
 --Populate the IncidentRatePerThousandPopulation ----

 TRUNCATE TABLE [PoliceShootings].[dbo].[IncidentRatesByState]


 INSERT INTO [PoliceShootings].[dbo].[IncidentRatesByState] (
				state, 
				year, 
				IncidentCount, 
				Quotient, 
				IncidentRatePerThousandPopulation )
 

  SELECT p.State, 
		 p.Year, 
		 COUNT(Manner_of_death) as IncidentCount, 
		 q.Quotient,
		 CAST(COUNT(Manner_of_death) / q.Quotient as DECIMAL(20,8)) 'IncidentRatePerThousandPopulation'
  FROM [PoliceShootings].[dbo].[Police Fatalities] p
  INNER JOIN (
				  SELECT c.stateCode, 
				          --ROUND(c.[ popEst2014 ] / 1000, 0) as quotient
				          c.[ popEst2014 ] / 1000 as quotient
				  FROM [PoliceShootings].[dbo].[censusStatePopulations2014] c
			 ) q
				  ON p.State = q.StateCode
  WHERE (manner_of_Death = 'Shot' or manner_of_death = 'Shot and Tasered')
  GROUP BY State, 
           Year, 
		   q.Quotient

  ORDER BY State, Year ASC

 -- SELECT * FROM [PoliceShootings].[dbo].[IncidentRatesByState]
 --ORDER BY  IncidentRatePerThousandPopulation DESC

 END
