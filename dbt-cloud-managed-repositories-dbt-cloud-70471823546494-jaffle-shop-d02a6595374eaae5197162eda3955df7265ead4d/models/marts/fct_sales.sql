with orders as ( select * from {{ ref('stg_olist__orders') }}
),
items as (
    select * from {{ ref('stg_olist__order_items') }}
),
products as (
    select * from {{ ref('stg_olist__products') }}
),
customers as (
    select * from {{ ref('stg_olist__customers') }}
)

select
    -- Primary Key
    concat(items.order_id, '-', items.order_item_id) as sales_key,
    
    -- Foreign Keys
    orders.order_id,
    orders.customer_id,
    items.product_id,
    
    -- Dates
    orders.purchased_at,
    
    -- Metrics (The math)
    items.price,
    items.freight_cost,
    
    -- Dimensions (For easy filtering)
    products.category_name,
    customers.city,
    customers.state
    
from items
inner join orders on items.order_id = orders.order_id
left join products on items.product_id = products.product_id
left join customers on orders.customer_id = customers.customer_id