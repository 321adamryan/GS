function FormatRange() {
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
'
'       filename: GS - FormatRange.bas
'          coder: AdamRyan
'        program: Google Sheets
'    description: This script  formats a range
'      extention: BAS
'       licensce: OpenSource
'        website: adamryan.info
'
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

 


  // Set the font style of the cells in the range of B2:C2 to be italic.
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheets()[0];
  var cell = sheet.getRange('B2:C2');
  cell.setFontStyle('italic');
}
