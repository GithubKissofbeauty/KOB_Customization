pageextension 50384 "KOB_Consign_Return_Order" extends "UBC_Consignment Return Order"
{
    layout
    {
        //
    }
    actions
    {
        addafter("UBC_PostedConsignReturnOrder")
        {
            action(KOB_Print)
            {
                ApplicationArea = All;
                Caption = 'Print';
                Image = Print;
                Promoted = true;
                PromotedCategory = "Report";
                trigger OnAction()
                    var
                        ConsignHdr: Record "UBC_Consignment Header";
                    begin
                        ConsignHdr.RESET;
                        ConsignHdr.SETRANGE("UBC_Document Type", rec."UBC_Document Type");
                        ConsignHdr.SETRANGE("UBC_No.", rec."UBC_No.");
                        REPORT.RUN(REPORT::"KOB_Return Consign Confirm", TRUE, FALSE, ConsignHdr);
                    end;
            }
        }
    }
}
