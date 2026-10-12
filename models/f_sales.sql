SELECT
    {{ dbt_utils.generate_surrogate_key([
        'VIN'
    ]) }} AS VEHICLE_KEY,
    {{ dbt_utils.generate_surrogate_key([
        'SELLER'
    ]) }} AS SELLER_KEY,
    STATE,
    CONDITION,
    ODOMETER,
    SELLINGPRICE,
    SALEDATETIME
FROM
    {{ref("car_sales_stg")}}