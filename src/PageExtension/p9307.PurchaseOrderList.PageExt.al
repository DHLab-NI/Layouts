pageextension 50029 PurchaseOrderListExt extends "Purchase Order List"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        modify("Vendor Authorization No.") { Visible = false; }
        modify("Location Code") { Visible = false; }
        modify("Assigned User ID") { Visible = false; }
        //
        //
        //
        modify("Amount Including VAT") { Visible = false; }
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
        modify("Buy-from Vendor Name") { Visible = true; }
        //
        //
        //
        modify("Amount") { Visible = true; }
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

        moveafter("No."; "Buy-from Vendor No.")
        moveafter("Buy-from Vendor No."; "Buy-from Vendor Name")
        moveafter("Buy-from Vendor Name"; "Document Date")
        moveafter("Document Date"; "Status")
        moveafter("Status"; "Currency Code")
        moveafter("Currency Code"; "Amount")
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


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Buy-from Vendor Name";
        }
    }

    actions
    {
    }

    var

}

