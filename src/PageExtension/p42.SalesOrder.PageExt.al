pageextension 50053 SalesOrderExt extends "Sales Order"
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

        //Address & Contact
        modify("Format Region") { Visible = false; }
        modify("Language Code") { Visible = false; }
        //Invoice Details
        modify("Prices Including VAT") { Visible = false; }
        modify("Direct Debit Mandate ID") { Visible = false; }
        //Payments
        modify("Prepayment %") { Visible = false; }

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General
        modify("Salesperson Code") { Visible = True; Importance = Standard; }
        modify(WorkDescription) { Visible = True; Importance = Standard; }
        // Shipping & Billing
        modify("Shipment Method") { Visible = True; }
        //Shipping
        modify("Shipping Agent Code") { Visible = True; Importance = Standard; }
        modify("Shipping Agent Service Code") { Visible = True; Importance = Standard; }

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //General
        modify("Requested Delivery Date") { Visible = True; Importance = Additional; }
        modify("VAT Reporting Date") { Visible = True; Importance = Additional; }
        //Invoice Details
        modify("EU 3-Party Trade") { Visible = True; Importance = Additional; }
        modify("Payment Discount %") { Visible = True; Importance = Additional; }

        // ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;

        // MOVE FIELDs / CHANGE ORDER
        moveafter("Salesperson Code"; "Shortcut Dimension 1 Code")
        moveafter("Salesperson Code"; "Shortcut Dimension 2 Code")
    }

    actions
    {
    }

    var
}
