pageextension 50012 PurchaseOrderSubformExt extends "Purchase Order Subform"
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
        Movefirst(Control1;
        FilteredTypeField,
            "No.",
            Description,
            "Location Code",
            Quantity,
            "Unit of Measure Code",
            "Direct Unit Cost",
            "Line Amount",
            "Qty. to Receive",
            "Quantity Received",
            "Qty. to Invoice",
            "Quantity Invoiced",
            "Shortcut Dimension 1 Code",
            "Shortcut Dimension 2 Code",
            "Over-Receipt Quantity",
            "Over-Receipt Code")
        /*        moveafter("Type"; "No.")
                moveafter("No."; "Description")
                moveafter("Description"; "Location Code")
                moveafter("Location Code"; "Quantity")
                moveafter("Quantity"; "Unit of Measure Code")
                moveafter("Unit of Measure Code"; "Direct Unit Cost")
                moveafter("Direct Unit Cost"; "Line Amount")
                moveafter("Line Amount"; "Qty. to Receive")
                moveafter("Qty. to Receive"; "Quantity Received")
                moveafter("Quantity Received"; "Qty. to Invoice")
                moveafter("Qty. to Invoice"; "Quantity Invoiced")
                moveafter("Quantity Invoiced"; "Shortcut Dimension 1 Code")
                moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code") */
        addafter("Shortcut Dimension 2 Code")
        {
            field("Sales Order No."; Rec."Sales Order No.")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Order No.';
            }
        }
        addafter("Sales Order No.")
        {
            field("Sales Order Line No."; Rec."Sales Order Line No.")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Order Line No.';
            }
        }
        /*        moveafter("Sales Order Line No."; "Over-Receipt Quantity")
                moveafter("Over-Receipt Quantity"; "Over-Receipt Code")
                moveafter("Over-Receipt Code"; "Planned Receipt Date") */
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