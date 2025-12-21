-- Create Database 'DataWarehouse'

/*
====================================================================================================
Create Database and Schemas
====================================================================================================
Script Purpose:
  This script creates a new database named 'Datawaewhouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. additionally, the script sets up three schemas 
  within the databse: 'bronze', 'silver', 'gold'.

WARNING ⚠
  Running this script will drop the entire 'Datawarehouse' databse if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have propeer backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'datawarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
