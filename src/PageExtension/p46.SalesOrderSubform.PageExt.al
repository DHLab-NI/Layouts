pageextension 50010 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        //HIDE COLUMNS
        modify("Qty. to Assemble to Order") { Visible = false; }
        modify("Reserved Quantity") { Visible = false; }
        modify("Qty. to Assign") { Visible = true; }
        modify("Item Charge Qty. to Handle") { Visible = false; }
        modify("Qty. Assigned") { Visible = false; }
        modify("Planned Shipment Date") { Visible = false; }
        modify("Drop Shipment") { Visible = false; }

        //SHOW COLUMNS
        //modify("Description") { Visible = true; }
        modify("Line Discount %") { Visible = true; }
        //modify("Line Amount") { Visible = true; }

        //REORDER AND ADD COLUMNS

        movefirst(Control1; FilteredTypeField, "No.", "Description", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code",
                    "Location Code", Quantity, "Work Type Code", "Unit of Measure Code", "Unit Price", "Line Discount %",
                    "Line Amount", "Qty. to Ship", "Quantity Shipped", "Qty. to Invoice", "Quantity Invoiced", "Qty. to Assign",
                    "Purchasing Code", "Drop Shipment", "Planned Delivery Date", "Shipment Date")

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