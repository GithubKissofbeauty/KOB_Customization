tableextension 50385 "KOB_Posted_Sales_Invoices" extends "Sales Invoice Line"
{
    fields
    {
        field(50383; KOB_Invoice_Qty_Per_SO; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Sales Invoice Line".Quantity WHERE("Order No." = field("Order No."), "No." = field("No.")));
        }
        field(50384; "KOB_SO_Document No."; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Document No." WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50385; "KOB_SO_Posting Date"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Header"."Posting Date" WHERE("No." = field("KOB_SO_Document No.")));
        }
        field(50386; "KOB_SO_Bill-to Customer No."; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Bill-to Customer No." WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50387; "KOB_SO_Bill-to Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Header"."Bill-to Name" WHERE("Bill-to Customer No." = field("KOB_SO_Bill-to Customer No.")));
        }
        field(50388; "KOB_SO_No."; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."No." WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50389; KOB_SO_Description; TEXT[100])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Description" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50390; KOB_SO_Quantity; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Quantity" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50391; "KOB_SO_Unit Price"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Unit Price" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50392; "KOB_SO_Qty. to Ship"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Qty. to Ship" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50393; "KOB_SO_Quantity Shipped"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Quantity Shipped" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50394; "KOB_SO_Qty. to Invoice"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Qty. to Invoice" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50395; "KOB_SO_Quantity Invoiced"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Sales Line"."Quantity Invoiced" WHERE("Document No." = field("Order No."), "No." = field("No.")));
        }
        field(50396; KOB_Product_Dim; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Default Dimension"."Dimension Value Code" WHERE("Dimension Code" = CONST('PRODUCTTYPE'), "No." = field("No.")));
        }
        field(50397; KOB_Channel_Dim; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Default Dimension"."Dimension Value Code" WHERE("Dimension Code" = CONST('CHANNEL'), "No." = field("No.")));
        }
        field(50398; KOB_Department_Dim; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Default Dimension"."Dimension Value Code" WHERE("Dimension Code" = CONST('DEPARTMENT'), "No." = field("No.")));
        }
        field(50399; KOB_Salesperson_Dim; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Default Dimension"."Dimension Value Code" WHERE("Dimension Code" = CONST('SALESPERSON'), "No." = field("No.")));
        }
    }
}