SELECT
    YEAR,
    MAKE,
    MODEL,
    TRIM,
    BODY,
    TRANSMISSION,
    VIN,
    STATE,
    CONDITION,
    ODOMETER,
    COLOR,
    INTERIOR,
    SELLER,
    MMR,
    SELLINGPRICE,
    TRY_TO_TIMESTAMP_TZ(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(SALEDATE, '^[A-Za-z]{3} ', ''),
                ' GMT',
                ''
            ),
            ' \\([A-Z]+\\)$',
            ''
        ),
        'MON DD YYYY HH24:MI:SSTZHTZM'
    ) AS SALEDATETIME
FROM
    SLEEKMART_OMS.L1_LANDING.CAR_SALES