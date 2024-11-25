pageextension 50023 ApplyVendorEntriesExt extends "Apply Vendor Entries"
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
        //
        //
        //
        //
        //
        //
        modify("Pmt. Discount Date") { Visible = false; }
        modify("Pmt. Disc. Tolerance Date") { Visible = false; }
        //
        modify("Remaining Pmt. Disc. Possible") { Visible = false; }
        modify("Original Pmt. Disc. Possible") { Visible = false; }
        modify("Max. Payment Tolerance") { Visible = false; }
        //
        //
        modify("Remit-to Code") { Visible = false; }
        modify("Global Dimension 1 Code") { Visible = false; }
        modify("Global Dimension 2 Code") { Visible = false; }
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
        modify("Amount to Apply") { Visible = true; }
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

        moveafter("AppliestoID"; "Document No.")
        moveafter("Document No."; "Posting Date")
        moveafter("Posting Date"; "Due Date")
        moveafter("Due Date"; "Document Type")
        moveafter("Document Type"; "External Document No.")
        moveafter("External Document No."; "Vendor Name")
        moveafter("Vendor Name"; "Description")
        moveafter("Description"; "Currency Code")
        moveafter("Currency Code"; "Remaining Amount")
        moveafter("Remaining Amount"; "CalcApplnRemainingAmount(""Remaining Amount"")")
        moveafter("CalcApplnRemainingAmount(""Remaining Amount"")"; "Amount to Apply")
        moveafter("Amount to Apply"; "ApplnAmountToApply")
        addafter("ApplnAmountToApply")
        {
            field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }

        moveafter("Applies-to Doc. No."; "Payment Reference")
        moveafter("Payment Reference"; "Open")
        moveafter("Open"; "Positive")
        moveafter("Positive"; "Vendor No.")
        //
        //
        //
        //


        //Specify position of freeze column
        modify(Control1)
        {
            FreezeColumn = "External Document No.";
        }
    }

    actions
    {
    }

    var

}