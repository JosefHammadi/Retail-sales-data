WITH source AS ( SELECT * FROM {{ source('olist', 'customers') }} ),

renamed AS 
(

SELECT
customer_id,
customer_unique_id,
customer_city as city,
customer_state as state

FROM source

)

SELECT * FROM renamed