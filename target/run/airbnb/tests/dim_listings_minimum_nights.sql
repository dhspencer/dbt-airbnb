
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT
* 
FROM AIRBNB.DEV.dim_listings_with_hosts
WHERE minimum_nights < 1
OR minimum_nights IS NULL
  
  
      
    ) dbt_internal_test