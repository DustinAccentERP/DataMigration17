report 90900 XMLImportDriver
{
    ProcessingOnly = true;

    dataset
    {
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(SelectedXMLPort; SelectedXMLPort)
                {
                    Caption = 'XMLPort';
                    TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(XMLport));
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        SelectedFilename := FileMgt.OpenFileDialog('NAV File Browser', '*.csv', '');

        XMLDataMigration.Logger(SelectedFilename, SelectedXMLPort);
    end;

    var
        SelectedXMLPort: Integer;
        SelectedFilename: Text[250];
        FileMgt: Codeunit "File Management";
        SelectedFile: File;
        XMLDataMigration: Codeunit "Master Data Migration";
}

