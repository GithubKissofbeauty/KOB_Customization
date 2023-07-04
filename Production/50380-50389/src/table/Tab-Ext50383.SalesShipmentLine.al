tableextension 50383 "KOB_Sales_Shipment_Line" extends "Sales Shipment Line"
{
    fields
    {
        field(50383; KOB_expiration_date; Date)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Item Ledger Entry"."Expiration Date" WHERE("Item No." = field("No."), "Document No." = field("Document No.")));
        }
    }
}
