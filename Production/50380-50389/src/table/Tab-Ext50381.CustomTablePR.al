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
        field(50383; KOB_PR_PRC; Text[50])
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'KOB_PR_Created_PRC';
            CalcFormula = Lookup("Purch. Rcpt. Header"."No." WHERE("Order No." = field("KOB_PR_Created_PO")));
        }
        field(50384; KOB_Comment; Text[200])
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'KOB_Comment';
            CalcFormula = Lookup("Purch. Comment Line"."Comment" WHERE("No." = field("No.")));
        }
    }

    trigger OnDelete()
    var
        UserResponse: Boolean;
    begin
        UserResponse := Confirm('Do you want to backup this document before deleting it? \ If YES, Click Archive Document (Only PO). \ If NO, Continue Deleting Without Backup.', false);
        if UserResponse then
            Error('Record not deleted. Please backup the document before deleting.');
    end;
}
