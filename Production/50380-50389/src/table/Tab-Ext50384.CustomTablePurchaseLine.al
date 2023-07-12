tableextension 50384 "KOB_Custom_Table_Purchase Line" extends "Purchase Line"
{
    fields
    {
        field(50384; KOB_PO_Line_Ref; CODE[20])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Document No." WHERE("UBL_Create From PR/PQ No." = field("Document No.")));
        }
        field(50385; KOB_PO_Line_Qty_Ref; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Purchase Line".Quantity WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50386; KOB_PO_Vendor_Code; CODE[100])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."UBL_Vendor No." WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50387; KOB_PO_Vendor_Name; CODE[100])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."UBL_Vendor Name" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50388; KOB_PO_Quantity; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line".Quantity WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50389; KOB_PO_Unit_Cost; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Unit Cost" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50390; KOB_PO_Quantity_to_Receive; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Qty. to Receive" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50391; KOB_PO_Quantity_Received; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Quantity Received" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50392; KOB_PO_Quantity_to_Invoice; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Qty. to Invoice" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
        field(50393; KOB_PO_Quantity_Invoiced; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Quantity Invoiced" WHERE("UBL_Create From PR/PQ No." = field("Document No."), "No." = field("No.")));
        }
    }
    trigger OnAfterDelete()
    var
        IPurchaseLine: Record "Purchase Line";
    begin
        if (Rec."Document Type" = Rec."Document Type"::Order)
        and (Rec."UBL_Create From PR/PQ No." <> '')
        and (Rec."UBL_Create From PR/PQ Line No." <> 0) then begin

            IPurchaseLine.Reset();
            IPurchaseLine.SetRange("Document Type", IPurchaseLine."Document Type"::Quote);
            IPurchaseLine.SetRange("Document No.", Rec."UBL_Create From PR/PQ No.");
            IPurchaseLine.SetRange("Line No.", Rec."UBL_Create From PR/PQ Line No.");
            if IPurchaseLine.FindFirst() then begin
                IPurchaseLine."UBL_Qty. Made" -= Rec.Quantity;
                IPurchaseLine.Modify(true);
            end;
        end;
    end;
}