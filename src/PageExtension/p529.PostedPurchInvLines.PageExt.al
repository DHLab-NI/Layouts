pageextension 50067 PostedPurchInvLinesExt extends "Posted Purchase Invoice Lines"
{
    layout
    {
        //HIDE COLUMNS
        modify("Variant Code") { Visible = false; }
        modify("FA Posting Type") { Visible = false; }
        modify("Depreciation Book Code") { Visible = false; }
        modify("Unit of Measure") { Visible = false; }
        modify("Indirect Cost %") { Visible = false; }
        modify("Unit Cost (LCY)") { Visible = false; }
        modify("Unit Price (LCY)") { Visible = false; }
        modify("Amount Including VAT") { Visible = false; }
        modify("Line Discount %") { Visible = false; }
        modify("Line Discount Amount") { Visible = false; }
        modify("Allow Invoice Disc.") { Visible = false; }
        modify("Inv. Discount Amount") { Visible = false; }
        modify("Appl.-to Item Entry") { Visible = false; }
        modify("Insurance No.") { Visible = false; }
        modify("Depr. until FA Posting Date") { Visible = false; }
        modify("Depr. Acquisition Cost") { Visible = false; }
        modify("Budgeted FA No.") { Visible = false; }

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