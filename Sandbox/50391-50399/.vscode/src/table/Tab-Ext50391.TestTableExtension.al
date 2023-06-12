tableextension 50391 "test_extension_table" extends Customer
{
    fields
    {
        field(50391; extension_field; Text[20])
        {
            Caption = 'extension_field';
            DataClassification = ToBeClassified;
        }
    }
}
