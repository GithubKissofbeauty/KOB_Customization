page 50384 "KOB_PR_Per_Line"
{
    ApplicationArea = All;
    Caption = 'Purchase Requisitions Per Line (Customization)';
    PageType = List;
    SourceTable = "Purchase Line";
    SourceTableView = where("Document No." = filter('*PR-*'));
    UsageCategory = Lists;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    LinksAllowed = false;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("KOB_Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'PR_Line No.';
                }
                field(KOB_Description; Rec."Description")
                {
                    ApplicationArea = All;
                    Caption = 'PR_Item_Line';
                }
                field(KOB_PO_Line_Ref; Rec.KOB_PO_Line_Ref)
                {
                    ApplicationArea = All;
                    Caption = 'PO_Line No.';
                }
                field(KOB_PO_Line_Qty; Rec.KOB_PO_Line_Qty_Ref)
                {
                    ApplicationArea = All;
                    Caption = 'PO_Qty.';
                }
            }
        }
    }
}
