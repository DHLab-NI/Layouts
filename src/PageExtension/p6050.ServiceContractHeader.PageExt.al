pageextension 50031 ServiceContractHeaderExt extends "Service Contract"
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

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //General
        modify("Contact No.") { Visible = True; Importance = Additional; }
        modify("Address") { Visible = True; Importance = Additional; }
        modify("Address 2") { Visible = True; Importance = Additional; }
        modify("City") { Visible = True; Importance = Additional; }
        modify("County") { Visible = True; Importance = Additional; }
        modify("Post Code") { Visible = True; Importance = Additional; }
        modify("Country/Region Code") { Visible = True; Importance = Additional; }
        modify("Phone No.") { Visible = True; Importance = Additional; }
        modify("E-Mail") { Visible = True; Importance = Additional; }
        modify("Responsibility Center") { Visible = True; Importance = Additional; }
        modify("Contract Group Code") { Visible = True; Importance = Additional; }
        modify("Salesperson Code") { Visible = True; Importance = Additional; }
        //Shipping
        modify("Ship-to Name") { Visible = True; Importance = Additional; }
        modify("Ship-to Address") { Visible = True; Importance = Additional; }
        modify("Ship-to Address 2") { Visible = True; Importance = Additional; }
        modify("Ship-to County") { Visible = True; Importance = Additional; }
        modify("Ship-to Post Code") { Visible = True; Importance = Additional; }
        modify("Ship-to City") { Visible = True; Importance = Additional; }
        modify("Ship-to Country/Region Code") { Visible = True; Importance = Additional; }
        //Service
        modify("Service Zone Code") { Visible = True; Importance = Additional; }
        modify("Response Time (Hours)") { Visible = True; Importance = Additional; }
        modify("Service Order Type") { Visible = True; Importance = Additional; }
        //Invoicing
        modify("Bill-to Contact") { Visible = True; Importance = Additional; }
        modify("Bill-to Customer No.") { Visible = True; Importance = Additional; }
        modify("Bill-to Name") { Visible = True; Importance = Additional; }
        modify("Bill-to Contact No.") { Visible = True; Importance = Additional; }
        modify("Bill-to Address") { Visible = True; Importance = Additional; }
        modify("Bill-to Address 2") { Visible = True; Importance = Additional; }
        modify("Bill-to City") { Visible = True; Importance = Additional; }
        modify("Bill-to County") { Visible = True; Importance = Additional; }
        modify("Bill-to Post Code") { Visible = True; Importance = Additional; }
        modify("Bill-to Country/Region Code") { Visible = True; Importance = Additional; }
        //Invoice Details
        modify("Automatic Credit Memos") { Visible = True; Importance = Additional; }
        modify("Combine Invoices") { Visible = True; Importance = Additional; }
        modify("Contract Lines on Invoice") { Visible = True; Importance = Additional; }
        modify("No. of Unposted Invoices") { Visible = True; Importance = Additional; }
        modify("No. of Unposted Credit Memos") { Visible = True; Importance = Additional; }
        modify("No. of Posted Invoices") { Visible = True; Importance = Additional; }
        modify("No. of Posted Credit Memos") { Visible = True; Importance = Additional; }
        modify("Allow Unbalanced Amounts") { Visible = True; Importance = Additional; }

        //ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;

        //Move fields to Invoicing Section
        moveafter("Payment Terms Code"; InvoicePeriod, Prepaid, "Invoice after Service")

        //Specficy order of sections
        movefirst(content;
        Control1,
        Service,
        Invoicing,
        Shipping,
        ServContractLines,
        "Invoice Details",
        Details,
        "Price Update"
        )
    }

    actions
    {
    }

    var
}
