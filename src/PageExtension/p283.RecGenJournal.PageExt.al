pageextension 50074 RecGenJournalExt extends "Recurring General Journal"
{
    layout
    {

        //HIDE COLUMNS


        //SHOW COLUMNS

        modify("Account No.") { Visible = true; }
        modify("VAT Reporting Date") { Visible = false; }
        modify("Currency Code") { Visible = true; }
        modify(Comment) { Visible = true; }
        modify(AccName) { Visible = true; ShowCaption = true; Caption = 'Account Name'; }
        //

        //REORDER AND ADD COLUMNS

        movefirst(Control1; "Recurring Method", "Recurring Frequency", "Posting Date", "Document No.", "Account Type", "Account No.", "Description",
            "Currency Code", Amount, "Amount (LCY)", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", ShortcutDimCode3, "AccName", "Document Type",
            "Document Date", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Comment")
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