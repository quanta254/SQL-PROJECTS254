  select *
  from [housing project].[dbo].[NashvilleHousing]



  --populate the property address

  select PropertyAddress
  from [housing project].[dbo].[NashvilleHousing]
  order by ParcelID


  select 
  PARSENAME(REPLACE(PropertyAddress, ',', '.'), 2) as Address
  , PARSENAME(REPLACE(PropertyAddress, ',', '.'), 1) as City
  from [housing project].[dbo].[NashvilleHousing]


  alter table NashvilleHousing
   add PropertySplitAddress nvarchar(250);

   update NashvilleHousing
   set PropertySplitAddress = PARSENAME(REPLACE(PropertyAddress, ',', '.'), 2) 

   alter table NashvilleHousing
   add PropertySplitCity nvarchar(250);

   update NashvilleHousing
   set PropertySplitCity = PARSENAME(REPLACE(PropertyAddress, ',', '.'), 1) 


   select *
  from [housing project].[dbo].[NashvilleHousing]



 
  select 
  PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1) 
  , PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2)
  , parsename (replace(OwnerAddress, ',', '.'), 3)
  from [housing project].[dbo].[NashvilleHousing]



  alter table NashvilleHousing
   add OwnerSplitState nvarchar(250);


   update NashvilleHousing
   set OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1) 


   alter table NashvilleHousing
   add OwnerSplitCity nvarchar(250);

   update NashvilleHousing
   set OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2) 

   alter table NashvilleHousing
   add OwnerSplitAddress nvarchar(250);
    
   update NashvilleHousing
   set OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3) 


  
  
 ALTER TABLE NashvilleHousing
DROP COLUMN OwnerSplitCity, OwnerSplitState; 





select SaleDate, convert(date, SaleDate)
from [housing project].[dbo].[NashvilleHousing]


 select *
  from [housing project].[dbo].[NashvilleHousing] 

  --removing duplicates

 with RowNumCTE AS(
  select *,
  row_number() over(
            partition by
			ParcelID,
			SaleDate,
			LegalReference,
			SalePrice,
			PropertyAddress
			order by
			UniqueID
			) row_num
from [housing project].[dbo].[NashvilleHousing]
--order by ParcelID
)
select *
from RowNumCTE
where row_num >1
--order by PropertyAddress


--uniform data presentation


select *
  from [housing project].[dbo].[NashvilleHousing]



  alter table NashvilleHousing
  drop column Propertyaddress, OwnerAddress, TaxDistrict






