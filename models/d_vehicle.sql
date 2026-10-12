SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'VIN'
    ]) }} AS VEHICLE_KEY,
    {{ dbt_utils.generate_surrogate_key([
        'MAKE',
        'MODEL',
        'TRIM',
        'BODY',
        'TRANSMISSION',
        'COLOR',
        'INTERIOR'
    ]) }} AS VEHICLE_PROFILE_KEY,
    VIN,
    YEAR
FROM
    {{ref("car_sales_stg")}}