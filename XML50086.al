xmlport 90086 "Master Base Job Task"
{
    Format = VariableText;
    schema
    {
        textelement(Root)
        {
            tableelement("Job Task"; "Job Task")
            {
                XmlName = 'JobTask';
                textelement(JobNo)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        gvJobNo := JobNo;
                    end;
                }
                textelement(JobTaskNo)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        gvJobTaskNo := JobTaskNo;
                    end;
                }
                textelement(Desc)
                {
                }
                textelement(JobTaskType)
                {
                }
                textelement(WIPTotal)
                {
                }
                textelement(JobPostingGroup)
                {
                }
                textelement(Totaling)
                {
                }
                textelement(NewPage)
                {
                }
                textelement(NoOfBlankLines)
                {
                }
                textelement(Indentation)
                {
                }
                textelement(RecSalesAmt)
                {
                }
                textelement(RecCostAmt)
                {
                }
                textelement(GlobalDim1)
                {
                }
                textelement(GlobalDim2)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvJobTask: Record "Job Task";
                    begin
                        lvJobTask.Init();
                        lvJobTask."Job No." := JobNo;
                        lvJobTask."Job Task No." := JobTaskNo;
                        lvJobTask.Description := Desc;
                        Evaluate(lvJobTask."Job Task Type", JobTaskType);
                        Evaluate(lvJobTask."WIP-Total", WIPTotal);
                        lvJobTask."Job Posting Group" := JobPostingGroup;
                        lvJobTask.Totaling := Totaling;
                        Evaluate(lvJobTask."New Page", NewPage);
                        Evaluate(lvJobTask."No. of Blank Lines", NoOfBlankLines);
                        Evaluate(lvJobTask.Indentation, Indentation);
                        Evaluate(lvJobTask."Recognized Sales Amount", RecSalesAmt);
                        Evaluate(lvJobTask."Recognized Costs Amount", RecCostAmt);
                        lvJobTask."Global Dimension 1 Code" := GlobalDim1;
                        lvJobTask."Global Dimension 2 Code" := GlobalDim2;
                        /* Evaluate(lvJobTask."Print Order", PrintOrder);
                         lvJobTask."Work Type Code" := WorkTypeCode;
                         lvJobTask."CCS Master Job No." := MasterJobNo;
                         lvJobTask."CCS Resource No." := ResourceNo;
                         lvJobTask."CCS Resource Group" := ResourceGroupNo;
                         lvJobTask."CCS Resource Name" := ResourceName;
                         lvJobTask."CCS Vendor" := Vendor;
                         Evaluate(lvJobTask."CCS Fixed Cost", FixedCost);
                         Evaluate(lvJobTask."CCS Percent Margin", PercentMargin);
                         Evaluate(lvJobTask."CCS Start Planning Date", StartPlanningDate);*/
                        lvJobTask.Insert();
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    lvJobTask: Record "Job Task";
                begin
                    if lvJobTask.Get(gvJobNo, gvJobTaskNo) then
                        currXMLport.SKIP;

                end;

            }
        }
    }

    var
        gvJobNo: Code[20];
        gvJobTaskNo: Code[20];
}

