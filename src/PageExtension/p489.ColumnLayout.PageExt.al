pageextension 50066 ColumnLayoutExt extends "Column Layout"
{
    layout
    {
        //HIDE COLUMNS

        //SHOW COLUMNS

        modify("Dimension 1 Totaling") { Visible = true; }
        modify("Dimension 2 Totaling") { Visible = true; }
        modify("Comparison Period Formula") { Visible = true; }

        //REORDER AND ADD COLUMNS

        moveafter(Formula; "Dimension 1 Totaling")
        moveafter("Dimension 1 Totaling"; "Dimension 2 Totaling")
        moveafter("Amount Type"; "Comparison Period Formula")

        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Column Header";
        }
    }

    actions
    {
    }

    var

}