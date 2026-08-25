
/* 
=======================================================
 DDL script: Create Bronze Tables
========================================================

Script purpose:
   This script creates tables in the 'bronze' schema, dropping existing tables if they already exist.
========================================================
*/


IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE,
)


IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_name NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_startdate DATE,
prd_enddate DATE,
)


IF OBJECT_ID ('bronze.crm_sls_details','U') IS NOT NULL
    DROP TABLE bronze.crm_sls_details;
CREATE TABLE bronze.crm_sls_details(
sls_prd_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_date DATE,
sls_ship_date DATE,
sls_sales INT,
sls_quantity INT,
sls_price INT,
)



IF OBJECT_ID ('bronze.erp_cust_aza12','U') IS NOT NULL
    DROP TABLE bronze.erp_cust_aza12;
CREATE TABLE bronze.erp_cust_aza12(
cust_ID NVARCHAR(50),
cust_bdate DATE,
cust_gen NVARCHAR(50),
)


IF OBJECT_ID ('bronze.erp_loc_a101','U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101(
cust_ID NVARCHAR(50),
cust_loc NVARCHAR(50),

)

IF OBJECT_ID ('bronze.erp_cat_g1v2','U') IS NOT NULL
    DROP TABLE bronze.erp_cat_g1v2;
CREATE TABLE bronze.erp_cat_g1v2(
cat_ID NVARCHAR(50),
category NVARCHAR(50),
sub_cat NVARCHAR(50),
maintanance NVARCHAR(50),
)




