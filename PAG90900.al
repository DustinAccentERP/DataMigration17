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
            action("Job No. Batch")
            {
                trigger OnAction();
                var
                    cod90900: Codeunit "Master Data Migration";
                begin
                    cod90900.TransferDesc2ToJobNoBatch();
                end;


            }
        }
    }
}

