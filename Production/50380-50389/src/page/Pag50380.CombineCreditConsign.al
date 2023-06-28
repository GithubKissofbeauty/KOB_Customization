page 50380 "KOB_Combine_Credit_Consign"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = KOB_Combine_Credit_Consign;
    Caption = 'Posted Sales && Consignment (Customization)';

    layout
    {
        area(Content)
        {
            repeater(GroupName) // Use a Repeater control instead of repeat keyword
            {
                field(KOB_No; Rec.KOB_No)
                {
                    ApplicationArea = All;
                }
                field(KOB_Customer_No; Rec.KOB_Customer_No)
                {
                    ApplicationArea = All;
                }
                field(KOB_Customer_Name; Rec.KOB_Customer_Name)
                {
                    ApplicationArea = All;
                }
                field(KOB_Order_No; Rec.KOB_Order_No)
                {
                    ApplicationArea = All;
                }
                field(KOB_Document_Date; Rec.KOB_Document_Date)
                {
                    ApplicationArea = All;
                }
                field(KOB_Due_Date; Rec.KOB_Due_Date)
                {
                    ApplicationArea = All;
                }
                field(KOB_Amount; Rec.KOB_Amount)
                {
                    ApplicationArea = All;
                }
                field(KOB_Amount_VAT; Rec.KOB_Amount_VAT)
                {
                    ApplicationArea = All;
                }
                field(KOB_Remaining_Amount; Rec.KOB_Remaining_Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Combine Data")
            {
                ApplicationArea = All;
                Caption = 'KOB_Refresh';
                Image = Refresh;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    CombinedTable: Record KOB_Combine_Credit_Consign; // Use CombinedTable instead of KOB_MyTable
                begin
                    CombinedTable.CombineData(); // Call CombineData on CombinedTable instance
                end;
            }
            action("Clear Data")
            {
                ApplicationArea = All;
                Caption = 'Clear Data';
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    CombinedTable: Record KOB_Combine_Credit_Consign;
                begin
                    if Confirm('Are you sure you want to clear all data?') then
                        CombinedTable.DeleteAll();
                end;
            }
        }
    }
}
