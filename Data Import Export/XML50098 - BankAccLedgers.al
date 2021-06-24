xmlport 90098 "Master Base Bank Acc Entry"
{
    Format = VariableText;
    Permissions = tabledata "Bank Account Ledger Entry" = rimd, tabledata "Check Ledger Entry" = rimd;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(bankAccountLedger; "Bank Account Ledger Entry")
            {
                textelement(BALEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvBankAccEntryNo, BALEntryNo);
                    end;
                }
                textelement(BABankAccountNo) { }
                textelement(BAPostingDate) { }
                textelement(BADocumentType) { }
                textelement(BADocumentNo) { }
                textelement(BADescription) { }
                textelement(BACurrCode) { }
                textelement(BAAmount) { }
                textelement(BARemainingAmount) { }
                textelement(BAAmountLCY) { }
                textelement(BABankAccPostingGroup) { }
                textelement(BAGlobDim1) { }
                textelement(BAGlobDim2) { }
                textelement(BAOurContactCode) { }
                textelement(BAUserId) { }
                textelement(BASourceCode) { }
                textelement(BAOpen) { }
                textelement(BAPositive) { }
                textelement(BAClosedByEntryNo) { }
                textelement(BAClosedatDate) { }
                textelement(BAJournalBatchName) { }
                textelement(BAReasonCode) { }
                textelement(BABalAccountType) { }
                textelement(BABalAccountNo) { }
                textelement(BATransactionNo) { }
                textelement(BAStatementStatus) { }
                textelement(BAStatementNo) { }
                textelement(BADebit) { }
                textelement(BACredit) { }
                textelement(BADebitLCY) { }
                textelement(BACreditLCY) { }
                textelement(BADocumentDate) { }
                textelement(BAExtDocNo) { }
                textelement(BAReversed) { }
                textelement(BAReversedByEntry) { }
                textelement(BAReversedEntry)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvBALedger: Record "Bank Account Ledger Entry";
                    begin
                        lvBALedger.Init();
                        Evaluate(lvBaLedger."Entry No.", BALEntryNo);
                        lvBaLedger."Bank Account No." := BABankAccountNo;
                        Evaluate(lvBaLedger."Posting Date", BAPostingDate);
                        Evaluate(lvBaLedger."Document Type", BADocumentType);
                        lvBaLedger."Document No." := BADocumentNo;
                        lvBaLedger.Description := BADescription;
                        lvBaLedger."Currency Code" := BACurrCode;
                        Evaluate(lvBaLedger.Amount, BAAmount);
                        Evaluate(lvBaLedger."Remaining Amount", BARemainingAmount);
                        Evaluate(lvBaLedger."Amount (LCY)", BAAmountLCY);
                        lvBaLedger."Bank Acc. Posting Group" := BABankAccPostingGroup;
                        lvBaLedger."Global Dimension 1 Code" := BAGlobDim1;
                        lvBaLedger."Global Dimension 2 Code" := BAGlobDim2;
                        lvBaLedger."Our Contact Code" := BAOurContactCode;
                        lvBaLedger."User ID" := BAUserId;
                        lvBaLedger."Source Code" := BASourceCode;
                        Evaluate(lvBaLedger.Open, BAOpen);
                        Evaluate(lvBaLedger.Positive, BAPositive);
                        Evaluate(lvBaLedger."Closed by Entry No.", BAClosedByEntryNo);
                        Evaluate(lvBaLedger."Closed at Date", BAClosedatDate);
                        lvBaLedger."Journal Batch Name" := BAJournalBatchName;
                        lvBaLedger."Reason Code" := BAReasonCode;
                        Evaluate(lvBaLedger."Bal. Account Type", BABalAccountType);
                        lvBaLedger."Bal. Account No." := BABalAccountNo;
                        Evaluate(lvBaLedger."Transaction No.", BATransactionNo);
                        Evaluate(lvBaLedger."Statement Status", BAStatementStatus);
                        lvBaLedger."Statement No." := BAStatementNo;
                        Evaluate(lvBaLedger."Debit Amount", BADebit);
                        Evaluate(lvBaLedger."Credit Amount", BACredit);
                        Evaluate(lvBaLedger."Debit Amount (LCY)", BADebitLCY);
                        Evaluate(lvBaLedger."Credit Amount (LCY)", BACreditLCY);
                        Evaluate(lvBaLedger."Document Date", BADocumentDate);
                        lvBaLedger."External Document No." := BAExtDocNo;
                        Evaluate(lvBaLedger.Reversed, BAReversed);
                        Evaluate(lvBaLedger."Reversed by Entry No.", BAReversedByEntry);
                        Evaluate(lvBaLedger."Reversed Entry No.", BAReversedEntry);
                        lvBALedger.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvBALedger: Record "Bank Account Ledger Entry";
                begin
                    if lvBALedger.get(gvBankAccEntryNo) then
                        currXMLport.Skip;
                end;
            }
            tableelement(checkLedgerEntry; "Check Ledger Entry")
            {
                textelement(CLEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvCheckLedgerEntryNo, CLEntryNo);
                    end;
                }

                textelement(CLBankAccNo) { }
                textelement(CLBankAccLedgerEntryNo) { }
                textelement(CLPostingDate) { }
                textelement(CLDocuType) { }
                textelement(CLDocuNo) { }
                textelement(CLDesc) { }
                textelement(CLAmt) { }
                textelement(CLCheckDate) { }
                textelement(CLCheckNo) { }
                textelement(CLCheckType) { }
                textelement(CLBankPaymentType) { }
                textelement(CLEntryStatus) { }
                textelement(CLOriginalEntryStatus) { }
                textelement(CLBalAccType) { }
                textelement(CLBalAccNo) { }
                textelement(CLOpen) { }
                textelement(CLStatementStatus) { }
                textelement(CLStatementNo) { }
                textelement(CLStatementLineNo) { }
                textelement(CLUserId) { }
                textelement(CLExternalDocNo) { }
                textelement(CLTraceNo) { }
                textelement(CLTransmissionFileName)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvCheckLedger: Record "Check Ledger Entry";
                    begin
                        lvCheckLedger.Init();
                        Evaluate(lvCheckLedger."Entry No.", CLEntryNo);
                        lvCheckLedger."Bank Account No." := CLBankAccNo;
                        Evaluate(lvCheckLedger."Bank Account Ledger Entry No.", CLBankAccLedgerEntryNo);
                        Evaluate(lvCheckLedger."Posting Date", CLPostingDate);
                        Evaluate(lvCheckLedger."Document Type", CLDocuType);
                        lvCheckLedger."Document No." := CLDocuNo;
                        lvCheckLedger.Description := CLDesc;
                        Evaluate(lvCheckLedger.Amount, CLAmt);
                        Evaluate(lvCheckLedger."Check Date", CLCheckDate);
                        lvCheckLedger."Check No." := CLCheckNo;
                        Evaluate(lvCheckLedger."Check Type", CLCheckType);
                        Evaluate(lvCheckLedger."Bank Payment Type", CLBankPaymentType);
                        Evaluate(lvCheckLedger."Entry Status", CLEntryStatus);
                        Evaluate(lvCheckLedger."Original Entry Status", CLOriginalEntryStatus);
                        Evaluate(lvCheckLedger."Bal. Account Type", CLBalAccType);
                        lvCheckLedger."Bal. Account No." := CLBalAccNo;
                        Evaluate(lvCheckLedger.Open, CLOpen);
                        Evaluate(lvCheckLedger."Statement Status", CLStatementStatus);
                        lvCheckLedger."Statement No." := CLStatementNo;
                        Evaluate(lvCheckLedger."Statement Line No.", CLStatementLineNo);
                        lvCheckLedger."User ID" := CLUserId;
                        lvCheckLedger."External Document No." := CLExternalDocNo;
                        lvCheckLedger."Trace No." := CLTraceNo;
                        lvCheckLedger."Transmission File Name" := CLTransmissionFileName;
                        lvCheckLedger.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvCheckLedger: Record "Check Ledger Entry";
                begin
                    if lvCheckLedger.get(gvCheckLedgerEntryNo) then
                        currXMLport.Skip;
                end;
            }
        }
    }



    var
        gvBankAccEntryNo: Integer;
        gvCheckLedgerEntryNo: Integer;
}