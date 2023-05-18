tableextension 50381 "KOB_Custom_Table_PR" extends "Purchase Header"
{
    fields
    {
        field(50381; KOB_PR_Created_PO; Text[50])
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'KOB_PR_Created_PO';
            CalcFormula = Lookup("Purchase Line"."Document No." WHERE("UBL_Create From PR/PQ No." = field("No.")));
        }
        field(50382; KOB_PR_Created_PO_Status; Boolean)
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'KOB_PR_Created_PO_Status';
            CalcFormula = Exist("Purchase Line" WHERE("Document No." = field("No.")));
        }
    }
}
