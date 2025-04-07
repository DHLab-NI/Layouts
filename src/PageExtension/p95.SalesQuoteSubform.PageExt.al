pageextension 50015 SalesQuoteSubformExt extends "Sales Quote Subform"
{
    layout
    {
        //HIDE COLUMNS

        modify("Qty. to Assemble to Order") { Visible = false; }
        modify("Qty. to Assign") { Visible = false; }
        modify("Qty. Assigned") { Visible = false; }

        //SHOW COLUMNS

        modify("Description") { Visible = true; }
        modify("Line Discount %") { Visible = true; }
        modify("Line Amount") { Visible = true; }

        //REORDER AND ADD COLUMNS

        moveafter(FilteredTypeField; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Work Type Code")
        moveafter("Work Type Code"; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Unit Price")
        moveafter("Unit Price"; "Line Discount %")
        moveafter("Line Discount %"; "Line Amount")

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