pageextension 50070 SalesInvoiceExt extends "Sales Invoice"
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
    }

    actions
    {

    }

    var

}
