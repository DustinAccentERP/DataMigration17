table 90900 XMLImportLogFile
{

    fields
    {
        field(1; ID; Integer)
        {
        }
        field(2; Filename; Text[250])
        {
        }
        field(3; "XMLPORT ID"; Integer)
        {
        }
        field(4; Status; Option)
        {
            OptionMembers = " ",Failed,Success;
        }
        field(5; ErrorMsg; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; ID)
        {
        }
    }

    fieldgroups
    {
    }

    procedure SetUpNewLogLine(xmlport_id: Integer): Integer;
    var
        xmlLog: Record XMLImportLogFile;
    begin
        xmlLog.INIT;
        xmlLog.ID := getLastLogNo();
        xmlLog."XMLPORT ID" := xmlport_id;
        xmlLog.INSERT;
        exit(xmlLog.ID);
    end;

    procedure getLastLogNo(): Integer;
    var
        tempLog: Record XMLImportLogFile;
    begin
        if tempLog.FINDLAST() then
            exit(tempLog.ID + 1)
        else
            exit(1);
    end;
}

