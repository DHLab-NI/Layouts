pageextension 50050 CustomerCardExt extends "Customer Card"
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
        modify(BalanceAsVendor) { Visible = false; }
        modify("CustSalesLCY - CustProfit - AdjmtCostLCY") { Visible = false; }
        modify("Disable Search by Name") { Visible = false; }
        modify("Privacy Blocked") { Visible = false; }
        //Address & Contact
        modify("Format Region") { Visible = false; }
        modify("Language Code") { Visible = false; }
        //Invoicing
        modify("Prices Including VAT") { Visible = false; }
        //Payments
        modify("Fin. Charge Terms Code") { Visible = false; }
        modify("Prepayment %") { Visible = false; }

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General
        modify("Salesperson Code") { Visible = True; Importance = Standard; }
        //Invoicing
        modify("VAT Bus. Posting Group") { Visible = True; Importance = Standard; }
        modify("Currency Code") { Visible = True; Importance = Standard; }
        //Shipping
        modify("Shipping Agent Code") { Visible = True; Importance = Standard; }
        modify("Shipping Agent Service Code") { Visible = True; Importance = Standard; }

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //Invoicing
        modify(GLN) { Visible = True; Importance = Additional; }
        modify("Use GLN in Electronic Document") { Visible = True; Importance = Additional; }
        modify("Registration Number") { Visible = True; Importance = Additional; }
        modify("Copy Sell-to Addr. to Qte From") { Visible = True; Importance = Additional; }
        //Shipping
        modify("Base Calendar Code") { Visible = True; Importance = Additional; }
        modify("Customized Calendar") { Visible = True; Importance = Additional; }
        modify(Reserve) { Visible = True; Importance = Additional; }

        //ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;
        addafter("Salesperson Code")
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = Basic, Suite;
                Visible = True;
                Importance = Standard;
            }
        }
    }

    actions
    {
    }

    var
}
