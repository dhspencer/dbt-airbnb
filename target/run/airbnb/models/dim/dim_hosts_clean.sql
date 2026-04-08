
  create or replace   view AIRBNB.DEV.dim_hosts_clean
  
  
  
  
  as (
    -- cleaning the data in the hosts table src_hosts

WITH  __dbt__cte__src_hosts as (
-- import raw hosts
WITH raw_hosts AS
(
SELECT * FROM AIRBNB.raw.raw_hosts
)
SELECT 
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM raw_hosts
), src_hosts AS 
(
        SELECT * FROM __dbt__cte__src_hosts
)
SELECT 
   host_id,
   COALESCE(host_name,'Anonymous') AS host_name,
   is_superhost,
   created_at,
   updated_at
FROM src_hosts
  );

