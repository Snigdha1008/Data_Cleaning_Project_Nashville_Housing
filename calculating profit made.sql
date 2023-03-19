-- amount of profit generated for sale of the houses 
use new_database; 
SELECT OwnerName, TotalValue, BuildingValue, SalePrice, ((SalePrice-TotalValue)/TotalValue)*100 as 'Profit_Made'
FROM nashville_housing_data_for_data_cleaning; 
alter table nashville_housing_data_for_data_cleaning
add Profit_Made double;
select * from nashville_housing_data_for_data_cleaning;
insert into nashville_housing_data_for_data_cleaning(Profit_Made)values(Profit_Made);
update nashville_housing_data_for_data_cleaning
set Profit_Made = ((SalePrice-TotalValue)/TotalValue)*100;