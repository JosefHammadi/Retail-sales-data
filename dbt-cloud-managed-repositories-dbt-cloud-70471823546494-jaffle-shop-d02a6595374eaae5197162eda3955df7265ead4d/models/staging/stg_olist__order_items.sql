WITH source AS ( SELECT * FROM {{ source('olist', 'order_items') }}   ),

renamed AS (

SELECT 

order_id,
order_item_id,
product_id,
price,
freight_value AS freight_cost


FROM source


)

SELECT * FROM renamed