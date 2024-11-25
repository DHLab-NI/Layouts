// SGH 14/10/24
// Set default column layout for Contact List

pageextension 50001 AdjInventoryExt extends "Adjust Inventory"
{
    layout
    {

        //HIDE COLUMNS

        modify(NewInventoryNoLocation) { Visible = false; }
        modify(QtyToAdjustNoLocation) { Visible = false; }
        modify(NewInventory) { Visible = false; }
        modify(QtyToAdjust) { Visible = false; }
    }
}