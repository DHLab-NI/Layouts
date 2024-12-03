pageextension 50004 PostedPurchRcptLinesExt extends "Posted Purchase Receipt Lines"
{
    layout
    {

        //HIDE COLUMNS

        modify("Prod. Order No.") { Visible = false; }
        modify("Quantity Invoiced") { Visible = false; }


        //SHOW COLUMNS

        modify("Order No.")
        {
            Visible = true;
            DrillDownPageId = "Purchase Order";
        }


        //REORDER AND ADD COLUMNS

        addafter("Document No.")
        {
            field("Posting Date"; Rec."Posting Date")
            {
                ApplicationArea = Planning;
                ToolTip = 'Specifies the Posting Date of the Posted Purchase Receipt';
            }
        }
        moveafter("Posting Date"; "Order No.")
        moveafter("Order No."; "No.")
        moveafter("No."; Description)
        moveafter(Description; "Location Code")
        moveafter("Location Code"; Quantity)
        moveafter(Quantity; "Unit of Measure Code")

        //SGH Moved Sales Order No. and Sales Line Order No to PO Consol Req extension

        moveafter("Unit of Measure Code"; "Buy-from Vendor No.")


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Description";
        }
    }

    actions
    {
    }

    var
}