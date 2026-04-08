SELECT
* 
FROM AIRBNB.DEV.dim_listings_with_hosts
WHERE minimum_nights < 1
OR minimum_nights IS NULL