select *
from [dbo].[Police Fatalities]




select *
from [dbo].[Police Fatalities]
where lat IS NULL AND lng IS NULL
order by State ASC, CITY ASC

select city, state_id
from [dbo].[uscities]
where state_id = 'AZ' and City = 'White River'
order by city ASC


UPDATE 
    t1
SET 
    t1.lat = t2.lat,
    t1.lng = t2.lng
 
FROM 
    [dbo].[Police Fatalities] t1
    LEFT JOIN [dbo].[uscities] t2
	ON t1.state = t2.state_id and t1.city = t2.city
WHERE 
    t2.state_id IS NOT NULL;


	
UPDATE [dbo].[Police Fatalities] 
  
SET 
    [dbo].[Police Fatalities].lat = [dbo].[uscities_lat_long].Latitude,
    [dbo].[Police Fatalities].lng = [dbo].[uscities_lat_long].Longitude
 
FROM [dbo].[uscities_lat_long] 
     INNER JOIN [dbo].[Police Fatalities] 
		ON [dbo].[uscities_lat_long].[State]= [dbo].[Police Fatalities].[State]
		AND [dbo].[uscities_lat_long].City = [dbo].[Police Fatalities].City
WHERE 
    [dbo].[Police Fatalities].lat IS NULL and [dbo].[Police Fatalities].lng IS NULL


	select * from [dbo].[uscities_lat_long]

	where City = 'Steamboat Island' and state = 'WA'