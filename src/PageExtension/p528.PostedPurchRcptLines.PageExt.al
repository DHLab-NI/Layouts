pageextension 50004 PostedPurchRcptLinesExt extends "Posted Purchase Receipt Lines"
{
    layout
    {

        //HIDE COLUMNS

        modify("Prod. Order No.") { Visible = false; }
        modify("Quantity Invoiced") { Visible = false; }


        //SHOW COLUMNS

        modify("Order No.")
        {
            Visible = true;
            DrillDownPageId = "Purchase Order";
        }


        //REORDER AND ADD COLUMNS

        addafter("Document No.")
        {
            field("Posting Date"; Rec."Posting Date")
            {
                ApplicationArea = Planning;
                ToolTip = 'Specifies the Posting Date of the Posted Purchase Receipt';
            }
        }
        moveafter("Posting Date"; "Order No.")
        moveafter("Order No."; "No.")
        moveafter("No."; Description)
        moveafter(Description; "Location Code")
        moveafter("Location Code"; Quantity)
        moveafter(Quantity; "Unit of Measure Code")
        addafter("Unit of Measure Code")
        {
            field("Sales Order No."; Rec."Sales Order No.")
            {
                ApplicationArea = Planning;
                Caption = 'Sales Order No.';
                ToolTip = 'Specifies the source Sales Order Number';

                // Open sales order on drilldown
                DrillDown = true;
                trigger OnDrillDown()
                var
                    SOPage: Page "Sales Order";
                    SalesOrder: Record "Sales Header";

                begin
                    SalesOrder.SetRange("No.", rec."Sales Order No.");
                    SalesOrder.FindFirst();
                    SOPage.SetRecord(SalesOrder);
                    SOPage.Run();
                end;
            }
        }
        addafter("Sales Order No.")
        {
            field("Sales Order Line No."; Rec."Sales Order Line No.")
            {
                ApplicationArea = Planning;
                Caption = 'Sales Order Line No.';
                ToolTip = 'Specifies the source Sales Order Line Number';
            }
        }
        moveafter("Sales Order Line No."; "Buy-from Vendor No.")


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