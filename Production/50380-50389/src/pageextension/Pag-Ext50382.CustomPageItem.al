pageextension 50382 "KOB_Custom_Page_Item" extends "Item List"
{
    layout
    {
        addbefore("Description")
        {
            field(KOB_item_ref; Rec."KOB_item_ref")
            {
                ApplicationArea = All;
                Caption = 'KOB_Item_Ref';
            }
        }
        addafter("Qty. on Purch. Order")
        {
            field(KOB_Qty_on_Consign_Order; Rec."UBC_Qty. on Consign Order")
            {
                ApplicationArea = All;
                Caption = 'Qty. on Consign Order';
            }
        }
    }
}