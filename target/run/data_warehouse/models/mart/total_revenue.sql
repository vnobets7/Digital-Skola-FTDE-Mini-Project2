
  
    

  create  table "data_warehouse"."dbt_dev_mart"."total_revenue__dbt_tmp"
  
  
    as
  
  (
    

SELECT 
    SUM(amount) AS total_revenue,
    payment_date
FROM "data_warehouse"."dbt_dev_intermediete"."fact_payment"
GROUP BY payment_date
  );
  