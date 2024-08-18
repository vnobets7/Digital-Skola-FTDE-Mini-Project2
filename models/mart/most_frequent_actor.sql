{{ config(
    materialized="table",
    schema="mart"
) }}

SELECT dim_fa.actor_id,
       CONCAT(dim_at.first_name,' ',dim_at.last_name) AS full_name, 
       COUNT(dim_fa.actor_id) AS total_film
FROM {{ ref('actor') }} AS dim_at
JOIN {{ ref('film_actor') }} AS dim_fa
ON dim_at.actor_id = dim_fa.actor_id 
JOIN {{ ref('film') }} AS dim_fm
ON dim_fa.film_id = dim_fm.film_id
GROUP BY dim_fa.actor_id, full_name
ORDER BY total_film DESC