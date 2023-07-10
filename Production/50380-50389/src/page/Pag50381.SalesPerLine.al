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
                field(KOB_Sales_Order; Rec."KOB_SO_Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sales Order';
                }
                field("KOB_SO Date"; Rec."KOB_SO_Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'SO Date';
                }
                field("KOB_SO Customer Code"; Rec."KOB_SO_Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'SO Customer Code';
                }
                field("KOB_SO Customer Name"; Rec."KOB_SO_Bill-to Name")
                {
                    ApplicationArea = All;
                    Caption = 'SO Customer Name';
                }
                field("KOB_SO Item Code"; Rec."KOB_SO_No.")
                {
                    ApplicationArea = All;
                    Caption = 'SO Item Code';
                }
                field("KOB_SO Item Name"; Rec.KOB_SO_Description)
                {
                    ApplicationArea = All;
                    Caption = 'SO Item Name';
                }
                field("KOB_SO Quantity"; Rec.KOB_SO_Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'SO Quantity';
                }
                field("KOB_SO Unit Price"; Rec."KOB_SO_Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'SO Unit Price';
                }
                field("KOB_SO Qty to Ship"; Rec."KOB_SO_Qty. to Ship")
                {
                    ApplicationArea = All;
                    Caption = 'SO Qty to Ship';
                }
                field("KOB_SO Qty Shipped"; Rec."KOB_SO_Quantity Shipped")
                {
                    ApplicationArea = All;
                    Caption = 'SO Qty Shipped';
                }
                field("KOB_SO Qty to Invoice"; Rec."KOB_SO_Qty. to Invoice")
                {
                    ApplicationArea = All;
                    Caption = 'SO Qty to Invoice';
                }
                field("KOB_SO Qty Invoiced"; Rec."KOB_SO_Quantity Invoiced")
                {
                    ApplicationArea = All;
                    Caption = 'SO Qty Invoiced';
                }
                field("KOB_SI No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'SI No.';
                }
                field("KOB_SI Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'SI Posting Date';
                }
                field("KOB_SI Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'SI Quantity';
                }
                field("KOB_SI Sum Quantity"; Rec.KOB_Invoice_Qty_Per_SO)
                {
                    ApplicationArea = All;
                    Caption = 'SI Sum Quantity';
                }
                field("KOB_SI Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'SI Unit Price';
                }
                field("KOB_PSI Total Excl.Vat"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                    Caption = 'SI Total Excl.Vat';
                }
                field("KOB_Item Category Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Item Category Code';
                }
                field("KOB_Brand Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Brand Code';
                }
                field("KOB_Product Type Code"; Rec.KOB_Product_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'Product Type Code';
                }
                field("KOB_Channel Code"; Rec.KOB_Channel_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'Channel Code';
                }
                field("KOB_Department Code"; Rec.KOB_Department_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'Department Code';
                }
                field("KOB_Salesperson Code"; Rec.KOB_Salesperson_Dim)
                {
                    ApplicationArea = All;
                    Caption = 'Salesperson Code';
                }
            }
        }
    }
}
