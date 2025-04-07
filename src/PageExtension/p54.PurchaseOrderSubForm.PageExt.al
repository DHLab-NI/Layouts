pageextension 50012 PurchaseOrderSubformExt extends "Purchase Order Subform"
{
    layout
    {
        //HIDE COLUMNS

        //SHOW COLUMNS

        modify("Line Discount %") { Visible = true; }

        //REORDER AND ADD COLUMNS
        Movefirst(Control1;
        FilteredTypeField,
            "No.",
            Description,
            "Location Code",
            Quantity,
            "Unit of Measure Code",
            "Direct Unit Cost",
            "Line Discount %",
            "Line Amount",
            "Qty. to Receive",
            "Quantity Received",
            "Qty. to Invoice",
            "Quantity Invoiced",
            "Shortcut Dimension 1 Code",
            "Shortcut Dimension 2 Code",
            "Over-Receipt Quantity",
            "Over-Receipt Code",
            "Planned Receipt Date")

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