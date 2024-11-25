pageextension 50025 PurchaseLinesExt extends "Purchase Lines"
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
        modify("Reserved Qty. (Base)") { Visible = false; }
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
        modify("Description") { Visible = true; }
        //
        //
        modify("Buy-from Vendor No.") { Visible = true; }
        //
        //
        //
        //
        modify("Direct Unit Cost") { Visible = true; }
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

        moveafter("Document No."; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Type")
        moveafter("Type"; "Document Type")
        moveafter("Document Type"; "Buy-from Vendor No.")
        moveafter("Buy-from Vendor No."; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Outstanding Quantity")
        moveafter("Outstanding Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Direct Unit Cost")
        moveafter("Direct Unit Cost"; "Line Amount")
        moveafter("Line Amount"; "Expected Receipt Date")
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
            FreezeColumn = "Description";
        }
    }

    actions
    {
    }

    var

}