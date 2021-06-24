xmlport 90093 "Master Base Res Ledgers"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(ResLedgerEntry; "Res. Ledger Entry")
            {
                textelement(RLEEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvRLEntryNo, RLEEntryNo);
                    end;
                }
                textelement(RLEEntryType) { }
                textelement(RLEDocNo) { }
                textelement(RLEPostingDate) { }
                textelement(RLEResourceNo) { }
                textelement(RLEResourceGroupNo) { }
                textelement(RLEDesc) { }
                textelement(RLEWorkTypeCode) { }
                textelement(RLEJobNo) { }
                textelement(RLEUnitMeasureCode) { }
                textelement(RLEQuantity) { }
                textelement(RLEDirectUnitCost) { }
                textelement(RLEUnitCost) { }
                textelement(RLETotalCost) { }
                textelement(RLEUnitPrice) { }
                textelement(RLETotalPrice) { }
                textelement(RLEGlobDim1) { }
                textelement(RLEGlobDim2) { }
                textelement(RLEUserId) { }
                textelement(RLESourceCode) { }
                textelement(RLEChargable) { }
                textelement(RLEJournalBatchName) { }
                textelement(RLEReasonCode) { }
                textelement(RLEGenBusPostinGroup) { }
                textelement(RLEGenProdPostingGroup) { }
                textelement(RLEDocuDate) { }
                textelement(RLEExtDocNo) { }
                textelement(RLENoSeries) { }
                textelement(RLESourceType) { }
                textelement(RLESourceNo) { }
                textelement(RLEQtyPerUnitOfMeasure) { }
                textelement(RLEQtyBase)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvRLE: Record "Res. Ledger Entry";
                    begin
                        lvRLE.Init();
                        Evaluate(lvRLE."Entry No.", RLEEntryNo);
                        Evaluate(lvRLE."Entry Type", RLEEntryType);
                        lvRLE."Document No." := RLEDocNo;
                        Evaluate(lvRLE."Posting Date", RLEPostingDate);
                        lvRLE."Resource No." := RLEResourceNo;
                        lvRLE."Resource Group No." := (RLEResourceGroupNo);
                        lvRLE.Description := RLEDesc;
                        lvRLE."Work Type Code" := RLEWorkTypeCode;
                        lvRLE."Job No." := RLEJobNo;
                        lvRLE."Unit of Measure Code" := RLEUnitMeasureCode;
                        Evaluate(lvRLE.Quantity, RLEQuantity);
                        Evaluate(lvRLE."Direct Unit Cost", RLEDirectUnitCost);
                        Evaluate(lvRLE."Unit Cost", RLEUnitCost);
                        Evaluate(lvRLE."Total Cost", RLETotalCost);
                        Evaluate(lvRLE."Unit Price", RLEUnitPrice);
                        Evaluate(lvRLE."Total Price", RLETotalPrice);
                        lvRLE."Global Dimension 1 Code" := RLEGlobDim1;
                        lvRLE."Global Dimension 2 Code" := RLEGlobDim2;
                        lvRLE."User ID" := RLEUserId;
                        lvRLE."Source Code" := RLESourceCode;
                        Evaluate(lvRLE.Chargeable, RLEChargable);
                        lvRLE."Journal Batch Name" := RLEJournalBatchName;
                        lvRLE."Reason Code" := RLEReasonCode;
                        lvRLE."Gen. Bus. Posting Group" := RLEGenBusPostinGroup;
                        lvRLE."Gen. Prod. Posting Group" := RLEGenProdPostingGroup;
                        Evaluate(lvRLE."Document Date", RLEDocuDate);
                        lvRLE."External Document No." := RLEExtDocNo;
                        lvRLE."No. Series" := RLENoSeries;
                        Evaluate(lvRLE."Source Type", RLESourceType);
                        lvRLE."Source No." := RLESourceNo;
                        Evaluate(lvRLE."Qty. per Unit of Measure", RLEQtyPerUnitOfMeasure);
                        Evaluate(lvRLE."Quantity (Base)", RLEQtyBase);
                        lvRLE.Insert();
                    end;

                }
                trigger OnBeforeInsertRecord();
                var
                    lvRLE: record "Res. Ledger Entry";
                begin
                    if lvRLE.get(gvRLEntryNo) then
                        currXMLport.Skip;
                end;
            }
        }
    }
    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    var
        gvCLEEntryNo: Integer;
        gvVLEEntryNo: Integer;
        gvDCLEEntryNo: Integer;
        gvDVLEEntryNo: Integer;
        gvRLEntryNo: Integer;
}