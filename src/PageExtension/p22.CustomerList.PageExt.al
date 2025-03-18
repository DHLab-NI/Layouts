pageextension 50005 CustomerListExt extends "Customer List"
{
    layout
    {

        //HIDE COLUMNS

        modify("Responsibility Center") { Visible = false; }
        modify("Location Code") { Visible = false; }
        modify("Balance Due (LCY)") { Visible = false; }
        modify("Payments (LCY)") { Visible = false; }

        //SHOW COLUMNS


        modify("Balance (LCY)") { Visible = true; }
        modify("Currency Code") { Visible = true; }


        //REORDER AND ADD COLUMNS

        moveafter("No."; "Name")
        addafter("Name")
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Global Dimension 1 Code"; "Currency Code")
        moveafter("Currency Code"; "Balance (LCY)")
        moveafter("Balance (LCY)"; "Phone No.")
        moveafter("Phone No."; "Contact")
        moveafter("Contact"; "Sales (LCY)")
        addafter("Sales (LCY)")
        {
            field("No. of Invoices"; Rec."No. of Invoices")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("No. of Invoices")
        {
            field("Outstanding Orders"; Rec."Outstanding Orders")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Outstanding Orders")
        {
            field("Outstanding Orders (LCY)"; Rec."Outstanding Orders (LCY)")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Outstanding Orders (LCY)")
        {
            field("No. of Orders"; Rec."No. of Orders")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Name";
        }
    }

    actions
    {
    }

    var

}
