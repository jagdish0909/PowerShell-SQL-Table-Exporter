# PowerShell Database Export Script

This script connects to a SQL Server, retrieves a list of all databases and tables, and exports the contents of each table to CSV files. The script uses the BCP (Bulk Copy Program) tool for exporting data.

## Features
- Connects to a SQL Server instance using credentials.
- Retrieves a list of databases and tables.
- Exports each table's data into a CSV file.
- Filenames include timestamps for easy identification.

## Requirements
- PowerShell 5.0 or later.
- SQL Server with the `sys.databases` and `INFORMATION_SCHEMA.TABLES` system views.
- BCP (Bulk Copy Program) tool, which is part of SQL Server.
- SQL Server credentials with sufficient permissions to read from the databases and export data.

## Usage

1. **Modify the Script**: 
   - Set the following variables in the script:
     - `$server`: Your SQL Server instance name.
     - `$username`: Your SQL Server username.
     - `$password`: Your SQL Server password (ensure it’s secured properly).
     - `$path`: The file path where CSV files will be saved.
   
2. **Run the Script**: 
   Open PowerShell and execute the script:
   ```powershell
   .\ExportDatabaseTables.ps1
