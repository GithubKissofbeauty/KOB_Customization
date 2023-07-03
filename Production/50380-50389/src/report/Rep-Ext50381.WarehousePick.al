reportextension 50381 "KOB_Warehouse_Pick" extends "Picking List"
{
    dataset
    {
        add("Warehouse Activity Header")
        {
            column(KOB_DestinationNo; "Destination No."){}
        }
        add("Warehouse Activity Line")
        {
            column(KOB_Expiration_Date; "Expiration Date"){}
        }
    }
}
