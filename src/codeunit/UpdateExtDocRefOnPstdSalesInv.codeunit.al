codeunit 50001 UpdateExtDocRefOnPstdSalesInv
{
    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure OnAfterRecordChangedHandler(
        var SalesInvoiceHeader: Record "Sales Invoice Header";
        xSalesInvoiceHeader: Record "Sales Invoice Header";
        var IsChanged: Boolean)
    begin
        if SalesInvoiceHeader."External Document No." <> xSalesInvoiceHeader."External Document No." then
            IsChanged := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", 'OnRunOnBeforeAssignValues', '', false, false)]
    local procedure OnRunOnBeforeAssignValuesHandler(
        var SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceHeaderRec: Record "Sales Invoice Header")
    begin
        SalesInvoiceHeader."External Document No." := SalesInvoiceHeaderRec."External Document No.";
    end;

}