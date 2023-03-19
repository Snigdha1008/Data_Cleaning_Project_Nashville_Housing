use new_database;
update nashville_housing_data_for_data_cleaning
set SaleDate=str_to_date(SaleDate,'%M %d,%Y');
select * from nashville_housing_data_for_data_cleaning;