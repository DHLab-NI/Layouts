pageextension 50076 CustomerLookupExt extends "Customer Lookup"
{
    layout
    {

        //HIDE COLUMNS

        modify("Responsibility Center") { Visible = false; }
        modify("Location Code") { Visible = false; }
        modify(Contact) { Visible = false; }
        modify("Salesperson Code") { Visible = false; }
        modify("Phone No.") { Visible = false; }

        //SHOW COLUMNS

        modify("Currency Code") { Visible = true; }


        //REORDER AND ADD COLUMNS

        addafter(Address)
        {
            field("Sales (LCY)"; Rec."Sales (LCY)")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Sales (LCY)")
        {
            field("Outstanding Orders"; Rec."Outstanding Orders")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Outstanding Orders")
        {
            field("Balance (LCY)"; Rec."Balance (LCY)")
            {
                ApplicationArea = Basic, Suite;
            }
        }

        //Specify position of freeze column
        modify(Group)
        {
            FreezeColumn = "Name";
        }
    }

    actions
    {
    }

    var

}
