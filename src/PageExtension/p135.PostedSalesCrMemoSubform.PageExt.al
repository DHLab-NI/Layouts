pageextension 50073 PostedSalesCrMemoSubformExt extends "Posted Sales Cr. Memo Subform"
{
    layout
    {
        //HIDE COLUMNS
        modify("Item Reference No.") { Visible = false; }
        modify("Deferral Code") { Visible = false; }

        //SHOW COLUMNS

        //REORDER AND ADD COLUMNS
        moveafter(FilteredTypeField; "No.")
        moveafter("No."; "Description")
        moveafter("Description"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
        addafter("Shortcut Dimension 2 Code")
        {
            field("Work Type Code"; Rec."Work Type Code")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Work Type Code")
        {
            field("Location Code"; Rec."Location Code")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Location Code"; "Quantity")
        moveafter("Quantity"; "Unit of Measure Code")
        moveafter("Unit of Measure Code"; "Unit Price")
        moveafter("Unit Price"; "Line Discount %")
        moveafter("Line Discount %"; "Line Amount")
        moveafter("Line Amount"; "VAT Bus. Posting Group")
        moveafter("VAT Bus. Posting Group"; "VAT Prod. Posting Group")

        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Description";
        }
    }

    actions
    {
    }

    var

}