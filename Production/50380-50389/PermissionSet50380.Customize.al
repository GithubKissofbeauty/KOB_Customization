permissionset 50380 "KOB_Customize"
{
    Assignable = true;
    Permissions = report "KOB_Inventory On Hand Report"=X,
        report "KOB_Return Consign Confirm"=X,
        page KOB_PR_Per_Line=X,
        query KOB_Item_Quantities=X,
        tabledata KOB_Combine_Credit_Consign=RIMD,
        table KOB_Combine_Credit_Consign=X,
        page KOB_Combine_Credit_Consign=X;
}