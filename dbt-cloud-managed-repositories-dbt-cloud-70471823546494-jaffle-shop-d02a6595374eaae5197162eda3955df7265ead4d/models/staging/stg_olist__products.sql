WITH source AS ( SELECT * FROM {{ source('olist', 'products') }} ),

renamed AS 
(

SELECT
product_id,
product_category_name as category_name


FROM source

)

SELECT * FROM renamed