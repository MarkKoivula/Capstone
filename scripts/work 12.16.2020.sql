SELECT  Race, 
	    COUNT([Manner_of_death]) as 'IncidentCnt' ,
		CAST(count(*) * 100.0 / sum(count(*)) over () as decimal(10,2)) as Incident_percent,
		'Top 5' as 'TopBottom',
		Year
		
FROM [PoliceShootings].[dbo].[Police Fatalities] 
WHERE year between '2007' and '2016' 
AND ([Manner_of_death] = 'Shot' or [Manner_of_death] = 'Shot and Tasered')
GROUP BY Race,
		 Year

		 ORDER BY Year ASC