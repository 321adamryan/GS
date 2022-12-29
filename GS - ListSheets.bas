function listSheets() {
  var sheetNames = new Array();
  var sheets = SpreadsheetApp.getActiveSpreadsheet().getSheets();
  var selectedSheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  var selectedRow = selectedSheet.getActiveCell().getRow();
  var selectedCol = selectedSheet.getActiveCell().getColumn();
  var range = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet().getRange(selectedRow, selectedCol, sheets.length, 1);
  for (var i = 0; i < sheets.length; i++) sheetNames.push([sheets[i].getName()]);
  range.setValues(sheetNames);
}

function onOpen() {
  SpreadsheetApp.getUi()
      .createMenu('Sheets')
      .addItem('List All Sheets', 'listSheets')
      .addToUi();
}
