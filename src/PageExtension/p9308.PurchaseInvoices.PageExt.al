pageextension 50030 PurchaseInvoicesExt extends "Purchase Invoices"
{
    layout
    {

        //HIDE COLUMNS
        modify("Location Code") { Visible = false; }
        modify("Assigned User ID") { Visible = false; }

        //SHOW COLUMNS
        modify("Buy-from Vendor Name") { Visible = true; }
        modify("Amount") { Visible = true; }
        modify("Purchaser Code") { Visible = true; }
        modify("Document Date") { Visible = true; }
        modify("Currency Code") { Visible = true; }

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Buy-from Vendor No.")
        moveafter("Buy-from Vendor No."; "Buy-from Vendor Name")
        moveafter("Buy-from Vendor Name"; "Purchaser Code")
        moveafter("Purchaser Code"; "Document Date")
        moveafter("Document Date"; "Vendor Invoice No.")
        moveafter("Vendor Invoice No."; "Currency Code")
        moveafter("Currency Code"; "Amount")

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