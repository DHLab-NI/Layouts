pageextension 50056 CashReceiptsJournalExt extends "Cash Receipt Journal"
{
    layout
    {

        //HIDE COLUMNS

        //
        modify("Applies-to Doc. Type") { Visible = false; }
        modify("Applies-to Doc. No.") { Visible = false; }
        modify(Correction) { Visible = false; }
        //

        //SHOW COLUMNS

        //
        modify("Currency Code") { Visible = true; }
        modify("Shortcut Dimension 1 Code") { Visible = true; }
        modify("Shortcut Dimension 2 Code") { Visible = true; }
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