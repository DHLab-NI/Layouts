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

            trigger OnDrillDown()

            var
                POPage: Page "Purchase Order";
                POArchivePage: Page "Purchase Order Archive";
                PurchOrder: Record "Purchase Header";
                PurchaseOrderArchive: Record "Purchase Header Archive";

            begin
                PurchOrder.SetRange("No.", rec."Order No.");
                PurchaseOrderArchive.SetRange("No.", rec."Order No.");
                PurchaseOrderArchive.SetAscending("Version No.", false);

                If PurchOrder.FindFirst() then begin
                    POPage.SetRecord(PurchOrder);
                    POPage.Run();
                end else if PurchaseOrderArchive.FindFirst() then begin
                    POArchivePage.SetRecord(PurchaseOrderArchive);
                    POArchivePage.Run();
                end else
                    Message('Purchase order %1 not found', rec."Order No.");
            end;
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

        //SGH Moved Sales Order No. and Sales Line Order No to PO Consol Req extension

        moveafter("Unit of Measure Code"; "Buy-from Vendor No.")


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