WITH source AS  ( SELECT * FROM {{ source('olist', 'orders') }}  ),

renamed AS (
SELECT 
order_id,
customer_id,
order_status,
order_purchase_timestamp AS purchased_at,
order_approved_at AS approved_at,
order_delivered_customer_date AS delivered_at

FROM source

)

SELECT * FROM renamed