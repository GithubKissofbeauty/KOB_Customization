page 50381 "KOB_Sales Per Line"
{
    ApplicationArea = All;
    Caption = 'Sales Per Line (Customization)';
    PageType = List;
    SourceTable = "Sales Invoice Line";
    SourceTableView = where("KOB_SO_Document No." = filter('*SO-*'));
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
                field("KOB_Document No."; Rec."KOB_SO_Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'PR No';
                }
                field(KOB_No; Rec."KOB_SO_Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Code';
                }
                field(KOB_Description; Rec."KOB_SO_Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Name';
                }
                field(KOB_Quantity; Rec."KOB_SO_Bill-to Name")
                {
                    ApplicationArea = All;
                    Caption = 'PR Item Quantity';
                }
                field(KOB_PO_Line_Ref; Rec."KOB_SO_No.")
                {
                    ApplicationArea = All;
                    Caption = 'PO No';
                }
                field(KOB_PO_Vendor_Code; Rec.KOB_SO_Description)
                {
                    ApplicationArea = All;
                    Caption = 'PO Vendor Code';
                }
                field(KOB_PO_Vendor_Name; Rec.KOB_SO_Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'PO Vendor Name';
                }
                field(KOB_PO_Line_Qty; Rec."KOB_SO_Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quanity';
                }
                field(KOB_Unit_Cost; Rec."KOB_SO_Qty. to Ship")
                {
                    ApplicationArea = All;
                    Caption = 'PO Unit Cost';
                }
                field(KOB_PO_Quantity_to_Receive; Rec."KOB_SO_Quantity Shipped")
                {
                    ApplicationArea = All;
                    Caption = 'PO QTY to Receive';
                }
                field(KOB_Quantity_Received; Rec."KOB_SO_Qty. to Invoice")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Received';
                }
                field(KOB_PO_QTY_to_Invoice; Rec."KOB_SO_Quantity Invoiced")
                {
                    ApplicationArea = All;
                    Caption = 'PO QTY to Invoice';
                }
                field(KOB_PO_Quantity_Invoiced1; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced2; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced3; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced4; Rec.KOB_Invoice_Qty_Per_SO)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced5; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced6; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced7; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced8; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced9; Rec.KOB_Product_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced10; Rec.KOB_Channel_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced11; Rec.KOB_Department_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
                field(KOB_PO_Quantity_Invoiced12; Rec.KOB_Salesperson_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'PO Quantity Invoiced';
                }
            }
        }
    }
}
