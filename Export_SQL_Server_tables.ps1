Write-Host "Congratulations! Your first script executed successfully"
$server = "Servername"
$dbquery ="select name from sys.databases"
$path = 'C:\Users\Test'
$query = "select TABLE_SCHEMA as schema_name,TABLE_NAME as table_name,TABLE_SCHEMA +'.'+ TABLE_NAME as fultblname from INFORMATION_SCHEMA.TABLES"
$queryToOut = "SELECT * FROM $TableName"
$username = 'Admin'
$password = '******'

$databases = invoke-sqlcmd -query $dbquery -serverinstance $server -Username $username -Password $password 

Write-Host "Congratulations! Successfully login to database"
foreach ($database in $databases)
{
$tables = invoke-sqlcmd -serverinstance $server -database $database.name -query $query -Username $username -Password $password 

foreach ($table in $tables)
{
$currenttm = (get-date).ToString("yyyyMMdd HHmmss")
bcp $($table.fultblname) out $path\$($table.table_name)_$currenttm.csv -c -S $($server) -d $database.name -U $($username) -P $($password)
}
}

