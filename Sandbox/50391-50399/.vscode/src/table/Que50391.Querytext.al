query 50391 Query_text
{
    Caption = 'Query_text';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer; Customer)
        {
            DataItemTableFilter = "Phone No." = filter(<> '');
            column(No; "No.")
            {
            }
            column(Address; Address)
            {
            }
            column(ShiptoCode; "Ship-to Code")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}

