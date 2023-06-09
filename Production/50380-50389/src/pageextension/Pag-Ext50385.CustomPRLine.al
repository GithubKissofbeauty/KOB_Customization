pageextension 50385 "KOB_Custom_PR_Line" extends "UBL_Purch. Requisition Subf"
{
    layout
    {
        modify("UBL_Qty. Made")
        {
            Editable = false;
        }
     }

    trigger OnAfterGetRecord()
    begin
        Rec."UBL_Qty. Made" := 20;
    end;
}


// trigger OnAfterGetRecord()
// var
//     PurchaseLine: Record "Purchase Line";
// begin
//     if PurchaseLine.Get(Rec."Document Type", Rec."Document No.", Rec."Line No.") then
//         Rec."UBL_Qty. Made" := Rec.Quantity - PurchaseLine.KOB_field;
// end;
