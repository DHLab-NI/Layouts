tableextension 50000 SalesShipmtLineExt extends "Sales Shipment Line"
{
    fields
    {
        field(50100; "SO Qty Shipped not invoiced"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Qty. Shipped Not Invoiced" where(
                                                            "No." = field("No."),
                                                            "Location Code" = field("Location Code"),
                                                            "Document No." = field("Order No."),
                                                            "Document Type" = const("Sales Document Type"::Order)
                                                            ));
            Caption = 'SO Qty Shipped not invoiced';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
}