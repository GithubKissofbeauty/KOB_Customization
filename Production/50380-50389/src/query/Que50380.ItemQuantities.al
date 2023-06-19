query 50380 "KOB_Item_Quantities"
{
    QueryType = Normal;
    Caption = 'KOB_Item_Quantities';
    QueryCategory = 'Item List';

    elements
    {
        dataitem(Item; Item)
        {
            column(No; "No.")
            {
            }
            column(Description; "Description")
            {
            }
            column(Inventory; Inventory)
            {
                Caption = 'Qty on Hand';
            }
            column(Qty_on_Purch_Order; "Qty. on Purch. Order")
            {
                Caption = 'Qty. on Purch. Order';
            }
            column(Qty_on_Sales_Order; "Qty. on Sales Order")
            {
                Caption = 'Qty. on Sales Order';
            }
            column(Net_Invoiced_Qty; "Net Invoiced Qty.")            
            {
                Caption = 'Net Invoiced Qty.';
            }
            column(Qty_on_Consign_Order; "UBC_Qty. on Consign Order")            
            {
                Caption = 'Net Invoiced Qty.';
            }
        }
    }
}