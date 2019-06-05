function AlertSalesEmail() {
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
'
'       filename: GS - AlertSalesEmail.bas
'          coder: AdamRyan
'        program: Google Sheets
'    description: This script sends an alert email
'      extention: BAS
'       licensce: OpenSource
'        website: adamryan.info
'
' :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

  // Fetch the monthly sales
  var monthSalesRange = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Dashboard").getRange("D18"); 
  var monthSales = monthSalesRange.getValue();
  // Check totals sales
  if (monthSales > 0){
    // Fetch the email address
    var emailRange = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Contacts").getRange("A:A");
    var emailAddress = emailRange.getValues();
  
    // Send Alert Email.
    var message = 'Sales ALERT!!! Sales Update ' ; // Second column
    var para = "\n";
    var subject = 'The Sales Analysis Recieved an Update!';
    var URL ="https://docs.google.com/spreadsheets/d/1YZzRk2Pe-n39N2QGE6RAUJH4OCRs/edit?usp=sharing";
    MailApp.sendEmail(emailAddress, subject, message + para + "Current Projected Revenue: $" + monthSales  + para +  URL);
    }
}

