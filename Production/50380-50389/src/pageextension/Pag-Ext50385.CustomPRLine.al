pageextension 50385 "KOB_Custom_PR_Line" extends "UBL_Purch. Requisition Subf"
{
    layout
    {
        modify("UBL_Qty. Made")
        {
            Editable = false;
            ApplicationArea = All;
        }
        addafter("UBL_Qty. Made"){
            field(KOB_PO_Line_Qty_Ref; Rec.KOB_PO_Line_Qty_Ref)
            {
                ApplicationArea = All;
                Visible = false;
            }
        }
}

    trigger OnAfterGetRecord()
    begin
        Rec."UBL_Qty. Made" := Rec.KOB_PO_Line_Qty_Ref;
    end;
}
