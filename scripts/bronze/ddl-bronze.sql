/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

if OBJECT_ID('bronze.list_of_orders_raw','U') is not null
    drop table bronze.list_of_orders_raw
GO
	create table bronze.list_of_orders_raw
(
		orderId varchar(20),
		orderDate Date,
		customerName varchar(45),
		cust_state varchar(45),
		cust_city varchar(45)
);
if OBJECT_ID('bronze.order_details_raw','U') is not null
    drop table bronze.order_details_raw
GO
	create table bronze.order_details_raw
(
		 orderId varchar(20),
		 amount float,
		 profit float,
		 quantity int,
		 category varchar(45),
		 subcategory varchar(45)
 );
if OBJECT_ID('bronze.sales_target_raw','U') is not null
    drop table bronze.sales_target_raw
GO
create table bronze.sales_target_raw
(
 month_Order varchar(45),
 category varchar(45),
 target float
)



