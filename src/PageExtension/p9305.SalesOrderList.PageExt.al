pageextension 50028 SalesOrderListExt extends "Sales Order List"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        modify("Assigned User ID") { Visible = false; }
        //
        //
        //
        //
        modify("Amt. Ship. Not Inv. (LCY)") { Visible = false; }
        //
        modify("Amount Including VAT") { Visible = false; }
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
        modify("Document Date") { Visible = true; }
        //
        //
        //
        //
        //
        //
        //
        modify("Completely Shipped") { Visible = true; }
        modify("Currency Code") { Visible = true; }
        modify("Amount") { Visible = true; }
        modify("Amt. Ship. Not Inv. (LCY) Base") { Visible = true; }
        modify("Bill-to Customer No.") { Visible = true; }
        //
        //
        //
        //
        //
        //
        //
        //

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Document Date")
        moveafter("Document Date"; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Sell-to Customer Name")
        moveafter("Sell-to Customer Name"; "External Document No.")
        moveafter("External Document No."; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Location Code")
        moveafter("Location Code"; "Status")
        moveafter("Status"; "Completely Shipped")
        moveafter("Completely Shipped"; "Currency Code")
        moveafter("Currency Code"; "Amount")
        moveafter("Amount"; "Amt. Ship. Not Inv. (LCY) Base")
        moveafter("Amt. Ship. Not Inv. (LCY) Base"; "Bill-to Customer No.")
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
            FreezeColumn = "Sell-to Customer Name";
        }
    }

    actions
    {
    }

    var

}

