tableextension 50380 "KOB_Custom_Table_Item_Ledger" extends "Item Ledger Entry" {
    fields {
        field(50380; KOB_display; Text[100]) {
            FieldClass = FlowField;
            CalcFormula = Lookup(Item.Description where("No." = field("Item No.")));
        }
    }
}
