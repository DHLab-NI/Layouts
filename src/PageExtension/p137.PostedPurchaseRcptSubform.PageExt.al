pageextension 50018 PostedPurchaseRcptSubformExt extends "Posted Purchase Rcpt. Subform"
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
        modify("Planned Receipt Date") { Visible = false; }
        modify("Expected Receipt Date") { Visible = false; }
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
        moveafter("Description"; "Item Reference No.")
        moveafter("Item Reference No."; "Location Code")
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Quantity Invoiced")
        addafter("Quantity Invoiced")
        {
            field("Sales Order No."; Rec."Sales Order No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Sales Order No.")
        {
            field("Sales Order Line No."; Rec."Sales Order Line No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Sales Order Line No."; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Order Date")
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
