pageextension 50068 PostedSalesInvLinesExt extends "Posted Sales Invoice Lines"
{
    layout
    {
        //HIDE COLUMNS

        //SHOW COLUMNS

        //REORDER AND ADD COLUMNS

        addafter("Document No.")
        {
            field("Posting Date"; Rec."Posting Date")
            {
                Visible = true;
                ApplicationArea = All;
            }

        }
        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "No.";
        }
    }

    actions
    {
    }

    var

}