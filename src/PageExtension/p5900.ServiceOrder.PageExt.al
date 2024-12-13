pageextension 50032 ServiceOrderHeaderExt extends "Service Order"
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
        modify("Name") { Visible = True; Importance = Additional; }
        modify("Address") { Visible = True; Importance = Additional; }
        modify("City") { Visible = True; Importance = Additional; }
        modify("County") { Visible = True; Importance = Additional; }
        modify("Post Code") { Visible = True; Importance = Additional; }
        modify("Country/Region Code") { Visible = True; Importance = Additional; }
        modify("Contact Name") { Visible = True; Importance = Additional; }
        modify("Phone No.") { Visible = True; Importance = Additional; }
        modify("E-Mail") { Visible = True; Importance = Additional; }
        modify("Service Order Type") { Visible = True; Importance = Additional; }
        modify("Response Date") { Visible = True; Importance = Additional; }
        modify("Response Time") { Visible = True; Importance = Additional; }
        modify("Priority") { Visible = True; Importance = Additional; }
        modify("Salesperson Code") { Visible = True; Importance = Additional; }
    }

    actions
    {
    }

    var
}
