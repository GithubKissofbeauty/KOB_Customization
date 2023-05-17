pageextension 50380 "KOB_Custom_Page_Item_Ledger" extends "Item Ledger Entries"
{
    layout
    {
        addbefore("Description")
        {
            field(KOB_display; Rec."KOB_display")
            {
                ApplicationArea = All;
            }
        }
    }
}
