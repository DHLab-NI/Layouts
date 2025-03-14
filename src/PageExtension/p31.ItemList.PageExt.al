pageextension 50009 ItemListExt extends "Item List"
{
    layout
    {

        //HIDE COLUMNS

        modify("Assembly BOM") { Visible = false; }
        modify("Reverse Charge Applies") { Visible = false; }
        modify("Default Deferral Template Code") { Visible = false; }
        modify("Substitutes Exist") { Visible = false; }
        modify("Cost is Adjusted") { Visible = false; }
        modify("Unit Price") { Visible = false; }
        modify("Unit Cost") { Visible = false; }
        //

        //SHOW COLUMNS

        modify("Base Unit of Measure") { Visible = true; }
        modify("Shelf No.") { Visible = true; }

        //REORDER AND ADD COLUMNS

        moveafter("No."; "Description")
        moveafter("Description"; "Vendor No.")
        moveafter("Vendor No."; "Type")
        moveafter(Type; "Shelf No.")
        moveafter("Shelf No."; "Item Category Code")
        addafter("Item Category Code")
        {
            field("Inventory"; Rec."Inventory")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Inventory")
        {
            field("Qty. on Purch. Order"; Rec."Qty. on Purch. Order")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Qty. on Purch. Order")
        {
            field("Qty. on Sales Order"; Rec."Qty. on Sales Order")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        moveafter("Qty. on Sales Order"; "Production BOM No.")
        moveafter("Production BOM No."; "Routing No.")
        moveafter("Routing No."; "Base Unit of Measure")
        moveafter("Base Unit of Measure"; "Unit Cost")
        moveafter("Unit Cost"; "Unit Price")
        moveafter("Unit Price"; "Substitutes Exist")
        moveafter("Substitutes Exist"; "Cost is Adjusted")
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
            FreezeColumn = "Vendor No.";
        }
    }

    actions
    {
    }

    var

}
