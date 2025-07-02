pageextension 50025 PurchaseLinesExt extends "Purchase Lines"
{
    layout
    {
        //HIDE COLUMNS
        modify("Reserved Qty. (Base)") { Visible = false; }
        modify("Document Type") { Visible = false; }
        modify("Direct Unit Cost") { Visible = false; }

        //SHOW COLUMNS
        modify("Description") { Visible = true; }
        modify("Buy-from Vendor No.") { Visible = true; }

        //REORDER AND ADD COLUMNS

        movefirst(Control1;
        "Buy-from Vendor No.",
        "Document Type",
        "Document No.",
        "No.",
        "Description",
        "Type",
        "Location Code",
        "Quantity",
        "Outstanding Quantity",
        "Unit of Measure Code",
        "Expected Receipt Date",
        "Direct Unit Cost",
        "Line Amount"
        )

        addafter("Document No.")
        {
            field(HeaderDocumentDate; HeaderDocumentDate)
            {
                ApplicationArea = All;
                Caption = 'Document Date';
            }
        }

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
        HeaderDocumentDate: Date;
        PurchaseHeader: Record "Purchase Header";

    trigger OnAfterGetRecord()
    begin
        if PurchaseHeader.Get(Rec."Document Type", Rec."Document No.") then
            HeaderDocumentDate := PurchaseHeader."Document Date"
        else
            HeaderDocumentDate := 0D;
    end;
}