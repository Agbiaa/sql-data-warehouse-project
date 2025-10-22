# sql-data-warehouse-project
This project is a SQL Data Warehouse for an e-commerce company. The goal of the project is to organize and analyze sales data from multiple sources. The data is structured in a bronze, silver, and gold architecture:

  =>  Bronze: Raw data imported directly from CSV files (List_of_Orders, Order_Details, Sales_Target).
  
  ==> Silver: Cleaned and structured tables, including dimension tables (Dim_Clients, Dim_Products, Dim_Times, Dim_Targets) and the fact table (Fact_Sales).
  
 ==>  Gold: Aggregated and analytical views ready for reporting and dashboards, such as sales by category, sales vs targets, and monthly trends.
  
  The project demonstrates skills in:
  
  SQL database design and modeling
  
  ETL process (extract, transform, load)
  
  Data cleaning and transformation
  
  Creating analytical views for business intelligence
  
  Technologies: SQL Server , CSV files, optional BI tools (Power BI, Tableau).
