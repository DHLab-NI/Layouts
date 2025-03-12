pageextension 50020 PostedSalesInvoicesExt extends "Posted Sales Invoices"
{
    layout
    {

        //HIDE COLUMNS

        //
        modify("Due Date") { Visible = false; }
        modify("Amount Including VAT") { Visible = false; }
        //

        //SHOW COLUMNS

        //
        modify("Amount") { Visible = true; }
        modify("Closed") { Visible = true; }
        modify("Cancelled") { Visible = true; }
        modify("Corrective") { Visible = true; }
        modify("Posting Date") { Visible = true; }
        //

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Sell-to Customer Name")
        moveafter("Sell-to Customer Name"; "Document Date")
        moveafter("Posting Date"; "Currency Code")
        moveafter("Currency Code"; "Amount")
        moveafter("Amount"; "Remaining Amount")
        moveafter("Remaining Amount"; "Location Code")
        moveafter("Location Code"; "No. Printed")
        moveafter("No. Printed"; "Closed")
        moveafter("Closed"; "Cancelled")
        moveafter("Cancelled"; "Corrective")
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
            FreezeColumn = "Sell-to Customer Name";
        }
    }

    actions
    {
    }

    var

}