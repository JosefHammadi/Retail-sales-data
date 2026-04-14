{% docs fct_sales_description %}
This table is the **Heart of the Olist Warehouse**. 

It combines order headers with line items to provide a granular view of every product sold. 
- **Grain:** One row per order item.
- **Business Logic:** We use a `LEFT JOIN` on products to ensure we don't lose sales records if a product is missing from the catalog.
{% enddocs %}