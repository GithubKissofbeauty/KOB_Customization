page 50381 "KOB_Check_PR"
{
    ApplicationArea = All;
    Caption = 'KOB_Check_PR_PO';
    Editable = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "Purchase Header";
    UsageCategory = Lists;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field(KOB_PR_Created; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Created_PO; Rec."KOB_PR_Created_PO_Status")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
