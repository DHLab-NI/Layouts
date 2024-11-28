pageextension 50052 ItemCardExt extends "Item Card"
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
        // Item
        modify("Common Item No.") { Visible = false; }
        modify("Purchasing Code") { Visible = false; }
        modify(VariantMandatoryDefaultYes) { Visible = false; }
        //Inventory
        modify("Qty. on Prod. Order") { Visible = false; }
        modify("Qty. on Component Lines") { Visible = false; }
        modify("Qty. on Assembly Order") { Visible = false; }
        modify("Qty. on Job Order") { Visible = false; }
        modify("Qty. on Asm. Component") { Visible = false; }
        //Replenishment
        modify(Replenishment_Production) { Visible = false; }
        modify(Replenishment_Assembly) { Visible = false; }

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // Costs & Posting
        modify("VAT Prod. Posting Group") { Visible = True; Importance = Standard; }

        //SHOW FIELDS ON SHOWMORE TAB:  Visible = True; Importance = Additional;
        //Inventory
        modify("Over-Receipt Code") { Visible = True; Importance = Additional; }
        modify("Unit Volume") { Visible = True; Importance = Additional; }

        //ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;
    }

    actions
    {
    }

    var
}
