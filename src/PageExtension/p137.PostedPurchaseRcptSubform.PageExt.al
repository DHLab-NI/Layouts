pageextension 50018 PostedPurchaseRcptSubformExt extends "Posted Purchase Rcpt. Subform"
{
    layout
    {
        //HIDE COLUMNS

        modify("Planned Receipt Date") { Visible = false; }
        modify("Expected Receipt Date") { Visible = false; }

        //SHOW COLUMNS

        //REORDER AND ADD COLUMNS

        moveafter(FilteredTypeField; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Item Reference No.")
        moveafter("Item Reference No."; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Quantity Invoiced")
        moveafter("Quantity Invoiced"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Order Date")

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
