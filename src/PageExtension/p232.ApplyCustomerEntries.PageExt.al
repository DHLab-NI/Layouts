pageextension 50022 ApplyCustomerEntriesExt extends "Apply Customer Entries"
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
        modify("Remaining Pmt. Disc. Possible") { Visible = false; }
        modify("Original Pmt. Disc. Possible") { Visible = false; }
        modify("Max. Payment Tolerance") { Visible = false; }
        //
        //
        modify("Global Dimension 1 Code") { Visible = false; }
        modify("Global Dimension 2 Code") { Visible = false; }
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
        //
        //
        //

        //REORDER AND ADD COLUMNS

        moveafter("AppliesToID"; "Posting Date")
        moveafter("Posting Date"; "Document Type")
        moveafter("Document Type"; "Document No.")
        moveafter("Document No."; "Prepayment")
        moveafter("Prepayment"; "Description")
        moveafter("Description"; "Currency Code")
        moveafter("Currency Code"; "Remaining Amount")
        moveafter("Remaining Amount"; "CalcApplnRemainingAmount(""Remaining Amount"")")
        moveafter("CalcApplnRemainingAmount(""Remaining Amount"")"; "Amount to Apply")
        moveafter("Amount to Apply"; "ApplnAmountToApply")
        moveafter("ApplnAmountToApply"; "External Document No.")
        moveafter("External Document No."; "Customer No.")
        moveafter("Customer No."; "Customer Name")
        moveafter("Customer Name"; "Due Date")
        moveafter("Due Date"; "Open")
        moveafter("Open"; "Positive")
        //
        //
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