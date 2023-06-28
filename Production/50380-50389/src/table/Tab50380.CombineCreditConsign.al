table 50380 "KOB_Combine_Credit_Consign"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; KOB_No; TEXT[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'No.';
        }
        field(2; KOB_Customer_No; TEXT[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Customer No.';
        }
        field(3; KOB_Customer_Name; TEXT[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Customer Name';
        }
        field(4; KOB_Order_No; TEXT[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Order No.';
        }
        field(5; KOB_Document_Date; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Document Date';
        }
        field(6; KOB_Due_Date; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Due Date';
        }
        field(7; KOB_Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Amount';
        }
        field(8; KOB_Amount_VAT; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Amount Including VAT';
        }
        field(9; KOB_Remaining_Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Remaining Amount';
        }
    }

    procedure CombineData()
    var
        SalesInvoice: Record "Sales Invoice Header";
        SalesMemo: Record "Sales Cr.Memo Header";
        SalesConsign: Record "UBC_Posted Consignment Header";
        CombineTable: Record "KOB_Combine_Credit_Consign";
    begin
        if SalesInvoice.FINDSET then begin
            repeat
                SalesInvoice.CALCFIELDS(Amount, "Amount Including VAT", "Remaining Amount");
                // Check for duplicate record
                if not CombineTable.GET(SalesInvoice."No.") then begin
                    // Insert New Row
                    CombineTable.INIT;
                    CombineTable.KOB_No := SalesInvoice."No.";
                    CombineTable.KOB_Customer_No := SalesInvoice."Sell-to Customer No.";
                    CombineTable.KOB_Customer_Name := SalesInvoice."Sell-to Customer Name";
                    CombineTable.KOB_Order_No := SalesInvoice."Order No.";
                    CombineTable.KOB_Document_Date := SalesInvoice."Document Date";
                    CombineTable.KOB_Due_Date := SalesInvoice."Due Date";
                    CombineTable.KOB_Amount := SalesInvoice.Amount;
                    CombineTable.KOB_Amount_VAT := SalesInvoice."Amount Including VAT";
                    CombineTable.KOB_Remaining_Amount := SalesInvoice."Remaining Amount";
                    CombineTable.INSERT;
                end;
            until SalesInvoice.NEXT = 0;
        end;

        if SalesMemo.FINDSET then begin
            repeat
                SalesMemo.CALCFIELDS("Amount", "Amount Including VAT", "Remaining Amount");
                // Check for duplicate record
                if not CombineTable.GET(SalesMemo."No.") then begin
                    // Insert New Row
                    CombineTable.INIT;
                    CombineTable.KOB_No := SalesMemo."No.";
                    CombineTable.KOB_Customer_No := SalesMemo."Sell-to Customer No.";
                    CombineTable.KOB_Customer_Name := SalesMemo."Sell-to Customer Name";
                    CombineTable.KOB_Order_No := SalesMemo."Your Reference";
                    CombineTable.KOB_Document_Date := SalesMemo."Document Date";
                    CombineTable.KOB_Due_Date := SalesMemo."Due Date";
                    CombineTable.KOB_Amount := SalesMemo."Amount";
                    CombineTable.KOB_Amount_VAT := SalesMemo."Amount Including VAT";
                    CombineTable.KOB_Remaining_Amount := SalesMemo."Remaining Amount";
                    CombineTable.INSERT;
                end;
            until SalesMemo.NEXT = 0; // Use PurchaseHeader instead of ItemLedgerEntry
        end;

        if SalesConsign.FINDSET then begin
            repeat
                SalesConsign.CALCFIELDS("UBC_Remaining Amount", "UBC_Amount Including VAT", UBC_Amount);
                // Check for duplicate record
                if not CombineTable.GET(SalesConsign."UBC_No.") then begin
                    // Insert New Row
                    CombineTable.INIT;
                    CombineTable.KOB_No := SalesConsign."UBC_No.";
                    CombineTable.KOB_Customer_No := SalesConsign."UBC_Sell-to Customer No.";
                    CombineTable.KOB_Customer_Name := SalesConsign."UBC_Sell-to Customer Name";
                    CombineTable.KOB_Order_No := SalesConsign."UBC_Order No.";
                    CombineTable.KOB_Document_Date := SalesConsign."UBC_Document Date";
                    CombineTable.KOB_Due_Date := SalesConsign."UBC_Due Date";
                    CombineTable.KOB_Amount := SalesConsign.UBC_Amount;
                    CombineTable.KOB_Amount_VAT := SalesConsign."UBC_Amount Including VAT";
                    CombineTable.KOB_Remaining_Amount := SalesConsign."UBC_Remaining Amount";
                    CombineTable.INSERT;
                end;
            until SalesConsign.NEXT = 0; // Use PurchaseHeader instead of ItemLedgerEntry
        end;
    end;
}
