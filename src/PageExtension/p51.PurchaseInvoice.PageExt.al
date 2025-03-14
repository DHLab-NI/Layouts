pageextension 50058 PurchaseInvoiceExt extends "Purchase Invoice"
{
    layout
    {
        //  NOTES:
        //  Importance:
        //      Standard: Displays the field on the page by default. 
        //      Additional: Show more to display the field.
        //      Promoted: Displays the field on the page and also in the header of the FastTab when the FastTab is collapsed.
        //  ShowMandatory: turns on red asterisk
        //  Visible: false removes it from display anywhere

        //REMOVE FIELDS: Visible = false;
        // General

        modify("Campaign No.") { Visible = false; }

        //Address & Contact
        //Invoice Details
        modify("Prices Including VAT") { Visible = false; }
        modify("Expected Receipt Date") { Visible = false; }
        //Payments

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General
        modify("Posting Date") { Importance = Promoted; }
        modify("Shortcut Dimension 1 Code") { Importance = Promoted; }
        modify("Shortcut Dimension 2 Code") { Importance = Promoted; }
        modify("Purchaser Code") { Importance = Promoted; }
        // Shipping & Billing
        //Shipping

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //General
        //Invoice Details
        modify("Payment Discount %") { Visible = True; Importance = Additional; }

        // ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;

        // MOVE FIELDs / CHANGE ORDER
        moveafter("Purchaser Code"; "Shortcut Dimension 1 Code")
        moveafter("Purchaser Code"; "Shortcut Dimension 2 Code")
    }

    actions
    {
    }

    var
}
