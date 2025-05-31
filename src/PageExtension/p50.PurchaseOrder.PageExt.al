pageextension 50054 PurchaseOrderExt extends "Purchase Order"
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
        addafter("Purchaser Code")
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
        addafter("Your Reference")
        {
            field("Vendor Authorization No."; Rec."Vendor Authorization No.")
            {
                Visible = true;
                Importance = Standard;
                ApplicationArea = All;
                Editable = true;
            }
        }
        //Address & Contact
        modify("Invoice Received Date") { Visible = false; }
        modify("Quote No.") { Visible = false; }
        //Invoice Details
        modify("Prices Including VAT") { Visible = false; }
        //Payments
        modify("Prepayment %") { Visible = false; }

        //SHOW FIELDS BY DEFAULT: Visible = True; Importance = Standard;
        // General
        modify("Posting Date") { Importance = Promoted; }
        modify("Order Date") { Importance = Promoted; }
        modify("Shortcut Dimension 1 Code") { Importance = Promoted; }
        modify("Shortcut Dimension 2 Code") { Importance = Promoted; }
        modify("Purchaser Code") { Importance = Promoted; }
        modify("Your Reference") { Importance = Promoted; }
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
