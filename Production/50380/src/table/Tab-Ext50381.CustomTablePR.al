tableextension 50381 "KOB_Custom_Table_PR" extends "Purchase Header"
{
    fields
    {
        field(50381; KOB_PR_Created_PO; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Document No." where("Document No." = field("No.")));
        }
    }
}
