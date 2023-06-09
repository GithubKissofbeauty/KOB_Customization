tableextension 50384 "KOB_Custom_Table_Purchase Line" extends "Purchase Line"
{
    fields
    {
        field(50384; KOB_PO_Line_Ref; CODE[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Document No." WHERE("UBL_Create From PR/PQ No." = field("Document No.")));
        }
        field(50385; KOB_PO_Line_Qty_Ref; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Purchase Line".Quantity WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
    }
}