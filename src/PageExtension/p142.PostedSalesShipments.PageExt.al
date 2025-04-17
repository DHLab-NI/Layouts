pageextension 50019 PostedSalesShipmentsExt extends "Posted Sales Shipments"
{
    layout
    {

        //HIDE COLUMNS
        modify("Currency Code") { Visible = false; }
        modify("Document Date") { Visible = false; }

        //SHOW COLUMNS
        modify("Shortcut Dimension 1 Code") { Visible = true; }
        modify("Shortcut Dimension 2 Code") { Visible = true; }
        modify("Posting Date") { Visible = true; }
        modify("Ship-to Code") { Visible = true; }
        modify("Ship-to Post Code") { Visible = true; }

        //REORDER AND ADD COLUMNS
        movefirst(Control1; "No.", "Posting Date", "Sell-to Customer No.", "Sell-to Customer Name",
        "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Ship-to Code",
        "Ship-to Post Code", "No. Printed")

        addafter("No.")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = Basic, Suite;
                // Open sales order on drilldown
                DrillDown = true;
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


        /*        moveafter("Order No."; "Document Date")
                moveafter("Document Date"; "Sell-to Customer No.")
                moveafter("Sell-to Customer No."; "Sell-to Customer Name")
                moveafter("Sell-to Customer Name"; "Shortcut Dimension 1 Code")
                moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
                moveafter("Shortcut Dimension 2 Code"; "Location Code")
                moveafter("Location Code"; "Ship-to Code")
                moveafter("Ship-to Code"; "Ship-to Post Code")
                moveafter("Ship-to Post Code"; "No. Printed")
                // */

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