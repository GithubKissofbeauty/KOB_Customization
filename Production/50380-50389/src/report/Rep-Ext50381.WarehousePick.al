reportextension 50381 "KOB_Warehouse_Pick" extends "Picking List"
{
    dataset
    {
        add(WhseActLine)
        {
            column(KOB_Expiration_Date; "Expiration Date"){}
            column(KOB_DestinationNo; "Destination No."){}
        }

    }
}
