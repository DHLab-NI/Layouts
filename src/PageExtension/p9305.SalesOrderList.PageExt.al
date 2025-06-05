pageextension 50028 SalesOrderListExt extends "Sales Order List"
{
    layout
    {

        //HIDE COLUMNS

        modify("Assigned User ID") { Visible = false; }
        modify("Amt. Ship. Not Inv. (LCY)") { Visible = false; }
        modify("Amount Including VAT") { Visible = false; }

        //SHOW COLUMNS

        modify("Document Date") { Visible = false; }
        modify("Completely Shipped") { Visible = true; }
        modify("Currency Code") { Visible = true; }
        modify("Amount") { Visible = true; }
        modify("Amt. Ship. Not Inv. (LCY) Base") { Visible = true; }
        modify("Bill-to Customer No.") { Visible = true; }
        modify("Shortcut Dimension 1 Code") { Visible = true; }
        modify("Shortcut Dimension 2 Code") { Visible = true; }

        //REORDER AND ADD COLUMNS

        addafter("No.")
        {
            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Order Date"; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Sell-to Customer Name")
        moveafter("Sell-to Customer Name"; "External Document No.")
        moveafter("External Document No."; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Location Code")
        moveafter("Location Code"; "Status")
        moveafter("Status"; "Completely Shipped")
        moveafter("Completely Shipped"; "Currency Code")
        addafter("Currency Code")
        {
            field("Currency Factor"; Rec."Currency Factor")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
        }
        moveafter("Currency Factor"; "Amount")
        moveafter("Amount"; "Amt. Ship. Not Inv. (LCY) Base")
        moveafter("Amt. Ship. Not Inv. (LCY) Base"; "Bill-to Customer No.")


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

