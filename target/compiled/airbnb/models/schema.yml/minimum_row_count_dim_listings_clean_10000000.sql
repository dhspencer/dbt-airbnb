
    SELECT
    COUNT(*) AS row_count
    FROM AIRBNB.DEV.dim_listings_clean
    HAVING COUNT(*) < 10000000
