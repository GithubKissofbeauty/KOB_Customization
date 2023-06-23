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
                    Caption = 'PR No';
                }
                field(KOB_No; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Code';
                }
                field(KOB_Description; Rec."Description")
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Name';
                }
                field(KOB_Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Quantity';
                }
                field(KOB_PO_Line_Ref; Rec.KOB_PO_Line_Ref)
                {
                    ApplicationArea = All;
                    Caption = 'PO No';
                }
                // field(KOB_PO_Vendor_Code; Rec.KOB_PO_Vendor_Code)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO Vendor Code';
                // }
                // field(KOB_PO_Vendor_Name; Rec.KOB_PO_Vendor_Name)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO Vendor Name';
                // }
                field(KOB_PO_Line_Qty; Rec.KOB_PO_Line_Qty_Ref)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quanity';
                }
                // field(KOB_Unit_Cost; Rec.KOB_PO_Unit_Cost)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO Unit Cost';
                // }
                // field(KOB_Quantity_Received; Rec.KOB_PO_Quantity_Received)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO Quantity Received';
                // }
                // field(KOB_PO_QTY_to_Invoice; Rec.KOB_PO_Qty_To_Invoice)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO QTY to Invoice';
                // }
                // field(KOB_PO_Quantity_Invoiced; Rec.KOB_PO_Quantity_Invoiced)
                // {
                //     ApplicationArea = All;
                //     Caption = 'PO Quantity Invoiced';
                // }
            }
        }
    }
}
