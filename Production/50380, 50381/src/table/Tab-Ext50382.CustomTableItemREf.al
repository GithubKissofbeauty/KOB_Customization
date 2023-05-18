tableextension 50382 "KOB_Custom_Table_Item_Ref" extends "Item"
{
    fields
    {
        field(50382; KOB_item_ref; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup("Item Reference"."Reference No." where("Item No." = field("No.")));
        }
    }
}
