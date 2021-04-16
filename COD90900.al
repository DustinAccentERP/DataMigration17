codeunit 90900 "Master Data Migration"
{

    trigger OnRun();
    begin

    end;


    local procedure ImportHelper(log: Record XMLImportLogFile);
    var
        CSV: File;
        CSVStream: InStream;
    begin
        CSV.OPEN(log.Filename);
        CSV.CREATEINSTREAM(CSVStream);
        XMLPORT.IMPORT(log."XMLPORT ID", CSVStream);
        //IF XMLPORT.IMPORT(log."XMLPORT ID", CSVStream) then begin
        //    log.Status := log.Status::Success;
        //end else begin
        //    log.Status := log.Status::Failed;
        //    log.ErrorMsg := 'failed to import';
        //end;
        log.MODIFY();
        CSV.CLOSE;
    end;

    procedure Logger(Filename: Text[250]; XmlPortNo: Integer);
    var
        logId: Integer;
        log: Record XMLImportLogFile;
    begin
        CLEAR(log);
        logId := log.SetUpNewLogLine(XmlPortNo);

        log.GET(logId);
        log.Filename := Filename;
        log.MODIFY;

        ImportHelper(log);
    end;

    procedure TransferDesc2ToJobNoBatch()
    var
        Job: record Job;
    begin
        Job.SetFilter("Description 2", '<>%1', '');
        if Job.FindSet() then begin
            repeat
                Message(Job."No.");
                Job."No." := Job."Description 2";
                Job.Modify();
                Message(Job."No.");
            until Job.Next() = 0;
        end;
    end;
}

