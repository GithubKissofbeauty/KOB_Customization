reportextension 50384 "KOB_Purchase_Requisition" extends "UBL_Purchase Requisition"

{
    dataset
    {
        add("Purchase Line")
        {
            column(KOB_VAT; "VAT %"){}
        }

    }
}
