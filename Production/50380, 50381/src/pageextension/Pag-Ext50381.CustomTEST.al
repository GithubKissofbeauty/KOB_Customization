pageextension 50381 "KOB_Custom_TEST" extends "UBL_Purch. Requisitions"
{
    layout
    {
        addbefore("Document Date")
        {
            field(KOB_Created_PO; Rec.KOB_PR_Created_PO_Status)
            {
                Caption = 'KOB_Created_PO';
                ApplicationArea = All;
            }
        }
    }
}
