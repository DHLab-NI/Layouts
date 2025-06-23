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
        addafter(Status)
        {
            field("On Hold"; Rec."On Hold")
            {
                Visible = true;
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("On Hold")
        {
            field("Created By"; CreatorUserName)
            {
                Visible = true;
                Importance = Standard;
                ApplicationArea = All;
                Editable = false;
            }
        }
        addafter("Created By")
        {
            field("Modified By"; ModifiedUserName)
            {
                Visible = true;
                Importance = Standard;
                ApplicationArea = All;
                Editable = false;
            }
        }
        addafter("Currency Code")
        {
            field("Currency Factor"; Rec."Currency Factor")
            {
                Visible = false;
                Importance = Additional;
                ApplicationArea = All;
                Editable = false;
            }
        }

        modify("Posting Date") { Importance = Standard; }
        modify("Order Date") { Importance = Promoted; }
        modify("Due Date") { Importance = Additional; }
        modify("Sell-to Contact No.") { Importance = Standard; }
        modify("Sell-to Contact") { Importance = Standard; }
        moveafter("Sell-to Contact No."; "Sell-to Contact")

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
        modify("No.") { Visible = True; Importance = Additional; } // ALLOWS JESSICA TO SET CONTRACT ORDER NO. - REMOVE AFTER SERVICE IMPLEMENTS SOLARVISTA
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

        // SHOW RED ASTERISK;

        modify("Shortcut Dimension 1 Code") { ShowMandatory = true; }
        modify("Shortcut Dimension 2 Code") { ShowMandatory = true; }

        // MOVE FIELDs / CHANGE ORDER
        moveafter("Salesperson Code"; "Shortcut Dimension 1 Code")
        moveafter("Salesperson Code"; "Shortcut Dimension 2 Code")
    }

    actions
    {

    }

    var
        CreatorUserName: Text[100];
        ModifiedUserName: Text[100];


    trigger OnAfterGetRecord()
    var
        UserRec: Record User;
        SystemCreatedByText: Text;
        SystemModifiedByText: Text;
        CrGuidStartPos: Integer;
        CrGuidEndPos: Integer;
        CrGuidStr: Text[50];
        ModGuidStartPos: Integer;
        ModGuidEndPos: Integer;
        ModGuidStr: Text[50];
    begin
        Clear(CreatorUserName);
        Clear(ModifiedUserName);

        SystemCreatedByText := Rec.SystemCreatedBy;
        SystemModifiedByText := Rec.SystemModifiedBy;

        // Find the position of the opening and closing brace
        CrGuidStartPos := StrPos(SystemCreatedByText, '{');
        CrGuidEndPos := StrPos(SystemCreatedByText, '}');
        ModGuidStartPos := StrPos(SystemModifiedByText, '{');
        ModGuidEndPos := StrPos(SystemModifiedByText, '}');

        if (ModGuidStartPos > 0) and (ModGuidEndPos > ModGuidStartPos) then begin
            // Extract the GUID substring
            ModGuidStr := CopyStr(SystemModifiedByText, ModGuidStartPos + 1, ModGuidEndPos - ModGuidStartPos - 1);

            // Try to get the user
            if UserRec.Get(ModGuidStr) then
                ModifiedUserName := UserRec."User Name";
        end;

        if (CrGuidStartPos > 0) and (CrGuidEndPos > CrGuidStartPos) then begin
            // Extract the GUID substring
            CrGuidStr := CopyStr(SystemCreatedByText, CrGuidStartPos + 1, CrGuidEndPos - CrGuidStartPos - 1);

            // Try to get the user
            if UserRec.Get(CrGuidStr) then
                CreatorUserName := UserRec."User Name";
        end;
    end;
}
