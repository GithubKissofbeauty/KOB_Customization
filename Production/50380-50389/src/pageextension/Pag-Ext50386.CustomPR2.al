pageextension 50386 "KOB_Custom_PR2" extends "UBL_Purch. Requisition"
{
    actions
    {
        addafter(Dimensions)
        {
            action(KOB_Dimention_DillDown)
            {
                Image = ExpandAll;
                Promoted = true;
                PromotedCategory = Category7;
                ApplicationArea = All;
                Caption = 'KOB_Dimention_DillDown';
                trigger OnAction();
                var
                    PurchaseLine: Record "Purchase Line";
                    Category_Temp: Code[20];
                    Brand_Temp: Code[20];
                    Product_Temp: Code[20];
                    Channel_Temp: Code[20];
                    Department_Temp: Code[20];
                    Sales_Temp: Code[20];
                    Expensey_Temp: Code[20];
                    Fragrance_Temp: Code[20];
                begin
                    // Get the value of the first line
                    PurchaseLine.SetRange("Document Type", Rec."Document Type");
                    PurchaseLine.SetRange("Document No.", Rec."No.");
                    if PurchaseLine.FindFirst() then
                        Category_Temp := PurchaseLine."Shortcut Dimension 1 Code";
                        Brand_Temp := PurchaseLine."Shortcut Dimension 2 Code";
                        Product_Temp := PurchaseLine."UBL_Shortcut Dimension 3 Code";
                        Channel_Temp := PurchaseLine."UBL_Shortcut Dimension 4 Code";
                        Department_Temp := PurchaseLine."UBL_Shortcut Dimension 5 Code";
                        Sales_Temp := PurchaseLine."UBL_Shortcut Dimension 6 Code";
                        Expensey_Temp := PurchaseLine."UBL_Shortcut Dimension 7 Code";
                        Fragrance_Temp := PurchaseLine."UBL_Shortcut Dimension 8 Code";

                    // Set the value of all lines to be the same as the first line
                    PurchaseLine.Reset();
                    PurchaseLine.SetRange("Document Type", Rec."Document Type");
                    PurchaseLine.SetRange("Document No.", Rec."No.");
                    if PurchaseLine.FindSet() then
                        repeat
                            PurchaseLine."Shortcut Dimension 1 Code" := Category_Temp;
                            PurchaseLine."Shortcut Dimension 2 Code" := Brand_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 3 Code" := Product_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 4 Code" := Channel_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 5 Code" := Department_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 6 Code" := Sales_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 7 Code" := Expensey_Temp;
                            PurchaseLine."UBL_Shortcut Dimension 8 Code" := Fragrance_Temp;
                            PurchaseLine.Modify(true);
                        until PurchaseLine.Next() = 0;
                end;
            }
        }
    }
}
