use new_database; 
select distinct(SoldAsVacant), count(SoldAsVacant)
from nashville_housing_data_for_data_cleaning
group by SoldAsVacant
order by SoldAsVacant; 
update nashville_housing_data_for_data_cleaning
set SoldAsVacant = case when SoldAsVacant = 'Y' then 'Yes' 
 when SoldAsVacant = 'N' then 'No' 
else SoldAsVacant
end;  
select SoldAsVacant, 
case when SoldAsVacant = 'Y' then 'Yes' 
 when SoldAsVacant = 'N' then 'No' 
else SoldAsVacant
end 
from nashville_housing_data_for_data_cleaning; 