This project is a data pipeline I built using dbt and Google BigQuery, based on the Olist Brazilian e-commerce dataset from Kaggle.
The goal was to take raw transactional data and transform it into clean, structured tables that are ready for analysis or reporting tools like Power BI.
I built a two-layer dbt project. The staging layer cleans and standardizes the raw source tables — renaming columns, casting types, and removing noise. The marts layer builds the actual analytical tables: a fact table for sales transactions and a dimension table for products that includes performance metrics like total orders and total revenue per product.
All models are tested for data quality using dbt's built-in tests including uniqueness, not null checks, and referential integrity between tables.

Stack: dbt Cloud, Google BigQuery, SQL
