/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
   DECLARE @start_time Datetime,@end_time Datetime;
   BEGIN TRY
   PRINT'==============================================================='
   PRINT 'Loading bronze layer'
   PRINT'==============================================================='
   SET @start_time=GETDATE()
   PRINT '>> truncating table: bronze.list_of_orders_raw '
   truncate table bronze.list_of_orders_raw
   PRINT '>> Inserting data into: bronze.list_of_orders_raw'
	bulk insert bronze.list_of_orders_raw
	from 'C:\Users\agcharrabiaa\OneDrive\Bureau\OneDrive\log\Documents\Formations 2025\sql\E-commerce_project\datasets\List_of_Orders.csv'
	with(
	Firstrow =2,
	fieldterminator=',',
	tablock
	);
	SET @end_time=GETDATE()
	PRINT 'load duration '+cast(datediff(second,@start_time,@end_time) as NVARCHAR)+' seconds';

	--======================== isert into table: bronze.order_details_raw ==============================
	PRINT'----------------------------------------------------------------------------------------------'
	SET @start_time=GETDATE()
	PRINT '>> truncating table: bronze.order_details_raw '
	truncate table bronze.order_details_raw
	PRINT '>> Inserting data into: bronze.order_details_raw'
	bulk insert bronze.order_details_raw
	from 'C:\Users\agcharrabiaa\OneDrive\Bureau\OneDrive\log\Documents\Formations 2025\sql\E-commerce_project\datasets\Order_Details.csv'
	with(
	Firstrow =2,
	fieldterminator=',',
	tablock
	);
	SET @end_time=GETDATE()
	PRINT 'load duration '+cast(datediff(second,@start_time,@end_time) as NVARCHAR)+' seconds';
	--==================== insert into table: ===================================================
	PRINT'----------------------------------------------------------------------------------------------'
	SET @start_time=GETDATE()
	PRINT '>> truncating table: bronze.sales_target_raw '
	truncate table bronze.sales_target_raw
	PRINT '>> Inserting data into: bronze.sales_target_raw'
	bulk insert bronze.sales_target_raw
	from 'C:\Users\agcharrabiaa\OneDrive\Bureau\OneDrive\log\Documents\Formations 2025\sql\E-commerce_project\datasets\Sales_target.csv'
	with(
	Firstrow =2,
	fieldterminator=',',
	tablock
	);
	SET @end_time=GETDATE()
	PRINT 'load duration '+ cast(datediff(second,@start_time,@end_time) as NVARCHAR)+' seconds';
	PRINT'>>------------------------------------------------------------------------'
	END TRY
	BEGIN CATCH
	PRINT'========================================='
	PRINT'ERROR OCURRED DURING LOADING BRONZE LAYER'
	PRINT'Error message'+ERROR_MESSAGE();
	PRINT'Error message'+cast(ERROR_NUMBER()as NVARCHAR);
	PRINT'Error message'+cast(ERROR_STATE()as NVARCHAR);
	PRINT'========================================='
	END CATCH
END
--================execute procedure=======================
 EXEC bronze.load_bronze

