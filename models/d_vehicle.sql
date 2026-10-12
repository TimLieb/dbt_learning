SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'VIN'
    ]) }} AS VEHICLE_KEY,
    VIN,
    YEAR,
    MAKE,
    MODEL,
    TRIM,
    BODY,
    TRANSMISSION,
    COLOR,
    INTERIOR
FROM
    {{ref("car_sales_stg")}}