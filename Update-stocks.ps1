#requires -version 2
<#
.DESCRIPTION
  Converst a csv export fo stocks to a javascript file.
.PARAMETER <CSVFilePath>
  File pathc of the CSV to process.
.OUTPUTS
  Outputs stocks.js
.EXAMPLE
  Update-stocks.ps1 -CSVFilePath "C:\temp\Freetrade Investment Universe - Freetrade Universe.csv"
#>

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $CSVFilePath
)

#Set Error Action to Silently Continue
$ErrorActionPreference = "Stop"

#-----------------------------------------------------------[Execution]------------------------------------------------------------

$CSVFilePath = "D:\Downloads\Freetrade Investment Universe - Freetrade Universe.csv"

[array]$csv = Import-Csv -Path "D:\Downloads\Freetrade Investment Universe - Freetrade Universe.csv"

[array]$Worker = $csv | Select-Object @{Name="Exchange"; Expression = {$($_.'MIC' -split  'x')[1]} }, @{Name="ticker"; Expression = {$_.'Symbol'} }, @{Name="title"; Expression = {$_.'Long_Title'} }

[string]$Worker2 = $Worker | Convertto-json -Compress
$string = "var stocks = " 
[string]$Output = ($string + $Worker2)

$Output | Out-File -FilePath "C:\Users\SirMonkMan\random-freetrade-stock-picker\stocks.js"