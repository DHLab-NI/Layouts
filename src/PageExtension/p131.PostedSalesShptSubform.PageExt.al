pageextension 50016 PostedSalesShptSubformExt extends "Posted Sales Shpt. Subform"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        modify("Item Reference No.") { Visible = false; }
        //
        //
        //
        //
        modify("Quantity Invoiced") { Visible = false; }
        modify("Planned Delivery Date") { Visible = false; }
        modify("Planned Shipment Date") { Visible = false; }
        modify("Shipment Date") { Visible = false; }
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

        //REORDER AND ADD COLUMNS

        moveafter("Type"; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        addafter("Unit of Measure Code")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
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
            FreezeColumn = "Description";
        }
    }

    actions
    {
    }

    var

}

