
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    SELECT
    *
    FROM AIRBNB.DEV.dim_listings_clean
    where minimum_nights <= 0

  
  
      
    ) dbt_internal_test