/*
---------------------------------------------
Create Database and Schemas
------------------------------------------
Script Purpose:
This script creates a new database named Datawarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', "silver", and gold'.

WARNING:
Running this script will drop the entire 'Datawarehouse' database if it exists.
A11 data in the database will be permanently deleted. 
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data_Warehouse')
BEGIN
     ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE Data_Warehouse;
 END;
     GO


 --Create Datawarehouse database
CREATE DATABASE Data_Warehouse;

USE Data_Warehouse;

-- create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
