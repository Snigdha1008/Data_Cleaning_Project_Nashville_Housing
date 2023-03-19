-- remove duplicates 
use new_database; 
with rownumCTE as (
select *, 
row_number() over(
partition by  ParcelID, PropertyAddress, SalePrice, SaleDate, LegalReference
order by UniqueID) row_num
from nashville_housing_data_for_data_cleaning
)
select * 
from rownumCTE
where row_num > 1
-- order by PropertyAddress