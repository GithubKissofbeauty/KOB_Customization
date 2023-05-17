pageextension 50382 "KOB_Custom_TEST" extends "UBL_Purch. Requisitions"
{
    layout
    {
        addbefore(UBL_Requester)
        {
            field(KOB_display; Rec."Pay-to Country/Region Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
