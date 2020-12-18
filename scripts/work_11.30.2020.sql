 

  SELECT p.State, 
		 p.Year, 
		 COUNT(Manner_of_death) as IncidentCount 
		
  FROM [PoliceShootings].[dbo].[Police Fatalities] p

  WHERE (manner_of_Death = 'Shot' or manner_of_death = 'Shot and Tasered')
  and State = 'ND'
  GROUP BY State
           ,Year
  
  ORDER BY  Year


  top 5 citites

  SELECT TOP 5 p.City,
         p.State, 
		 --p.Year, 
		 COUNT(Manner_of_death) as IncidentCount 
		
  FROM [PoliceShootings].[dbo].[Police Fatalities] p

  WHERE (manner_of_Death = 'Shot' or manner_of_death = 'Shot and Tasered')
  AND State IN ('CA', 'TX', 'AZ', 'FL', 'NY')
  GROUP BY  p.City,
			p.State
           --Year
  
  ORDER BY  IncidentCount DESC