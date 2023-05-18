pageextension 50382 "KOB_Custom_Consign_Return" extends "UBC_Consign Return Order Subf"
{
    layout
    {
        addbefore(UBC_Description)
        {
            field("UBC_Item Reference No."; Rec."UBC_Item Reference No.")
            {
                ApplicationArea = All;
            }

        }
    }
}