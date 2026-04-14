with products as (
    select * from {{ ref('stg_olist__products') }}
),

order_items as (
    select * from {{ ref('stg_olist__order_items') }}
),

product_performance as (
    select
        product_id,
        coalesce(count(order_id),0) as total_orders,
        coalesce(sum(price),0) as total_revenue
    from order_items
    group by product_id
)

select
    p.product_id,
    p.category_name,
    pp.total_orders,
    pp.total_revenue
from products p
left join product_performance pp on p.product_id = pp.product_id