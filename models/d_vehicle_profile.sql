SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'MAKE',
        'MODEL',
        'TRIM',
        'BODY',
        'TRANSMISSION',
        'COLOR',
        'INTERIOR'
    ]) }} AS VEHICLE_PROFILE_KEY,
    MAKE,
    MODEL,
    TRIM,
    BODY,
    TRANSMISSION,
    COLOR,
    INTERIOR
FROM
    {{ref("car_sales_stg")}}