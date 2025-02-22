pageextension 50021 PostedPurchaseReceiptsExt extends "Posted Purchase Receipts"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //

        //SHOW COLUMNS

        //
        //
        //
        modify("Buy-from Vendor Name") { Visible = true; }
        modify("Posting Date") { Visible = true; }
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Posting Date")
        moveafter("Posting Date"; "Buy-from Vendor No.")
        moveafter("Buy-from Vendor No."; "Buy-from Vendor Name")
        moveafter("Buy-from Vendor Name"; "Location Code")
        addafter("Location Code")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Order No.")
        {
            field("On Hold"; Rec."On Hold")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("On Hold"; "No. Printed")
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Buy-from Vendor Name";
        }
    }

    actions
    {
    }

    var

}

