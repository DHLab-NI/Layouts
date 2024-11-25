pageextension 50008 VendorLedgerEntriesExt extends "Vendor Ledger Entries"
{
    layout
    {

        //HIDE COLUMNS

        //
        //
        //
        //
        //
        //
        //
        //
        modify("Global Dimension 1 Code") { Visible = false; }
        modify("Global Dimension 2 Code") { Visible = false; }
        //
        modify("Payment Method Code") { Visible = false; }
        //
        //
        //
        modify("Amount") { Visible = false; }
        modify("Amount (LCY)") { Visible = false; }
        //
        //
        //
        modify("Pmt. Discount Date") { Visible = false; }
        modify("Pmt. Disc. Tolerance Date") { Visible = false; }
        modify("Original Pmt. Disc. Possible") { Visible = false; }
        modify("Remaining Pmt. Disc. Possible") { Visible = false; }
        modify("Max. Payment Tolerance") { Visible = false; }
        //
        //
        //
        //
        modify(RecipientBankAcc) { Visible = false; }
        modify("Remit-to Code") { Visible = false; }

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

        moveafter("Posting Date"; "Document Date")
        moveafter("Document Date"; "Due Date")
        moveafter("Due Date"; "Document Type")
        moveafter("Document Type"; "Document No.")
        moveafter("Document No."; "External Document No.")
        moveafter("External Document No."; "Currency Code")
        moveafter("Currency Code"; "Description")
        moveafter("Description"; "Payment Reference")
        moveafter("Payment Reference"; "Original Amount")
        moveafter("Original Amount"; "Remaining Amount")
        moveafter("Remaining Amount"; "Remaining Amt. (LCY)")
        moveafter("Remaining Amt. (LCY)"; "Open")
        moveafter("Open"; "Vendor No.")
        moveafter("Vendor No."; "Vendor Name")
        moveafter("Vendor Name"; "On Hold")
        moveafter("On Hold"; "Entry No.")
        moveafter("Entry No."; "Exported to Payment File")
        moveafter("Exported to Payment File"; "Creditor No.")
        //
        //
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "Document No.";
        }
    }

    actions
    {
    }

    var

}