/* 
=================================================================================================
This scripts gives overall idea how we will bulk insert data from csv file to bronze schema table
but before insert this code truncate our target table first
================================================================================================
*/

TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'path\filename.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- FirstRow in file was column names so we started loading from 2nd row

