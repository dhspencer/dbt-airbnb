
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    SELECT
    COUNT(*) AS row_count
    FROM AIRBNB.DEV.dim_listings_clean
    HAVING COUNT(*) < 1000

  
  
      
    ) dbt_internal_test