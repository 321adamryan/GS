function CopyPasteRange() {
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
'
'       filename: GS - CopyPasteRange.bas
'          coder: AdamRyan
'        program: Google Sheets
'    description: This script  copies and pastes the range
'      extention: BAS
'       licensce: OpenSource
'        website: adamryan.info
'
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

 
var ss = SpreadsheetApp.getActiveSpreadsheet ();
var source = ss.getRange ('Dashboard!A22:w24');
source.copyTo (ss.getRange ('Database!A196'), {contentsOnly: true});

} 

