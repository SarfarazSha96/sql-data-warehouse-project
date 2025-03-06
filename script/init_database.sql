/*
============================================================
Create Database and Schemas 
============================================================
Script Purpose:
    This script creates a new database named "DataWarehouse" after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

Warning:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the data base will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
GO

-- Create the ' DataWarehouse' database
Create DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

-- Create Schemas
Create SCHEMA bronze;
GO
  
Create SCHEMA silver;
GO
  
Create SCHEMA gold;
GO
