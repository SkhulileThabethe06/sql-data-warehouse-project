/*
================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
================================================
Script Purpose:
        This stored procedure loads data into the bronze schema from external CSV files.
        it performs the following actions:
         -Truncate the bronze tables before loading data
         -Uses the "BULK INSERT" command to load data from csv files to bronze tables.
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);


TRUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);


TRUNCATE TABLE bronze.crm_sls_details;

BULK INSERT bronze.crm_sls_details
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);


TRUNCATE TABLE bronze.erp_cat_g1v2;

BULK INSERT bronze.erp_cat_g1v2
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);


TRUNCATE TABLE bronze.erp_cust_az12;

BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);



TRUNCATE TABLE bronze.erp_loc_a101;

BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\wsmgr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK

);
END;

