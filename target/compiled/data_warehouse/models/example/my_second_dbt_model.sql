-- Use the `ref` function to select from other models

select *
from "data_warehouse"."dbt_dev"."my_first_dbt_model"
where id = 1