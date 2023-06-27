table 50380 "KOB_Combine_Credit_Consign"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; KOB_item_ref; TEXT[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    procedure CombineData()
    var
        SalesInvoice: Record "Sales Invoice Header";
        SalesMemo: Record "Sales Cr.Memo Header";
        SalesConsign: Record "UBC_Posted Consignment Header";
        MyTable: Record "KOB_Combine_Credit_Consign";
    begin
        if SalesInvoice.FINDSET then begin
            repeat
                // Check for duplicate record
                if not MyTable.GET(SalesInvoice."No.") then begin
                    // Insert New Row
                    MyTable.INIT;
                    MyTable.KOB_item_ref := SalesInvoice."No.";
                    MyTable.INSERT;
                end;
            until SalesInvoice.NEXT = 0;
        end;

        if SalesMemo.FINDSET then begin
            repeat
                // Check for duplicate record
                if not MyTable.GET(SalesMemo."No.") then begin
                    // Insert New Row
                    MyTable.INIT;
                    MyTable.KOB_item_ref := SalesMemo."No.";
                    MyTable.INSERT;
                end;
            until SalesMemo.NEXT = 0; // Use PurchaseHeader instead of ItemLedgerEntry
        end;

        if SalesConsign.FINDSET then begin
            repeat
                // Check for duplicate record
                if not MyTable.GET(SalesConsign."UBC_No.") then begin
                    // Insert New Row
                    MyTable.INIT;
                    MyTable.KOB_item_ref := SalesConsign."UBC_No.";
                    MyTable.INSERT;
                end;
            until SalesConsign.NEXT = 0; // Use PurchaseHeader instead of ItemLedgerEntry
        end;
    end;
}
