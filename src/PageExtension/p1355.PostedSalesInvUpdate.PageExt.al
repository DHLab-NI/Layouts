pageextension 50060 PostedSalesInvUpdateExt extends "Posted Sales Inv. - Update"
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

        modify("Your Reference") { Importance = Additional; }
        //ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;
        addafter("Your Reference")
        {
            field("External Document No."; Rec."External Document No.")
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
