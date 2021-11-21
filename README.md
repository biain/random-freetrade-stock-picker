# random-stock-picker
Picks a random stock from the 2,000+ stocks on Freetrade.

List of stocks is based on this list published [here](https://docs.google.com/spreadsheets/d/14Ep-CmoqWxrMU8HshxthRcdRW8IsXvh3n2-ZHVCzqzQ/edit#gid=1855920257).

This list must be maually updated on the stock picker.

### How to update list of stocks

* Download Freetrade-Universe as a csv
* Run powershell "Update-stocks.ps1" Example: Update-stocks.ps1 -CSVFilePath "C:\temp\Freetrade Investment Universe - Freetrade Universe.csv"
* Push latest stock.js to master

## [Live Website](https://biain.github.io/random-freetrade-stock-picker/)

## Credits 

Stock picker js [RayBB.](https://github.com/RayBB/random-stock-picker)
Floating SVG background [RSH87.](https://codepen.io/RSH87/pen/grdJKQ)
SVG logo and stock list [Freetrade.](https://freetrade.io/stock-list)