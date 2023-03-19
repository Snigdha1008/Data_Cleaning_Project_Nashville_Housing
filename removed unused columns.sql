use new_database; 
select * 
from nashville_housing_data_for_data_cleaning; 
alter table nashville_housing_data_for_data_cleaning
drop column OwnerAddress; 
select * 
from nashville_housing_data_for_data_cleaning; 
alter table nashville_housing_data_for_data_cleaning
drop column LandUse 