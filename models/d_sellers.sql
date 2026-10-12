SELECT DISTINCT
    {{ dbt_utils.generate_surrogate_key([
        'CSS.SELLER'
    ]) }} AS SELLER_KEY,
    CSS.SELLER,
    SP.PARENT_COMPANY
FROM
    {{ref("car_sales_stg")}} CSS
LEFT JOIN {{ref("seller_parents")}} AS SP
    ON CSS.SELLER = SP.SELLER