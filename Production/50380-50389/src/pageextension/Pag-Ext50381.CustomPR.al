pageextension 50381 "KOB_Custom_PR" extends "UBL_Purch. Requisitions"
{
    layout
    {
        addbefore("Document Date")
        {
            field(KOB_Comment; Rec.KOB_Comment)
            {
                Caption = 'KOB_Comment';
                ApplicationArea = All;
            }
            field(KOB_Created_PO; Rec.KOB_PR_Created_PO)
            {
                Caption = 'KOB_PO_Display';
                ApplicationArea = All;
            }
            field(KOB_PR_PRC; Rec.KOB_PR_PRC)
            {
                Caption = 'KOB_PRC_Display';
                ApplicationArea = All;
            }
        }
    }
}
