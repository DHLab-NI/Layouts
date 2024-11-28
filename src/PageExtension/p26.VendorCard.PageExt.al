pageextension 50051 VendorCardExt extends "Vendor Card"
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
        modify("IC Partner Code") { Visible = false; }
        modify(BalanceAsCustomer) { Visible = false; }
        modify("Disable Search by Name") { Visible = false; }
        modify("Privacy Blocked") { Visible = false; }
        //Address & Contact
        modify("Format Region") { Visible = false; }
        modify("Language Code") { Visible = false; }
        //Invoicing
        modify("Prices Including VAT") { Visible = false; }
        //Payments
        modify("Prepayment %") { Visible = false; }

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General
        modify("Purchaser Code") { Visible = True; Importance = Standard; }
        //Invoicing
        modify("VAT Bus. Posting Group") { Visible = True; Importance = Standard; }
        modify("Gen. Bus. Posting Group") { Visible = True; Importance = Standard; }
        modify("Vendor Posting Group") { Visible = True; Importance = Standard; }
        modify("Currency Code") { Visible = True; Importance = Standard; }
        modify("Pay-to Vendor No.") { Visible = True; Importance = Standard; }

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //Invoicing
        modify(GLN) { Visible = True; Importance = Additional; }
        modify("Price Calculation Method") { Visible = True; Importance = Additional; }
        modify("Registration Number") { Visible = True; Importance = Additional; }
        //Receiving
        modify("Base Calendar Code") { Visible = True; Importance = Additional; }
        modify("Customized Calendar") { Visible = True; Importance = Additional; }

        //ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;

    }

    actions
    {
    }

    var
}
