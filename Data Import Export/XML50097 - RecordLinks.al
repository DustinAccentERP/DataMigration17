xmlport 90097 "Master Base Record Links"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(RecordLink; "Record Link")
            {
                textelement(RLLinkID)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvLinkID, RLLinkID);
                    end;
                }
                textelement(RLRecordID) { }
                textelement(RLUrl1) { }
                textelement(RLUrl2) { }
                textelement(RLUrl3) { }
                textelement(RLUrl4) { }
                textelement(RLDesc) { }
                textelement(RLType) { }
                textelement(RLCreated) { }
                textelement(RLUserID) { }
                textelement(RLCompany) { }
                textelement(RLNotify) { }
                textelement(RLToUserID)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvRecordLink: Record "Record Link";
                    begin

                        lvRecordLink.Init();

                        Evaluate(lvRecordLink."Link ID", RLLinkID);
                        Evaluate(lvRecordLink."Record ID", RLRecordID);
                        lvRecordLink.URL1 := RLUrl1;
                        //lvRecordLink.URL2 := RLUrl2;
                        //lvRecordLink.URL3 := RLUrl3;
                        //lvRecordLink.URL4 := RLUrl4;
                        lvRecordLink.Description := RLDesc;
                        Evaluate(lvRecordLink.Type, RLType);
                        Evaluate(lvRecordLink.Created, RLCreated);
                        lvRecordLink."User ID" := RLUserID;
                        lvRecordLink.Company := RLCompany;
                        Evaluate(lvRecordLink.Notify, RLNotify);
                        lvRecordLink."To User ID" := RLToUserID;

                        lvRecordLink.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvRecordLink: Record "Record Link";
                begin
                    if lvRecordLink.get(gvLinkID) then
                        currXMLport.Skip;
                end;
            }
        }
    }
    var
        gvLinkID: Integer;
}