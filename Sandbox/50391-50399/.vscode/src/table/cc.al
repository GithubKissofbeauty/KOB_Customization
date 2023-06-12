codeunit 50391 MyCodeunit
{
    trigger OnRun()
    begin
        CustQuery.SetFilter(No, 'C-0004?');
        CustQuery.OPEN;
        while CustQuery.READ do begin
            Message(Textbox, CustQuery.No, CustQuery.Address);
        end;
        CustQuery.CLOSE;
    end;

    var
        CustQuery: Query "Query_text";
        Textbox: TextConst ENU = 'Customer name = %1, Quantity =%2.';
}