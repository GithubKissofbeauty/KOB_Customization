pageextension 50385 "KOB_Custom_PR_Line" extends "UBL_Purch. Requisition Subf"
{
    layout
    {
        modify("UBL_Qty. Made")
        {
            Editable = false;
            ApplicationArea = All;
        }
        modify("ShortcutDimCode[3]")
        {
            ApplicationArea = All;
        }
//         addafter("UBL_Qty. Made"){
//             field(KOB_PO_Line_Qty_Ref; Rec.KOB_PO_Line_Qty_Ref)
//             {
//                 ApplicationArea = All;
//                 Visible = false;
//             }
//         }
}

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        defaultDim: Record "Default Dimension";
    begin
        defaultDim.SetRange("No.", Rec."No.");
        defaultDim.SetRange("Dimension Code", 'PRODUCTTYPE');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 3 Code" := defaultDim."Dimension Value Code";
        end;
        defaultDim.SetRange("Dimension Code", 'CHANNEL');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 4 Code" := defaultDim."Dimension Value Code";
        end;
        defaultDim.SetRange("Dimension Code", 'DEPARTMENT');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 5 Code" := defaultDim."Dimension Value Code";
        end;
        defaultDim.SetRange("Dimension Code", 'SALESPERSON');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 6 Code" := defaultDim."Dimension Value Code";
        end;
        defaultDim.SetRange("Dimension Code", 'GROUPEXPENSE');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 7 Code" := defaultDim."Dimension Value Code";
        end;
        defaultDim.SetRange("Dimension Code", 'FRAGRANCETYPE');
        if defaultDim.FindFirst() then begin
            Rec."UBL_Shortcut Dimension 8 Code" := defaultDim."Dimension Value Code";
        end;
    end;
}
