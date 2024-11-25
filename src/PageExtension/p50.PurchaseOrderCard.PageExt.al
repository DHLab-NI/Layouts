pageextension 50003 POHeaderExt extends "Purchase Order"
{
    layout
    {

        //HIDE FIELDS
        modify("Invoice Received Date") { Visible = false; }

        //SHOW FIELDS

        modify("Posting Date") { Importance = Promoted; }
        modify("Shortcut Dimension 1 Code") { Importance = Promoted; }
        modify("Shortcut Dimension 2 Code") { Importance = Promoted; }
        modify("Purchaser Code") { Importance = Promoted; }

        //ADD FIELDS

        //REORDER FIELDS

    }

    actions
    {
    }

    var

}