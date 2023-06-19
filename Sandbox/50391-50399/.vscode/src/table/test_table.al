table 50391 Table_test
{
    Caption = 'Test Data For Practice';
    Description = 'Comment for Doing Sth.';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;MyField; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;

        }
    }
    
    // var
    //     value1: Integer;
    //     value2: Text;
    
    trigger OnInsert()
    begin
        Message('Data inserted');
    end;
    
    trigger OnModify()
    begin
        Message('Data modified');
    end;
    
    trigger OnDelete()
    begin
        Message('Data deleted');
    end;
    
    trigger OnRename()
    begin
        Message('Data renamed');
    end;
    
}