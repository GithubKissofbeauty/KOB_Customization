reportextension 50382 "KOB_Sales_Shipment" extends "Sales - Shipment"

{
    dataset
    {
        add("Sales Shipment Line")
        {
            column(KOB_Expiration_Date; KOB_expiration_date){}
        }

    }
}