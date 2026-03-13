/* 
This script creates a new database named 'Datawarehouse' after checking if it already exists. 
Also sets up 3 schema's according to the medaillion architecture namely, bronze - silver - gold.

WARNING: This script destroys the entire database : 'Datawarehouse'. Be careful!
*/

--Using master database
USE master;
GO

--Drop and reacreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END
GO
  
--Create database 'Datawarehouse'
CREATE DATABASE DataWarehouse;
GO
 
USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

