# export_sql_server_tables

Export list of tables from list of databases using bcp from sql server database. 

This powershell is created for exporting data from sql server and creating csv files using Microsoft BCP utility. 

This dynamic script and it will export all the tables from all the databases dynamically. We have to just pass a list of databases or we can use system tables for list databases. 

Step1. Install BCP Utility on your machine.
step2. Download powershell script from Repo.
step2. Check the connectivity 
step2 Test for few tables by passing single database.

Call PowerShell Command 
& "$PSScriptRoot\Export_SQL_Server_tables.ps1"
