select *  		
FROM [dbo].[Police Fatalities_bak12.17.2020]
WHERE year = '2007' and ([Armed] is Null or [Armed] = 'Unarmed')
AND ([Manner_of_death] = 'Shot' or [Manner_of_death] = 'Shot and Tasered')
order by UID ASC



 select count(*)
 from [dbo].[Police Fatalities]
 where Gender = 'Male' -- 11872

  select count(*)
 from [dbo].[Police Fatalities]
 where Gender = 'Female' 614






select distinct State
FROM [dbo].[Police Fatalities_bak12.17.2020]
order by State
order by State, city asc

Anchorage	AK

select *  		
FROM [dbo].[Police Fatalities_bak12.17.2020]
where City = 'Houston' and state = 'TX'

select * from [dbo].[uscities]
where state_id = 'AK'
Anchorage	AK


select distinct state_id, state_name
from [dbo].[uscities]
order by state_id


select * from [dbo].[IncidentPercentageByStateRace]
where State = 'AZ' and Race = 'Black'

select * from [dbo].[StatePopulationPercentageByRace]


select FORMAT([Hispanic], 'P')as [Hispanic],
        FORMAT([White], 'P') as  [White],
		FORMAT([Black], 'P') as  [Black],
		FORMAT([Asian], 'P') as  [Asian],
		FORMAT([Native], 'P') as [Native]

from [dbo].[StatePopulationPercentageByRace]
where State = 'AZ'

Update [dbo].[StatePopulationPercentageByRace]
Set [Other] = FORMAT('0', 'P'),
    [Unknown] = FORMAT('0', 'P')
where (Other IS NULL and Unknown IS NULL)

delete from [dbo].[StatePopulationPercentageByRace]
where State IS NULL