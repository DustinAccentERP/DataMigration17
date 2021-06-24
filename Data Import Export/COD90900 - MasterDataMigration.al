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
        log.StartTime := CreateDateTime(WorkDate(), Time());
        If CSV.OPEN(log.Filename) then begin
            CSV.CREATEINSTREAM(CSVStream);
            XMLPORT.IMPORT(log."XMLPORT ID", CSVStream);
            //if XMLPORT.IMPORT(log."XMLPORT ID", CSVStream) then begin
            log.Status := log.Status::Success;
            log.EndTime := CreateDateTime(WorkDate(), Time());
            log.Modify();
            // end else begin
            ///     log.ErrorMsg := 'Problem with the xml file.';
            //     log.Status := log.Status::Failed;
            //     log.EndTime := CreateDateTime(WorkDate(), Time());
            //     log.Modify();
            // end;
            // log.MODIFY();
            CSV.CLOSE;

        end else begin
            log.ErrorMsg := 'Could not open file.';
            log.Status := log.Status::Failed;
            log.EndTime := CreateDateTime(WorkDate(), Time());
            log.Modify();
        end;
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

