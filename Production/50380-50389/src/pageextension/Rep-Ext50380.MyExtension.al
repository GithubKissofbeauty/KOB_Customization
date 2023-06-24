reportextension 50380 "KOB_MyExtension" extends "KOB_Consignment S.Credit Memo"
{
    dataset
    {
        add("UBC_Posted Consignment Header")
        {
            column(KOB_YourReference; "UBC_Your Reference"){}
        }
    }
}
