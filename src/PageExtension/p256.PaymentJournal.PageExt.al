pageextension 50057 PaymentJournalExt extends "Payment Journal"
{
    layout
    {

        //HIDE COLUMNS

        //
        modify("Recipient Bank Account") { Visible = false; }
        modify("Message to Recipient") { Visible = false; }
        modify("Payment Reference") { Visible = false; }
        modify("Creditor No.") { Visible = false; }
        modify("Applies-to Doc. Type") { Visible = false; }
        modify(AppliesToDocNo) { Visible = false; }
        modify("Applies-to Ext. Doc. No.") { Visible = false; }
        modify(GetAppliesToDocDueDate) { Visible = false; }
        modify("Bank Payment Type") { Visible = false; }
        modify(Correction) { Visible = false; }
        modify("Exported to Payment File") { Visible = false; }
        modify(TotalExportedAmount) { Visible = false; }
        modify("Has Payment Export Error") { Visible = false; }
        modify("Remit-to Code") { Visible = false; }

        //

        //SHOW COLUMNS

        //
        modify("Currency Code") { Visible = true; }
        //

        //REORDER AND ADD COLUMNS

        //
        //
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Document No.";
        }
    }

    actions
    {
    }

    var

}