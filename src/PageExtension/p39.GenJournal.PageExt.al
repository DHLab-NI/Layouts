pageextension 50075 GenJournalExt extends "General Journal"
{
    layout
    {

        //HIDE COLUMNS
        modify("EU 3-Party Trade") { Visible = false; }
        modify("VAT Reporting Date") { Visible = false; }
        modify("Deferral Code") { Visible = false; }
        modify(Correction) { Visible = false; }


        //SHOW COLUMNS

        modify("Account No.") { Visible = true; }
        modify("Currency Code") { Visible = true; }
        modify(Comment) { Visible = true; }
        modify(AccName) { Visible = true; ShowCaption = true; Caption = 'Account Name'; }
        //

        //REORDER AND ADD COLUMNS

        movefirst(Control1; "Posting Date", "Document No.", "Account Type", "Account No.", "Description",
            "Currency Code", Amount, "Amount (LCY)", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", ShortcutDimCode3,
            "AccName", "Bal. Account Type", "Bal. Account No.", "Document Type",
            "Document Date", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Bal. Gen. Posting Type",
            "Bal. Gen. Bus. Posting Group", "Bal. Gen. Prod. Posting Group", "Comment")
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = Description;
        }
    }

    actions
    {
    }

    var

}