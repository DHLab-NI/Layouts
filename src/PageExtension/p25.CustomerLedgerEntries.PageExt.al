pageextension 50006 CustomerLedgerEntriesExt extends "Customer Ledger Entries"
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
        modify("Global Dimension 1 Code") { Visible = false; }
        modify("Global Dimension 2 Code") { Visible = false; }
        //
        //
        modify("Amount") { Visible = false; }
        modify("Amount (LCY)") { Visible = false; }
        //
        //
        modify("Sales (LCY)") { Visible = false; }
        //
        modify("Pmt. Discount Date") { Visible = false; }
        modify("Pmt. Disc. Tolerance Date") { Visible = false; }
        modify("Original Pmt. Disc. Possible") { Visible = false; }
        modify("Remaining Pmt. Disc. Possible") { Visible = false; }
        modify("Max. Payment Tolerance") { Visible = false; }
        modify("Payment Method Code") { Visible = false; }
        //
        //
        //
        //
        modify("Exported to Payment File") { Visible = false; }
        //
        modify(RecipientBankAccount) { Visible = false; }
        //

        //SHOW COLUMNS

        //
        //
        //
        //
        //
        modify("Customer No.") { Visible = true; }
        modify("Customer Name") { Visible = true; }
        modify("Description") { Visible = true; }
        //
        //
        modify("Currency Code") { Visible = true; }
        //
        //
        //
        //
        modify("Dispute Status") { Visible = true; }
        //
        //
        //
        //modify("Applies-to Doc. No.") { Visible = true; }
        //modify("Applies-to ID") { Visible = true; }
        //

        //REORDER AND ADD COLUMNS

        moveafter("Posting Date"; "Document Date")
        moveafter("Document Date"; "Due Date")
        moveafter("Due Date"; "Document Type")
        moveafter("Document Type"; "Document No.")
        moveafter("Document No."; "Customer No.")
        moveafter("Customer No."; "Customer Name")
        moveafter("Customer Name"; "Description")
        moveafter("Description"; "External Document No.")
        moveafter("External Document No."; "Your Reference")
        moveafter("Your Reference"; "Currency Code")
        moveafter("Currency Code"; "Original Amount")
        moveafter("Original Amount"; "Remaining Amount")
        moveafter("Remaining Amount"; "Remaining Amt. (LCY)")
        moveafter("Remaining Amt. (LCY)"; "Open")
        moveafter("Open"; "Dispute Status")
        moveafter("Dispute Status"; "On Hold")
        moveafter("On Hold"; "Message to Recipient")
        moveafter("Message to Recipient"; "Entry No.")
        addafter("Entry No.")
        {
            field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Applies-to Doc. No.")
        {
            field("Applies-to ID"; Rec."Applies-to ID")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        addafter("Applies-to ID")
        {
            field("Payment Reference"; Rec."Payment Reference")
            {
                ApplicationArea = Basic, Suite;
            }
        }


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
