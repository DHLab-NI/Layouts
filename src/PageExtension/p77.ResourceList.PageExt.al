pageextension 50014 ResourceListExt extends "Resource List"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        modify("Price/Profit Calculation") { Visible = false; }
        modify("Profit %") { Visible = false; }
        //
        //
        modify("Search Name") { Visible = false; }
        modify("Default Deferral Template Code") { Visible = false; }
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

        //SHOW COLUMNS

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
        //
        //

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Type")
        moveafter("Type"; "Name")
        moveafter("Name"; "Base Unit of Measure")
        moveafter("Base Unit of Measure"; "Resource Group No.")
        addafter("Resource Group No.")
        {
            field("Capacity"; Rec."Capacity")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Specifies the Capacity for the Resource';
            }
        }
        moveafter("Capacity"; "Unit Cost")
        addafter("Unit Cost")
        {
            field("Qty. on Service Order"; Rec."Qty. on Service Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Specifies the Qty. on Service Order for the Resource';
            }
        }
        moveafter("Qty. on Service Order"; "Unit Price")
        moveafter("Unit Price"; "Gen. Prod. Posting Group")
        addafter("Gen. Prod. Posting Group")
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Specifies the Global Dimension 1 Code for the Resource';
            }
        }
        addafter("Global Dimension 1 Code")
        {
            field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Specifies the Global Dimension 2 Code for the Resource';
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