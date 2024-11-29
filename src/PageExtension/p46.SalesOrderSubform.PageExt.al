pageextension 50010 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        modify("Qty. to Assemble to Order") { Visible = false; }
        modify("Reserved Quantity") { Visible = false; }
        //
        //
        //
        //
        //
        //
        //
        //
        modify("Qty. to Assign") { Visible = false; }
        modify("Item Charge Qty. to Handle") { Visible = false; }
        modify("Qty. Assigned") { Visible = false; }
        //
        modify("Planned Shipment Date") { Visible = false; }
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
        modify("Description") { Visible = true; }
        //
        //
        //
        //
        //
        //
        //
        modify("Line Discount %") { Visible = true; }
        modify("Line Amount") { Visible = true; }
        //
        //
        //
        //
        //
        modify("Drop Shipment") { Visible = true; }
        //
        //
        //
        //

        //REORDER AND ADD COLUMNS

        movefirst(Control1; FilteredTypeField, "No.", "Description", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code",
                    "Location Code", Quantity, "Work Type Code", "Unit of Measure Code", "Unit Price", "Line Discount %",
                    "Line Amount", "Qty. to Ship", "Quantity Shipped", "Qty. to Invoice", "Quantity Invoiced",
                    "Purchasing Code", "Drop Shipment", "Planned Delivery Date", "Shipment Date")

        addafter("Purchasing Code")
        {
            field("Purchase Order No."; Rec."Purchase Order No.")
            {
                ApplicationArea = Basic, Suite;
                Visible = True;
                Importance = Standard;

                // Open Purchase Order order on drilldown
                DrillDown = true;
                trigger OnDrillDown()
                var
                    POPage: Page "Purchase Order";
                    PurchaseOrder: Record "Purchase Header";

                begin
                    PurchaseOrder.SetRange("No.", rec."Purchase Order No.");
                    PurchaseOrder.FindFirst();
                    POPage.SetRecord(PurchaseOrder);
                    POPage.Run();
                end;
            }
        }

        addafter("Purchase Order No.")
        {
            field("Purch. Order Line No."; Rec."Purch. Order Line No.")
            {
                ApplicationArea = Basic, Suite;
                Visible = True;
                Importance = Standard;
            }
        }

        /*        moveafter(FilteredTypeField; "No.")
                moveafter("No."; "Description")
                moveafter("Description"; "Shortcut Dimension 1 Code")
                moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
                moveafter("Shortcut Dimension 2 Code"; "Location Code")
                moveafter("Location Code"; "Quantity")
                moveafter("Quantity"; "Work Type Code")
                moveafter("Work Type Code"; "Unit of Measure Code")
                moveafter("Unit of Measure Code"; "Unit Price")
                moveafter("Unit Price"; "Line Discount %")
                moveafter("Line Discount %"; "Line Amount")
                moveafter("Line Amount"; "Qty. to Ship")
                moveafter("Qty. to Ship"; "Quantity Shipped")
                moveafter("Quantity Shipped"; "Qty. to Invoice")
                moveafter("Qty. to Invoice"; "Quantity Invoiced")
                moveafter("Quantity Invoiced"; "Purchasing Code")
                moveafter("Purchasing Code"; "Drop Shipment")
                moveafter("Drop Shipment"; "Planned Delivery Date")
                moveafter("Planned Delivery Date"; "Shipment Date") */
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