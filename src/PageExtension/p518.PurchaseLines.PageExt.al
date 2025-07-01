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
            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = All;
                Caption = 'Order Date';
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
}