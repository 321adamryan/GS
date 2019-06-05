function appendsheet() {
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
'
'       filename: GS - AppendSheet.bas
'          coder: AdamRyan
'        program: Google Sheets
'    description: This script appends a sheet with information
'      extention: BAS
'       licensce: OpenSource
'        website: adamryan.info
'
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

 

  var sheet = SpreadsheetApp.getActiveSheet();
  sheet.appendRow(['Cotton Sweatshirt XL', 'css004']);
}

