pageextension 50071 SalesCreditMemoExt extends "Sales Credit Memo"
{
    layout
    {

        modify("Salesperson Code")
        {
            Importance = Standard;
        }
        modify("Shortcut Dimension 1 Code")
        {
            ShowMandatory = true;
            Visible = true;
        }
        modify("Shortcut Dimension 2 Code")
        {
            ShowMandatory = true;
            Visible = true;
        }

        // MOVE FIELDs / CHANGE ORDER
        moveafter("Salesperson Code"; "Shortcut Dimension 1 Code")
        moveafter("Salesperson Code"; "Shortcut Dimension 2 Code")

        // ADD FIELDS NOT ON ORIGINAL FORM:  Visible = True; Importance = Standard/Additional;
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


    }

    actions
    {

    }

    var

}
