pageextension 50013 PurchaseInvoiceSubformExt extends "Purch. Invoice Subform"
{
    layout
    {
        //HIDE COLUMNS
        modify("Qty. to Assign") { Visible = false; }
        modify("Qty. Assigned") { Visible = false; }

        //SHOW COLUMNS
        modify("Description") { Visible = true; }
        modify("Direct Unit Cost") { Visible = true; }
        modify("Line Amount") { Visible = true; }

        //REORDER AND ADD COLUMNS
        moveafter(FilteredTypeField; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Direct Unit Cost")
        moveafter("Direct Unit Cost"; "Line Discount %")
        moveafter("Line Discount %"; "Line Amount")

        //Specify position of freeze column
        modify(PurchDetailLine)
        {
            FreezeColumn = "Description";
        }
    }

    actions
    {
    }

    var

}
