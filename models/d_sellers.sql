SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'SELLER'
    ]) }} AS SELLER_KEY,
    SELLER
FROM
    {{ref("car_sales_stg")}}