pageextension 50384 "KOB_Consign_Return_Order" extends "UBC_Consignment Return Order"
{
    layout
    {

    }
    actions
    {
        addafter(UBC_Return)
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
                    MyReport: Report "KOB_Return Consign Confirm";
                begin
                    MyReport.Run();
                end;
            }
        }
    }
}