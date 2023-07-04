report 50382 "KOB_Inventory On Hand Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './4 - Report/Report_Layout/StockOnHandByLotBin.rdl';
    ApplicationArea = ALL;
    Caption = 'Inventory On Hand Report (Customization)';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(InventoryOnHandReport; Integer)
        {
            DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number = FILTER(1 ..));
            column(TotalQty; TotalQty) { }
            column(PrintBy; DELSTR(USERID, 1, STRPOS(USERID, '\'))) { }
            column(PrintDate; FORMAT(CURRENTDATETIME)) { }
            column(VarcompName; CompanyInfo.Name) { }
            column(ShowLotBin; ShowLotBin) { }
            column(EndingDate; FORMAT(EndingDate)) { }
            column(ItemFilter; ItemFilter) { }
            column(LocationFilter; LocationFilter) { }
            column(ItemGroupFilter; ItemGroupFilter) { }
            column(Item_No; TmpItemLedgEntry."Item No.") { }
            column(KOB_Expiration; TmpItemLedgEntry."Expiration Date") { }
            column(Location_Code; TmpItemLedgEntry."Location Code") { }
            column(Quantity; TmpItemLedgEntry.Quantity) { }
            column(Lot_No; TmpItemLedgEntry."Lot No.") { }
            column(LineNo; LineNo) { }
            column(StockByLocation_Number; Number) { }
            column(ItemDescription; TmpItemLedgEntry.Description) { }
            column(AgingNoDay; AgingNoDay) { }
            column(Bin; TmpItemLedgEntry.Bin) { }
            column(UOM; TmpItemLedgEntry."Unit of Measure Code") { }
            column(OutStock; -TmpItemLedgEntry."Remaining Quantity") { }
            column(InStock; TmpItemLedgEntry."Invoiced Quantity") { }

            trigger OnPreDataItem()
            begin
                TmpItemLedgEntry.RESET;
            end;

            trigger OnAfterGetRecord()
            var
                ItemLedgerEntry: Record "Item Ledger Entry";
            begin
                IF Number = 1 THEN
                    OK := TmpItemLedgEntry.FIND('-')
                ELSE
                    OK := TmpItemLedgEntry.NEXT <> 0;
                IF NOT OK THEN
                    CurrReport.BREAK;

                TotalQty += TmpItemLedgEntry.Quantity;

                IF TmpItemLedgEntry.Quantity = 0 THEN
                    CurrReport.SKIP;

            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group("Option")
                {
                    field(EndingDate; EndingDate)
                    {
                        ApplicationArea = ALL;
                    }
                    field(ItemGroupFilter; ItemGroupFilter)
                    {
                        ApplicationArea = ALL;
                        trigger OnLookup(var Text: Text): Boolean
                        var
                            InventoryPostingGroup: Page "Inventory Posting Groups";
                            OldText: Text;
                        begin
                            OldText := Text;
                            InventoryPostingGroup.LOOKUPMODE(TRUE);
                            IF NOT (InventoryPostingGroup.RUNMODAL = ACTION::LookupOK) THEN
                                EXIT(FALSE);

                            Text := OldText + InventoryPostingGroup.GetSelectionFilter;
                            EXIT(TRUE);
                        end;
                    }
                    field(ItemFilter; ItemFilter)
                    {
                        ApplicationArea = ALL;
                        trigger OnLookup(var Text: Text): Boolean
                        var
                            ItemList: Page "Item List";
                            OldText: Text;
                        begin
                            OldText := Text;
                            ItemList.LOOKUPMODE(TRUE);
                            IF NOT (ItemList.RUNMODAL = ACTION::LookupOK) THEN
                                EXIT(FALSE);

                            Text := OldText + ItemList.GetSelectionFilter;
                            EXIT(TRUE);
                        end;
                    }
                    field(LocationFilter; LocationFilter)
                    {
                        ApplicationArea = ALL;
                        trigger OnLookup(var Text: Text): Boolean
                        var
                            LocationList: Page "Location List";
                            OldText: Text;
                        begin
                            OldText := Text;
                            LocationList.LOOKUPMODE(TRUE);
                            IF NOT (LocationList.RUNMODAL = ACTION::LookupOK) THEN
                                EXIT(FALSE);

                            Text := OldText + LocationList.GetSelectionFilter;
                            EXIT(TRUE);
                        end;
                    }
                    field(ShowLotBin; ShowLotBin)
                    {
                        ApplicationArea = ALL;
                    }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        Companyinfo.GET;
        if format(EndingDate) = '' then
            Error('Ending Date must have value!');

        Window.OPEN('Generate Report   @1@@@@@@@@@@@@');

        Item2.RESET;
        IF ItemGroupFilter <> '' then
            Item2.SETFILTER("Inventory Posting Group", ItemGroupFilter);
        IF ItemFilter <> '' THEN
            Item2.SETFILTER("No.", ItemFilter);
        if Item2.FINDSET then
            repeat
                ItemLedgEntry.RESET;
                IF LocationFilter <> '' THEN
                    ItemLedgEntry.SETFILTER("Location Code", LocationFilter);

                ItemLedgEntry.SETRANGE("Item No.", Item2."No.");
                ItemLedgEntry.SETFILTER("Posting Date", '..%1', EndingDate);
                ItemLedgEntry.SETRANGE("Location Bin", false);
                IF ItemLedgEntry.FINDSET THEN
                    REPEAT
                        TmpItemLedgEntry.RESET;
                        TmpItemLedgEntry.SETRANGE("Item No.", ItemLedgEntry."Item No.");
                        TmpItemLedgEntry.SETRANGE("Location Code", ItemLedgEntry."Location Code");
                        if ShowLotBin then
                            TmpItemLedgEntry.SETRANGE("Lot No.", ItemLedgEntry."Lot No.");
                        IF NOT TmpItemLedgEntry.FINDSET THEN BEGIN
                            EntryNo += 1;
                            TmpItemLedgEntry.INIT;
                            TmpItemLedgEntry."Item No." := ItemLedgEntry."Item No.";
                            TmpItemLedgEntry."Expiration Date" := ItemLedgEntry."Expiration Date";
                            TmpItemLedgEntry."Location Code" := ItemLedgEntry."Location Code";
                            TmpItemLedgEntry."Lot No." := ItemLedgEntry."Lot No.";
                            TmpItemLedgEntry."Entry No." := EntryNo;
                            TmpItemLedgEntry."Item Category Code" := Item2."Inventory Posting Group";
                            TmpItemLedgEntry.Description := Item2.Description;
                            TmpItemLedgEntry.Quantity := ItemLedgEntry.Quantity;
                            TmpItemLedgEntry."Unit of Measure Code" := Item2."Base Unit of Measure";

                            if ItemLedgEntry.Quantity < 0 then
                                TmpItemLedgEntry."Remaining Quantity" := ItemLedgEntry.Quantity // Stock Out
                            else
                                TmpItemLedgEntry."Invoiced Quantity" := ItemLedgEntry.Quantity; // Stock In

                            TmpItemLedgEntry.INSERT;
                        END ELSE BEGIN
                            TmpItemLedgEntry.Quantity += ItemLedgEntry.Quantity;// Total Quantity
                            if ItemLedgEntry.Quantity < 0 then
                                TmpItemLedgEntry."Remaining Quantity" += ItemLedgEntry.Quantity // Stock Out
                            else
                                TmpItemLedgEntry."Invoiced Quantity" += ItemLedgEntry.Quantity; // Stock In
                            TmpItemLedgEntry.MODIFY;
                        END;
                    UNTIL ItemLedgEntry.NEXT = 0;

                //WH Entry
                WHEntry.RESET;
                IF LocationFilter <> '' THEN
                    WHEntry.SETFILTER("Location Code", LocationFilter);

                WHEntry.SETRANGE("Item No.", Item2."No.");
                WHEntry.SETFILTER("Registering Date", '..%1', EndingDate);
                IF WHEntry.FINDSET THEN
                    REPEAT
                        TmpItemLedgEntry.RESET;
                        TmpItemLedgEntry.SETRANGE("Item No.", WHEntry."Item No.");
                        TmpItemLedgEntry.SETRANGE("Location Code", WHEntry."Location Code");

                        if ShowLotBin then begin
                            TmpItemLedgEntry.SETRANGE(Bin, WHEntry."Bin Code");
                            TmpItemLedgEntry.SETRANGE("Lot No.", WHEntry."Lot No.");
                        end;

                        IF NOT TmpItemLedgEntry.FINDSET THEN BEGIN
                            EntryNo += 1;
                            TmpItemLedgEntry.INIT;
                            TmpItemLedgEntry."Item No." := WHEntry."Item No.";
                            TmpItemLedgEntry."Location Code" := WHEntry."Location Code";
                            TmpItemLedgEntry."Lot No." := WHEntry."Lot No.";
                            TmpItemLedgEntry.Bin := WHEntry."Bin Code";
                            TmpItemLedgEntry.Quantity := WHEntry.Quantity;
                            TmpItemLedgEntry."Entry No." := EntryNo;
                            TmpItemLedgEntry."Item Category Code" := Item2."Inventory Posting Group";
                            TmpItemLedgEntry.Description := Item2.Description;
                            TmpItemLedgEntry."Unit of Measure Code" := Item2."Base Unit of Measure";

                            if WHEntry.Quantity < 0 then
                                TmpItemLedgEntry."Remaining Quantity" := WHEntry.Quantity // Stock Out
                            else
                                TmpItemLedgEntry."Invoiced Quantity" := WHEntry.Quantity; // Stock In

                            TmpItemLedgEntry.INSERT;
                        END ELSE BEGIN
                            TmpItemLedgEntry.Quantity += WHEntry.Quantity;// Total Quantity
                            if WHEntry.Quantity < 0 then
                                TmpItemLedgEntry."Remaining Quantity" += WHEntry.Quantity // Stock Out
                            else
                                TmpItemLedgEntry."Invoiced Quantity" += WHEntry.Quantity; // Stock In
                            TmpItemLedgEntry.MODIFY;
                        END;
                    UNTIL WHEntry.NEXT = 0;
                CountLine += 1;
                Window.UPDATE(1, ROUND(CountLine / Item2.COUNT * 10000, 1));
            UNTIL Item2.NEXT = 0;
        Window.CLOSE;
    end;

    var
        ShowLotBin: Boolean;
        TmpItemLedgEntry: Record "Item Ledger Entry" temporary;
        OK: Boolean;
        ItemLedgEntry: Record "Item Ledger Entry";
        Window: Dialog;
        CountLine: Integer;
        LineNo: Integer;
        WHEntry: Record "Warehouse Entry";
        InDate: Date;
        AsDate: Date;
        AgingNoDay: Integer;
        EntryNo: Integer;
        EndingDate: Date;
        ItemFilter: Text;
        LocationFilter: Text;
        ItemGroupFilter: Text;
        Item2: Record Item;
        Companyinfo: Record "Company Information";
        TotalQty: Decimal;
}