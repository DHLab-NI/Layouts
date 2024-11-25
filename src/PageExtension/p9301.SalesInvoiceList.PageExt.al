pageextension 50027 SalesInvoiceListExt extends "Sales Invoice List"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        modify("External Document No.") { Visible = false; }
        //
        //
        modify("Location Code") { Visible = false; }
        //
        modify("Due Date") { Visible = false; }
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
        //

        //SHOW COLUMNS

        //
        //
        //
        //
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

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Sell-to Customer No.")
        moveafter("Sell-to Customer No."; "Sell-to Customer Name")
        moveafter("Sell-to Customer Name"; "Posting Date")
        moveafter("Posting Date"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Currency Code")
        moveafter("Currency Code"; "Amount")
        moveafter("Amount"; "Sell-to Contact")
        moveafter("Sell-to Contact"; "Assigned User ID")
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
            FreezeColumn = "Posting Date";
        }
    }

    actions
    {
    }

    var

}

