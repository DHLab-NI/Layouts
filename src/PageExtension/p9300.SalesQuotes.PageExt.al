pageextension 50026 SalesQuotesExt extends "Sales Quotes"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        modify("Posting Date") { Visible = false; }
        modify("Due Date") { Visible = false; }
        modify("Requested Delivery Date") { Visible = false; }
        //
        modify("Location Code") { Visible = false; }
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
        modify("Document Date") { Visible = true; }
        //
        //
        //
        //
        //
        modify("Currency Code") { Visible = true; }
        modify("Amount") { Visible = true; }
        modify("Assigned User ID") { Visible = true; }
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
        moveafter("Sell-to Customer Name"; "Document Date")
        moveafter("Document Date"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        moveafter("Shortcut Dimension 2 Code"; "Quote Valid Until Date")
        moveafter("Quote Valid Until Date"; "External Document No.")
        moveafter("External Document No."; "Sell-to Contact")
        moveafter("Sell-to Contact"; "Currency Code")
        moveafter("Currency Code"; "Amount")
        moveafter("Amount"; "Assigned User ID")
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
            FreezeColumn = "Document Date";
        }
    }

    actions
    {
    }

    var

}
