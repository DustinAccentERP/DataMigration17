page 90900 "XMLIMPORT Log"
{
    PageType = List;
    SourceTable = XMLImportLogFile;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(ID; ID)
                {
                }
                field(Filename; Filename)
                {
                }
                field("XMLPORT ID"; "XMLPORT ID")
                {
                }
                field(Status; Status)
                {
                }
                field(ErrorMsg; ErrorMsg)
                {
                }
                field(Lengthoftime; recordDuration)
                {
                    Caption = 'Duration';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Run Import")
            {
                Caption = 'Run Import';
                RunObject = Report XMLImportDriver;
            }
            action("Run Import Batch")
            {
                RunObject = codeunit "DataMigration Batch";
            }
            action("Job No. Batch")
            {
                trigger OnAction();
                var
                    cod90900: Codeunit "Master Data Migration";
                begin
                    cod90900.TransferDesc2ToJobNoBatch();
                end;


            }
            /*action("Clear Data")
            {
                trigger OnAction();
                var
                    CleaningDriver: Report "Data Cleaning Driver";
                begin
                    if Dialog.Confirm('This will clear the database. Are you sure you wish to continue?') then
                        CleaningDriver.Run();
                end;

            }*/
        }
    }
    trigger OnAfterGetRecord();
    begin
        recordDuration := Rec.getDuration();
    end;

    var
        recordDuration: Duration;
}

