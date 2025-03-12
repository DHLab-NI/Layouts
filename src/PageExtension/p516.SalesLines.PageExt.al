pageextension 50024 SalesLinesExt extends "Sales Lines"
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
        modify("Reserve") { Visible = false; }
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

        //SHOW COLUMNS

        //
        //
        //
        //
        modify("Description") { Visible = true; }
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

        moveafter("Document No."; "No.")
        moveafter("No."; "Document Type")
        moveafter("Document Type"; "Type")
        moveafter("Type"; "Description")
        moveafter("Description"; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Location Code")
        moveafter("Location Code"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Quantity")
        moveafter("Quantity"; "Outstanding Quantity")
        addafter("Outstanding Quantity")
        {
            field("Qty. Shipped Not Invoiced"; Rec."Qty. Shipped Not Invoiced")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Qty. Shipped Not Invoiced"; "Line Amount")
        addafter("Line Amount")
        {
            field("Promised Delivery Date"; Rec."Promised Delivery Date")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Promised Delivery Date"; "Shipment Date")
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

