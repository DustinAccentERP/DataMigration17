xmlport 90099 "Master Base Bank"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(BankAccReconciliation; "Bank Acc. Reconciliation")
            {
                // key:Bank Account No.,Statement No.
                textelement(BARBankAccNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBARBankAccNo := BARBankAccNo;
                    end;
                }
                textelement(BARStatementNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBARStatementNo := BARStatementNo;
                    end;
                }
                textelement(BARStatementEndingBal) { }
                textelement(BARStatementDate) { }
                textelement(BARBalLastStatement)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvBankRec: Record "Bank Acc. Reconciliation";
                    begin
                        lvBankRec.Init();
                        lvBankRec."Bank Account No." := BARBankAccNo;
                        lvBankRec."Statement No." := BARStatementNo;
                        Evaluate(lvBankRec."Statement Ending Balance", BARStatementEndingBal);
                        Evaluate(lvBankRec."Statement Date", BARStatementDate);
                        Evaluate(lvBankRec."Balance Last Statement", BARBalLastStatement);
                        lvBankRec."Statement Type" := lvBankRec."Statement Type"::"Bank Reconciliation";
                        lvBankRec.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord()
                var
                    lvBankRec: Record "Bank Acc. Reconciliation";
                begin
                    //   if lvBankRec.Get(gvBARBankAccNo, gvBARStatementNo) then
                    currXMLport.Skip();
                end;
            }
            tableelement(BankAccReconciliationLine; "Bank Acc. Reconciliation Line")
            {
                // Key:Bank Account No.,Statement No.,Statement Line No.
                textelement(BARLBankAccNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBARLBankAccNo := BARLBankAccNo;
                    end;
                }
                textelement(BARLStatementNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBARLStatementNo := BARLStatementNo;
                    end;
                }
                textelement(BARLStatementLineNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvBARLStatementLineNo, BARLStatementLineNo);
                    end;
                }
                textelement(BARLDocNo) { }
                textelement(BARLTransactionDate) { }
                textelement(BARLDescription) { }
                textelement(BARLStatementAmt) { }
                textelement(BARLDifference) { }
                textelement(BARLAppliedAmt) { }
                textelement(BARLType) { }
                textelement(BARLAppliedEntries) { }
                textelement(BARLValueDate) { }
                textelement(BARLReadyForApplications) { }
                textelement(BARLCheckNo)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvBankRecLine: Record "Bank Acc. Reconciliation Line";
                    begin
                        lvBankRecLine.Init();
                        lvBankRecLine."Bank Account No." := BARLBankAccNo;
                        lvBankRecLine."Statement No." := BARLStatementNo;
                        Evaluate(lvBankRecLine."Statement Line No.", BARLStatementLineNo);
                        lvBankRecLine."Document No." := BARLDocNo;
                        Evaluate(lvBankRecLine."Transaction Date", BARLTransactionDate);
                        lvBankRecLine.Description := BARLDescription;
                        Evaluate(lvBankRecLine."Statement Amount", BARLStatementAmt);
                        Evaluate(lvBankRecLine.Difference, BARLDifference);
                        Evaluate(lvBankRecLine."Applied Amount", BARLAppliedAmt);
                        Evaluate(lvBankRecLine.Type, BARLType);
                        Evaluate(lvBankRecLine."Applied Entries", BARLAppliedEntries);
                        Evaluate(lvBankRecLine."Value Date", BARLValueDate);
                        Evaluate(lvBankRecLine."Ready for Application", BARLReadyForApplications);
                        lvBankRecLine."Check No." := BARLCheckNo;
                        lvBankRecLine."Statement Type" := lvBankRecLine."Statement Type"::"Bank Reconciliation";
                        lvBankRecLine.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord()
                var
                    lvBankRecLine: Record "Bank Acc. Reconciliation Line";
                begin
                    // if lvBankRecLine.Get(gvBARLBankAccNo, gvBARLStatementNo, gvBARLStatementLineNo) then
                    currXMLport.Skip();
                end;
            }
            tableelement(BankAccountStatement; "Bank Account Statement")
            {
                // key:Bank Account No.,Statement No.
                textelement(BASBankAccNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBASBankAccNo := BARBankAccNo;
                    end;
                }
                textelement(BASStatementNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBASStatementNo := BARStatementNo;
                    end;
                }
                textelement(BASStatementEndingBal) { }
                textelement(BASStatementDate) { }
                textelement(BASBalLastStatement)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvBankAccStatement: Record "Bank Account Statement";
                    begin
                        lvBankAccStatement.Init();
                        lvBankAccStatement."Bank Account No." := BASBankAccNo;
                        lvBankAccStatement."Statement No." := BASStatementNo;
                        Evaluate(lvBankAccStatement."Statement Ending Balance", BASStatementEndingBal);
                        Evaluate(lvBankAccStatement."Statement Date", BASStatementDate);
                        Evaluate(lvBankAccStatement."Balance Last Statement", BASBalLastStatement);
                        lvBankAccStatement.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord()
                var
                    lvBankAccStatement: Record "Bank Account Statement";
                begin
                    //  if lvBankAccStatement.Get(gvBASBankAccNo, gvBASStatementNo) then
                    currXMLport.Skip();
                end;
            }
            tableelement(BankAccountStatementLine; "Bank Account Statement Line")
            {
                // Key:Bank Account No.,Statement No.,Statement Line No.
                textelement(BASLBankAccNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBASLBankAccNo := BARLBankAccNo;
                    end;
                }
                textelement(BASLStatementNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvBASLStatementNo := BARLStatementNo;
                    end;
                }
                textelement(BASLStatementLineNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvBARLStatementLineNo, BARLStatementLineNo);
                    end;
                }
                textelement(BASLDocNo) { }
                textelement(BASLTransactionDate) { }
                textelement(BASLDescription) { }
                textelement(BASLStatementAmt) { }
                textelement(BASLDifference) { }
                textelement(BASLAppliedAmt) { }
                textelement(BASLType) { }
                textelement(BASLAppliedEntries) { }
                textelement(BASLValueDate) { }
                textelement(BASLCheckNo)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvBankStatementLine: Record "Bank Account Statement Line";
                    begin
                        lvBankStatementLine.Init();
                        lvBankStatementLine."Bank Account No." := BASLBankAccNo;
                        lvBankStatementLine."Statement No." := BASLStatementNo;
                        Evaluate(lvBankStatementLine."Statement Line No.", BASLStatementLineNo);
                        lvBankStatementLine."Document No." := BASLDocNo;
                        Evaluate(lvBankStatementLine."Transaction Date", BASLTransactionDate);
                        lvBankStatementLine.Description := BASLDescription;
                        Evaluate(lvBankStatementLine."Statement Amount", BASLStatementAmt);
                        Evaluate(lvBankStatementLine.Difference, BASLDifference);
                        Evaluate(lvBankStatementLine."Applied Amount", BASLAppliedAmt);
                        Evaluate(lvBankStatementLine.Type, BASLType);
                        Evaluate(lvBankStatementLine."Applied Entries", BASLAppliedEntries);
                        Evaluate(lvBankStatementLine."Value Date", BASLValueDate);
                        //   Evaluate(lvBankStatementLine."Ready for Application", BARLReadyForApplications);
                        lvBankStatementLine."Check No." := BASLCheckNo;
                        lvBankStatementLine.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord()
                var
                    lvBankStateine: Record "Bank Account Statement Line";
                begin
                    //  if lvBankStateine.Get(gvBASLBankAccNo, gvBASLStatementNo, gvBASLStatementLineNo) then
                    currXMLport.Skip();
                end;
            }
        }
    }
    var
        gvBARBankAccNo: Code[20];
        gvBARStatementNo: Code[20];
        gvBASBankAccNo: Code[20];
        gvBASStatementNo: Code[20];
        gvBARLBankAccNo: Code[20];
        gvBARLStatementNo: Code[20];
        gvBARLStatementLineNo: Integer;
        gvBASLBankAccNo: Code[20];
        gvBASLStatementNo: Code[20];
        gvBASLStatementLineNo: Integer;

}