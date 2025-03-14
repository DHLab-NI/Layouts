pageextension 50059 PostedSalesShipLinesExt extends "Posted Sales Shipment Lines"
{
    layout
    {

        //HIDE COLUMNS

        //
        modify("Quantity Invoiced") { Visible = false; }
        //

        //SHOW COLUMNS

        //
        //
        //
        //
        //REORDER AND ADD COLUMNS

        //

        addafter("Document No.")
        {
            field("Posting Date"; Rec."Posting Date")
            {
                Visible = true;
                ApplicationArea = All;
            }
        }
        addafter(Quantity)
        {
            field("SO Qty Shipped not invoiced"; Rec."SO Qty Shipped not invoiced")
            {
                Visible = true;
                ApplicationArea = All;
            }
        }

        addafter("Document No.")
        {
            field("Order No."; Rec."Order No.")
            {
                Visible = true;
                // Open sales order on drilldown
                DrillDown = true;
                ApplicationArea = All;
                trigger OnDrillDown()
                var
                    SOPage: Page "Sales Order";
                    SOArchivePage: Page "Sales Order Archive";
                    SalesOrder: Record "Sales Header";
                    SalesOrderArchive: Record "Sales Header Archive";

                begin
                    SalesOrder.SetRange("No.", rec."Order No.");
                    SalesOrderArchive.SetRange("No.", rec."Order No.");
                    If SalesOrder.FindFirst() then begin
                        SOPage.SetRecord(SalesOrder);
                        SOPage.Run();
                    end else if SalesOrderArchive.FindFirst() then begin
                        SOArchivePage.SetRecord(SalesOrderArchive);
                        SOArchivePage.Run();
                    end else
                        Message('Sales order %1 not found', rec."Order No.");
                end;
            }
        }
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

