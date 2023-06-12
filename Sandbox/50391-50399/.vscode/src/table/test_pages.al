page 50391 Pages_test
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Table_test;

    layout
    {
        area(Content)
        {
            group(General)
            {

                field(Name; Rec.MyField)
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
            group("More Action")
            {
                action(Test)
                {
                    ApplicationArea = All;
                    Image = TaskQualityMeasure;

                    trigger OnAction()
                    begin
                        Message('Data Saved');
                    end;
                }
                action(CustomerSalesQuantity)
                {
                    ApplicationArea = All;
                    Image = FilterLines;

                    trigger OnAction()
                    var
                        MyCodeunit: Codeunit 50391;
                    begin
                        Clear(MyCodeunit);
                        MyCodeunit.Run();
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}