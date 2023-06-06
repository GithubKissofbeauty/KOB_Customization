report 50384 "KOB_Return Consign Confirm"
{
    //CS003 version GCG1.0

    DefaultLayout = RDLC;
    RDLCLayout = './Reports/Layout/Consign Order Confirmation.rdl';
    Caption = 'Return Consign Order Confirmation';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("UBC_Consignment Header"; "UBC_Consignment Header")
        {
            DataItemTableView = SORTING("UBC_Document Type", "UBC_No.")
                                WHERE("UBC_Document Type" = CONST("Return Consignment Order"));
            RequestFilterFields = "UBC_No.", "UBC_Sell-to Customer No.";
            RequestFilterHeading = 'Consignment Return Order';
            column(DocType_SalesHeader; "UBC_Document Type")
            {
            }
            column(No_SalesHeader; "UBC_No.")
            {
            }
            column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
            {
            }
            column(PhoneNoCaption; PhoneNoCaptionLbl)
            {
            }
            column(AmountCaption; "UBC_Consignment Line".FieldCaption("UBC_Line Amount"))
            {
            }
            column(VATPercentageCaption; VATPercentageCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmtCaption; VATAmtCaptionLbl)
            {
            }
            column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
            {
            }
            column(LineAmtCaption; LineAmtCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(UnitPriceCaption; "UBC_Consignment Line".FieldCaption("UBC_Unit Price"))
            {
            }
            column(PaymentTermsCaption; PaymentTermsCaptionLbl)
            {
            }
            column(ShipmentMethodCaption; ShipmentMethodCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(AllowInvDiscCaption; AllowInvDiscCaptionLbl)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));

                    column(CompanyInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(OrderConfirmCopyCaption; STRSUBSTNO(Text004, CopyText))
                    {
                    }
                    column(CompanyAddr1; CompanyInfo.Name)
                    {
                    }
                    column(CompanyAddr2; CompanyInfo.Address + ' ' + CompanyInfo."Address 2")
                    {
                    }
                    column(CompanyAddr3; CompanyInfo.City + ' ' + CompanyInfo.County)
                    {
                    }
                    column(CompanyAddr4; CompanyInfo."Post Code")
                    {
                    }
                    column(CompanyAddr5; '')
                    {
                    }
                    column(CompanyAddr6; '')
                    {
                    }
                    column(CustAddr1; "UBC_Consignment Header"."UBC_Sell-to Customer Name" + ' ' + "UBC_Consignment Header"."UBC_Sell-to Customer Name 2")
                    {
                    }
                    column(CustAddr2; "UBC_Consignment Header"."UBC_Sell-to Address" + ' ' + "UBC_Consignment Header"."UBC_Sell-to Address 2")
                    {
                    }
                    column(CustAddr3; "UBC_Consignment Header"."UBC_Sell-to City" + ' ' + "UBC_Consignment Header"."UBC_Sell-to County")
                    {
                    }
                    column(CustAddr4; "UBC_Consignment Header"."UBC_Sell-to Post Code" + ' ' + "UBC_Consignment Header"."UBC_Sell-to Country/Region C")
                    {
                    }
                    column(CustAddr5; '')
                    {
                    }
                    column(CustAddr6; '')
                    {
                    }
                    column(CustAddr7; '')
                    {
                    }
                    column(CustAddr8; '')
                    {
                    }
                    column(CompanyInfoPhNo; CompanyInfo."Phone No.")
                    {
                        IncludeCaption = false;
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesHeader; "UBC_Consignment Header"."UBC_Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHeader; FORMAT("UBC_Consignment Header"."UBC_Document Date", 0, '<Day,2> <Month Text> <Year4>'))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesHeader; "UBC_Consignment Header"."UBC_VAT Registration No.")
                    {
                    }
                    column(ShptDate_SalesHeader; FORMAT("UBC_Consignment Header"."UBC_Shipment Date"))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; "UBC_Consignment Header".FIELDCAPTION("UBC_External Document No."))
                    {
                    }
                    column(SalesOrderReference_SalesHeader; "UBC_Consignment Header"."UBC_External Document No.")
                    {
                    }
                    column(QuoteNo; "UBC_Consignment Header"."UBC_Your Reference")
                    {
                    }
                    column(PricesInclVAT_SalesHeader; "UBC_Consignment Header"."UBC_Prices Including VAT")
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PmntTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(ShptMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(PricesInclVATYesNo_SalesHeader; FORMAT("UBC_Consignment Header"."UBC_Prices Including VAT"))
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankCaption; BankCaptionLbl)
                    {
                    }
                    column(AccountNoCaption; AccountNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption; ShipmentDateCaptionLbl)
                    {
                    }
                    column(OrderNoCaption; OrderNoCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(EmailCaption; EmailCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesHeaderCaption; "UBC_Consignment Header".FIELDCAPTION("UBC_Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesHeaderCaption; "UBC_Consignment Header".FIELDCAPTION("UBC_Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "UBC_Consignment Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimensionLoop1Number; Number)
                        {
                        }
                        column(HeaderDimCaption; HeaderDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FIND('-') THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("UBC_Consignment Line"; "UBC_Consignment Line")
                    {
                        DataItemLink = "UBC_Document Type" = FIELD("UBC_Document Type"),
                                       "UBC_Document No." = FIELD("UBC_No.");
                        DataItemLinkReference = "UBC_Consignment Header";
                        DataItemTableView = SORTING("UBC_Document Type", "UBC_Document No.", "UBC_Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(ConsignLineAmt; ConsignLine."UBC_Line Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_ConsignLine; "UBC_Consignment Line".UBC_Description)
                        {
                        }
                        column(NNCConsignLineLineAmt; NNCConsignLineLineAmt)
                        {
                        }
                        column(NNCConsignLineInvDiscAmt; NNCConsignLineInvDiscAmt)
                        {
                        }
                        column(NNCTotalLCY; NNCTotalLCY)
                        {
                        }
                        column(NNCTotalExclVAT; NNCTotalExclVAT)
                        {
                        }
                        column(NNCVATAmt; NNCVATAmt)
                        {
                        }
                        column(NNCTotalInclVAT; NNCTotalInclVAT)
                        {
                        }
                        column(NNCPmtDiscOnVAT; NNCPmtDiscOnVAT)
                        {
                        }
                        column(NNCTotalInclVAT2; NNCTotalInclVAT2)
                        {
                        }
                        column(NNCVATAmt2; NNCVATAmt2)
                        {
                        }
                        column(NNCTotalExclVAT2; NNCTotalExclVAT2)
                        {
                        }
                        column(VATBaseDisc_SalesHeader; "UBC_Consignment Header"."UBC_VAT Base Discount %")
                        {
                        }
                        column(DisplayAssemblyInfo; DisplayAssemblyInformation)
                        {
                        }
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(No2_ConsignLine; "UBC_Consignment Line"."UBC_No.")
                        {
                        }
                        column(Barcode; Item."Search Description")
                        { }
                        column(Qty_ConsignLine; "UBC_Consignment Line".UBC_Quantity)
                        {
                        }
                        column(UOM_ConsignLine; "UBC_Consignment Line"."UBC_Unit of Measure")
                        {
                        }
                        column(UnitPrice_ConsignLine; "UBC_Consignment Line"."UBC_Unit Price")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 2;
                            IncludeCaption = false;
                        }
                        column(LineDisc_ConsignLine; "UBC_Consignment Line"."UBC_Line Discount %")
                        {
                        }
                        column(LineAmt_ConsignLine; "UBC_Consignment Line"."UBC_Line Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        //column(GP_ConsignHdr; "UBC_Consignment Header"."UBC_%GP")
                        column(GP_ConsignHdr; "UBC_Consignment Line"."UBC_Line Discount %")
                        {
                        }
                        column(VATIdentifier_ConsignLine; "UBC_Consignment Line"."UBC_VAT Identifier")
                        {
                        }
                        column(Type_ConsignLine; FORMAT("UBC_Consignment Line".UBC_Type))
                        {
                        }
                        column(No_ConsignLine; "UBC_Consignment Line"."UBC_Line No.")
                        {
                        }
                        column(AllowInvDiscountYesNo_ConsignLine; FORMAT("UBC_Consignment Line"."UBC_Allow Invoice Disc."))
                        {
                        }
                        column(AsmInfoExistsForLine; AsmInfoExistsForLine)
                        {
                        }
                        column(ConsignLineInvDiscAmt; ConsignLine."UBC_Inv. Discount Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(SalsLinAmtExclLineDiscAmt; ConsignLine."UBC_Line Amount" - ConsignLine."UBC_Inv. Discount Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(VATAmtLineVATAmtText3; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(VATAmount; VATAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(ConsignLineAmtExclLineDisc; ConsignLine."UBC_Line Amount" - ConsignLine."UBC_Inv. Discount Amount" + VATAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATDiscountAmount; VATDiscountAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount; VATBaseAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DiscountPercentCaption; DiscountPercentCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PaymentDiscountVATCaption; PaymentDiscountVATCaptionLbl)
                        {
                        }
                        column(Desc_ConsignLineCaption; "UBC_Consignment Line".FIELDCAPTION(UBC_Description))
                        {
                        }
                        column(No2_ConsignLineCaption; "UBC_Consignment Line".FIELDCAPTION("UBC_No."))
                        {
                        }
                        column(Qty_ConsignLineCaption; "UBC_Consignment Line".FIELDCAPTION(UBC_Quantity))
                        {
                        }
                        column(UOM_ConsignLineCaption; "UBC_Consignment Line".FIELDCAPTION("UBC_Unit of Measure"))
                        {
                        }
                        column(VATIdentifier_ConsignLineCaption; "UBC_Consignment Line".FIELDCAPTION("UBC_VAT Identifier"))
                        {
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText2; DimText)
                            {
                            }
                            column(LineDimCaption; LineDimCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "UBC_Consignment Line"."UBC_Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(AsmLineType; AsmLine.Type)
                            {
                            }
                            column(AsmLineNo; BlanksForIndent + AsmLine."No.")
                            {
                            }
                            column(AsmLineDescription; BlanksForIndent + AsmLine.Description)
                            {
                            }
                            column(AsmLineQuantity; AsmLine.Quantity)
                            {
                            }
                            column(AsmLineUOMText; GetUnitOfMeasureDescr(AsmLine."Unit of Measure Code"))
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN
                                    AsmLine.FINDSET
                                ELSE
                                    AsmLine.NEXT;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                IF NOT AsmInfoExistsForLine THEN
                                    CurrReport.BREAK;
                                AsmLine.SETRANGE("Document Type", AsmHeader."Document Type");
                                AsmLine.SETRANGE("Document No.", AsmHeader."No.");
                                SETRANGE(Number, 1, AsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN
                                ConsignLine.FIND('-')
                            ELSE
                                ConsignLine.NEXT;
                            "UBC_Consignment Line" := ConsignLine;
                            if not Item.get(ConsignLine."UBC_No.") then
                                Item.Init();

                            IF NOT "UBC_Consignment Header"."UBC_Prices Including VAT" AND
                               (ConsignLine."UBC_VAT Calculation Type" = ConsignLine."UBC_VAT Calculation Type"::"Full VAT")
                            THEN
                                ConsignLine."UBC_Line Amount" := 0;

                            IF (ConsignLine.UBC_Type = ConsignLine.UBC_Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "UBC_Consignment Line"."UBC_No." := '';

                            NNCConsignLineLineAmt += ConsignLine."UBC_Line Amount";
                            NNCConsignLineInvDiscAmt += ConsignLine."UBC_Inv. Discount Amount";

                            NNCTotalLCY := NNCConsignLineLineAmt - NNCConsignLineInvDiscAmt;

                            NNCTotalExclVAT := NNCTotalLCY;
                            NNCVATAmt := VATAmount;
                            NNCTotalInclVAT := NNCTotalLCY - NNCVATAmt;

                            NNCPmtDiscOnVAT := -VATDiscountAmount;

                            NNCTotalInclVAT2 := TotalAmountInclVAT;

                            NNCVATAmt2 := VATAmount;
                            NNCTotalExclVAT2 := VATBaseAmount;
                        end;

                        trigger OnPostDataItem()
                        begin
                            ConsignLine.DELETEALL;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := ConsignLine.FIND('+');
                            WHILE MoreLines AND (ConsignLine.UBC_Description = '') AND (ConsignLine."UBC_Description 2" = '') AND
                                  (ConsignLine."UBC_No." = '') AND (ConsignLine.UBC_Quantity = 0) AND
                                  (ConsignLine.UBC_Amount = 0)
                            DO
                                MoreLines := ConsignLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            ConsignLine.SETRANGE("UBC_Line No.", 0, ConsignLine."UBC_Line No.");
                            SETRANGE(Number, 1, ConsignLine.COUNT);
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercentage; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF VATAmount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                        end;
                    }
                    dataitem(VATCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercentage2; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier2; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "UBC_Consignment Header"."UBC_Posting Date", "UBC_Consignment Header"."UBC_Currency Code", "UBC_Consignment Header"."UBC_Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "UBC_Consignment Header"."UBC_Posting Date", "UBC_Consignment Header"."UBC_Currency Code", "UBC_Consignment Header"."UBC_Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("UBC_Consignment Header"."UBC_Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0)
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("UBC_Consignment Header"."UBC_Posting Date", "UBC_Consignment Header"."UBC_Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text009, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesHeader; "UBC_Consignment Header"."UBC_Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesHeaderCaption; "UBC_Consignment Header".FIELDCAPTION("UBC_Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(PrepmtLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(PrepmtLineAmount; PrepmtLineAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufDesc; PrepmtInvBuf.Description)
                        {
                        }
                        column(PrepmtInvBufGLAccNo; PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(TotalExclVATText2; TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineVATAmtTxt; PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalInclVATText2; TotalInclVATText)
                        {
                        }
                        column(PrepmtInvAmount; PrepmtInvBuf.Amount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmount; PrepmtVATAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvAmtInclVATAmt; PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText2; VATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtTotalAmountInclVAT; PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATBaseAmount; PrepmtVATBaseAmount)
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtLoopNumber; Number)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(GLAccountNoCaption; GLAccountNoCaptionLbl)
                        {
                        }
                        column(PrepaymentSpecCaption; PrepaymentSpecCaptionLbl)
                        {
                        }
                        dataitem(PrepmtDimLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText3; DimText)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT TempPrepmtDimSetEntry.FIND('-') THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText :=
                                          STRSUBSTNO('%1 %2', TempPrepmtDimSetEntry."Dimension Code", TempPrepmtDimSetEntry."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            TempPrepmtDimSetEntry."Dimension Code", TempPrepmtDimSetEntry."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL TempPrepmtDimSetEntry.NEXT = 0;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT PrepmtInvBuf.FIND('-') THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF PrepmtInvBuf.NEXT = 0 THEN
                                    CurrReport.BREAK;

                            IF ShowInternalInfo THEN
                                DimMgt.GetDimensionSet(TempPrepmtDimSetEntry, PrepmtInvBuf."Dimension Set ID");

                            IF "UBC_Consignment Header"."UBC_Prices Including VAT" THEN
                                PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            ELSE
                                PrepmtLineAmount := PrepmtInvBuf.Amount;
                        end;
                    }
                    dataitem(PrepmtVATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(PrepmtVATAmtLineVATAmt; PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATBase; PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineLineAmt; PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "UBC_Consignment Header"."UBC_Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATPerc; PrepmtVATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(PrepmtVATAmtLineVATIdent; PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepmtVATCounterNumber; Number)
                        {
                        }
                        column(PrepaymentVATAmtSpecCap; PrepaymentVATAmtSpecCapLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            PrepmtVATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, PrepmtVATAmountLine.COUNT);
                        end;
                    }
                    dataitem(PrepmtTotal; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(PrepmtPmtTermsDesc; PrepmtPaymentTerms.Description)
                        {
                        }
                        column(PrepmtPmtTermsDescCaption; PrepmtPmtTermsDescCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF NOT PrepmtInvBuf.FIND('-') THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                var
                    PrepmtConsignLine: Record "UBC_Consignment Line" temporary;
                    TempConsignLine: Record "UBC_Consignment Line" temporary;
                    SalesPost: Codeunit "UBC_Consign Order Post";
                begin
                    CLEAR(ConsignLine);
                    CLEAR(SalesPost);
                    VATAmountLine.DELETEALL;
                    ConsignLine.DELETEALL;

                    SalesPost.GetConsignLines("UBC_Consignment Header", ConsignLine, 0);
                    ConsignLine.CalcVATAmountLines(0, "UBC_Consignment Header", ConsignLine, VATAmountLine);
                    ConsignLine.UpdateVATOnLines(0, "UBC_Consignment Header", ConsignLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("UBC_Consignment Header"."UBC_Currency Code", "UBC_Consignment Header"."UBC_Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN BEGIN
                        CopyText := FormatDocument.GetCOPYText;
                        OutputNo += 1;
                    END;

                    NNCTotalLCY := 0;
                    NNCTotalExclVAT := 0;
                    NNCVATAmt := 0;
                    NNCTotalInclVAT := 0;
                    NNCPmtDiscOnVAT := 0;
                    NNCTotalInclVAT2 := 0;
                    NNCVATAmt2 := 0;
                    NNCTotalExclVAT2 := 0;
                    NNCConsignLineLineAmt := 0;
                    NNCConsignLineInvDiscAmt := 0;
                end;

                trigger OnPostDataItem()
                begin
                    IF Print THEN
                        CODEUNIT.RUN(CODEUNIT::"Sales-Printed", "UBC_Consignment Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                //CurrReport.LANGUAGE := Language.GetLanguageID("UBC_Language Code");

                FormatDocumentFields("UBC_Consignment Header");

                DimSetEntry1.SETRANGE("Dimension Set ID", "UBC_Dimension Set ID");
            end;

            trigger OnPreDataItem()
            begin
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
        end;

        trigger OnOpenPage()
        begin
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        CompanyInfo.CalcFields(Picture);
        SalesSetup.GET;
    end;

    trigger OnPostReport()
    begin
    end;

    trigger OnPreReport()
    begin
    end;

    var
        Text004: Label 'Consign Order Confirmation %1', Comment = '%1 = Document No.';
        PageCaptionCap: Label 'Page %1/%2';
        GLSetup: Record "General Ledger Setup";
        Item: Record Item;
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        ConsignLine: Record "UBC_Consignment Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        TempPrepmtDimSetEntry: Record "Dimension Set Entry" temporary;
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        Language: Record Language;
        CurrExchRate: Record "Currency Exchange Rate";
        AsmHeader: Record "Assembly header";
        AsmLine: Record "Assembly Line";
        FormatDocument: Codeunit "Format Document";
        DimMgt: Codeunit DimensionManagement;
        ShipToAddr: array[8] of Text[100];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        Text009: Label 'Exchange rate: %1/%2';
        VALExchRate: Text[50];
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        OutputNo: Integer;
        NNCTotalLCY: Decimal;
        NNCTotalExclVAT: Decimal;
        NNCVATAmt: Decimal;
        NNCTotalInclVAT: Decimal;
        NNCPmtDiscOnVAT: Decimal;
        NNCTotalInclVAT2: Decimal;
        NNCVATAmt2: Decimal;
        NNCTotalExclVAT2: Decimal;
        NNCConsignLineLineAmt: Decimal;
        NNCConsignLineInvDiscAmt: Decimal;
        Print: Boolean;
        [InDataSet]
        DisplayAssemblyInformation: Boolean;
        AsmInfoExistsForLine: Boolean;
        InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
        VATRegNoCaptionLbl: Label 'VAT Registration No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankCaptionLbl: Label 'Bank';
        AccountNoCaptionLbl: Label 'Account No.';
        ShipmentDateCaptionLbl: Label 'Shipment Date';
        OrderNoCaptionLbl: Label 'Order No.';
        HomePageCaptionLbl: Label 'Home Page';
        EmailCaptionLbl: Label 'Email';
        HeaderDimCaptionLbl: Label 'Header Dimensions';
        DiscountPercentCaptionLbl: Label 'Discount %';
        SubtotalCaptionLbl: Label 'Subtotal';
        PaymentDiscountVATCaptionLbl: Label 'Payment Discount on VAT';
        LineDimCaptionLbl: Label 'Line Dimensions';
        InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        ShiptoAddrCaptionLbl: Label 'Ship-to Address';
        DescriptionCaptionLbl: Label 'Description';
        GLAccountNoCaptionLbl: Label 'G/L Account No.';
        PrepaymentSpecCaptionLbl: Label 'Prepayment Specification';
        PrepaymentVATAmtSpecCapLbl: Label 'Prepayment VAT Amount Specification';
        PrepmtPmtTermsDescCaptionLbl: Label 'Prepmt. Payment Terms';
        PhoneNoCaptionLbl: Label 'Phone No.';
        VATPercentageCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmtCaptionLbl: Label 'VAT Amount';
        VATAmtSpecCaptionLbl: Label 'VAT Amount Specification';
        LineAmtCaptionLbl: Label 'Line Amount';
        TotalCaptionLbl: Label 'Total';
        PaymentTermsCaptionLbl: Label 'Payment Terms';
        ShipmentMethodCaptionLbl: Label 'Shipment Method';
        DocumentDateCaptionLbl: Label 'Document Date';
        AllowInvDiscCaptionLbl: Label 'Allow Invoice Discount';

    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean; DisplayAsmInfo: Boolean)
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        Print := PrintFrom;
    end;

    local procedure FormatDocumentFields(SalesHeader: Record "UBC_Consignment Header")
    begin
        // WITH SalesHeader DO BEGIN
        FormatDocument.SetTotalLabels(SalesHeader."UBC_Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalesPurchPerson, SalesHeader."UBC_Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesHeader."UBC_Payment Terms Code", SalesHeader."UBC_Language Code");
        // FormatDocument.SetPaymentTerms(PrepmtPaymentTerms, "Prepmt. Payment Terms Code", "UBC_Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesHeader."UBC_Shipment Method Code", SalesHeader."UBC_Language Code");

        VATNoText := FormatDocument.SetText(SalesHeader."UBC_VAT Registration No." <> '', SalesHeader.FIELDCAPTION("UBC_VAT Registration No."));
        // END;
    end;

    local procedure GetUnitOfMeasureDescr(UOMCode: Code[10]): Text[10]
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10]
    begin
        EXIT(PADSTR('', 2, ' '));
    end;
}

