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
                field(Name; Rec.KOB_item_ref)
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
        }
    }
}
