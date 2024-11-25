pageextension 50019 PostedSalesShipmentsExt extends "Posted Sales Shipments"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        modify("Currency Code") { Visible = false; }
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

        addafter("No.")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Order No."; "Document Date")
        moveafter("Document Date"; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Sell-to Customer Name")
        moveafter("Sell-to Customer Name"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Location Code")
        moveafter("Location Code"; "Ship-to Code")
        moveafter("Ship-to Code"; "Ship-to Post Code")
        moveafter("Ship-to Post Code"; "No. Printed")
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
            FreezeColumn = "Sell-to Customer No.";
        }
    }

    actions
    {
    }

    var

}