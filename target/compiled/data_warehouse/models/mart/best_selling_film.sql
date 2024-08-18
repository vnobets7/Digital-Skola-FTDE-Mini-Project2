

SELECT 
    dim_fm.film_id,
    dim_fm.title,
    COUNT(dim_fm.film_id) AS total_rent
FROM "data_warehouse"."dbt_dev_raw"."film" AS dim_fm
JOIN "data_warehouse"."dbt_dev_raw"."inventory" AS dim_invt
ON dim_fm.film_id = dim_invt.film_id
JOIN "data_warehouse"."dbt_dev_raw"."rental" AS dim_rnt
ON dim_invt.inventory_id = dim_rnt.inventory_id
JOIN "data_warehouse"."dbt_dev_intermediete"."fact_payment" AS fct_pay
ON dim_rnt.rental_id = fct_pay.rental_id
GROUP BY dim_fm.film_id, dim_fm.title
ORDER BY total_rent DESC