pageextension 50007 VendorListExt extends "Vendor List"
{
    layout
    {

        //HIDE COLUMNS

        modify("Location Code") { Visible = false; }
        modify("Search Name") { Visible = false; }

        //SHOW COLUMNS

        //
        modify("Balance (LCY)") { Visible = true; }
        modify("Currency Code") { Visible = true; }
        //

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Name")
        moveafter("Name"; "Responsibility Center")
        moveafter("Responsibility Center"; "Phone No.")
        moveafter("Phone No."; "Contact")
        moveafter("Contact"; "Currency Code")
        addafter("Currency Code")
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
        moveafter("Outstanding Orders (LCY)"; "Balance (LCY)")
        moveafter("Balance (LCY)"; "Balance Due (LCY)")
        moveafter("Balance Due (LCY)"; "Payments (LCY)")


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
