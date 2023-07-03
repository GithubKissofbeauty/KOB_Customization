pageextension 50388 "KOB_Sales_Memp" extends "Sales Credit Memo"
{
    layout
    {
        modify("Reason Code")
        {
            ApplicationArea = All;
            ShowMandatory = true;
            Importance = Promoted;
            Visible = true;
        }
    }
    actions
    {
        modify(Release)
        {
            trigger OnBeforeAction()
            begin
                if Rec."Reason Code" = '' then
                    Error('The Reason Code field must have a value.');
            end;
        }
    }
}

