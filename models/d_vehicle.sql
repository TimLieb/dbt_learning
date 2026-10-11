SELECT DISTINCT
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