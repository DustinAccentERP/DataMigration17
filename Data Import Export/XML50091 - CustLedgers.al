xmlport 90091 "Master Base Cust Ledgers"
{
    Format = VariableText;
    Permissions = tabledata "Cust. Ledger Entry" = rimd;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(CustLedgerEntry; "Cust. Ledger Entry")
            {
                XmlName = 'CustLedgerEntry';
                textelement(CLEEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvCLEEntryNo, CLEEntryNo);
                    end;
                }
                textelement(CLECustNo) { }
                textelement(CLEPostingDate) { }
                textelement(CLEDocType) { }
                textelement(CLEDocNo) { }
                textelement(CLEDesc) { }
                textelement(CLECurrency) { }
                textelement(CLESalesLCY) { }
                textelement(CLEProfitLCY) { }
                textelement(CLEInvDiscLCY) { }
                textelement(CLESellToCustNo) { }
                textelement(CLECustPostingGroup) { }
                textelement(CLEGlobDim1Code) { }
                textelement(CLEGlobDim2Code) { }
                textelement(CLESalespersonCode) { }
                textelement(CLEUserID) { }
                textelement(CLESourceCode) { }
                textelement(CLEOnHold) { }
                textelement(CLEAppliesDocType) { }
                textelement(CLEAppliesDocNo) { }
                textelement(CLEOpen) { }
                textelement(CLEDueDate) { }
                textelement(CLEPmtDiscountDate) { }
                textelement(CLEPmtDiscGivenLCY) { }
                textelement(CLEPositive) { }
                textelement(CLEClosedByEntryNo) { }
                textelement(CLEClosedAtDate) { }
                textelement(CLEClosedByAmount) { }
                textelement(CLEAppliesID) { }
                textelement(CLEJournalBatchName) { }
                textelement(CLEReasonCode) { }
                textelement(CLEBalAccountType) { }
                textelement(CLEBalAccountNo) { }
                textelement(CLETransactionNo) { }
                textelement(CLEClosedByAccountLCY) { }
                textelement(CLEDocumentDate) { }
                textelement(CLEExternalDocNo) { }
                textelement(CLECalcuateInterest) { }
                textelement(CLEClosingInterestCalc) { }
                textelement(CLENoSeries) { }
                textelement(CLEClosedByCurrCode) { }
                textelement(CLEClosedByCurrAmt) { }
                textelement(CLEAdjCurrFactor) { }
                textelement(CLEOrigCurrFactor) { }
                textelement(CLERemainingPmtDiscPossible) { }
                textelement(CLEPmtDiscToleranceDate) { }
                textelement(CLEMaxPaymentTolerance) { }
                textelement(CLELastIssuedReminder) { }
                textelement(CLEAcceptedPaymentTolerance) { }
                textelement(CLEAcceptedPmtDiscTolerance) { }
                textelement(CLEPmtToleranceLCY) { }
                textelement(CLEAmountToApply) { }
                textelement(CLEICPartnerCode) { }
                textelement(CLEApplyingEntry) { }
                textelement(CLEReversed) { }
                textelement(CLEReversedByEntryNo) { }
                textelement(CLEReversedEntryNo) { }
                textelement(CLEPrepayment)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvCustLedgerEntry: Record "Cust. Ledger Entry";
                    begin
                        lvCustLedgerEntry.Init();

                        Evaluate(lvCustLedgerEntry."Entry No.", CLEEntryNo);
                        lvCustLedgerEntry."Customer No." := CLECustNo;
                        Evaluate(lvCustLedgerEntry."Posting Date", CLEPostingDate);
                        Evaluate(lvCustLedgerEntry."Document Type", CLEDocType);
                        lvCustLedgerEntry."Document No." := CLEDocNo;
                        lvCustLedgerEntry.Description := CLEDesc;
                        lvCustLedgerEntry."Currency Code" := CLECurrency;
                        Evaluate(lvCustLedgerEntry."Sales (LCY)", CLESalesLCY);
                        Evaluate(lvCustLedgerEntry."Profit (LCY)", CLEProfitLCY);
                        Evaluate(lvCustLedgerEntry."Inv. Discount (LCY)", CLEInvDiscLCY);
                        lvCustLedgerEntry."Sell-to Customer No." := CLESellToCustNo;
                        lvCustLedgerEntry."Customer Posting Group" := CLECustPostingGroup;
                        lvCustLedgerEntry."Global Dimension 1 Code" := CLEGlobDim1Code;
                        lvCustLedgerEntry."Global Dimension 2 Code" := CLEGlobDim2Code;
                        lvCustLedgerEntry."Salesperson Code" := CLESalespersonCode;
                        lvCustLedgerEntry."User ID" := CLEUserID;
                        lvCustLedgerEntry."Source Code" := CLESourceCode;
                        lvCustLedgerEntry."On Hold" := CLEOnHold;
                        Evaluate(lvCustLedgerEntry."Applies-to Doc. Type", CLEAppliesDocType);
                        lvCustLedgerEntry."Applies-to Doc. No." := CLEAppliesDocNo;
                        Evaluate(lvCustLedgerEntry.Open, CLEOpen);
                        Evaluate(lvCustLedgerEntry."Due Date", CLEDueDate);
                        Evaluate(lvCustLedgerEntry."Pmt. Discount Date", CLEPmtDiscountDate);
                        Evaluate(lvCustLedgerEntry."Pmt. Disc. Given (LCY)", CLEPmtDiscGivenLCY);
                        Evaluate(lvCustLedgerEntry.Positive, CLEPositive);
                        Evaluate(lvCustLedgerEntry."Closed by Entry No.", CLEClosedByEntryNo);
                        Evaluate(lvCustLedgerEntry."Closed at Date", CLEClosedAtDate);
                        Evaluate(lvCustLedgerEntry."Closed by Amount", CLEClosedByAmount);
                        lvCustLedgerEntry."Applies-to ID" := CLEAppliesID;
                        lvCustLedgerEntry."Journal Batch Name" := CLEJournalBatchName;
                        lvCustLedgerEntry."Reason Code" := CLEReasonCode;
                        Evaluate(lvCustLedgerEntry."Bal. Account Type", CLEBalAccountType);
                        lvCustLedgerEntry."Bal. Account No." := CLEBalAccountNo;
                        Evaluate(lvCustLedgerEntry."Transaction No.", CLETransactionNo);
                        Evaluate(lvCustLedgerEntry."Closed by Amount (LCY)", CLEClosedByAccountLCY);
                        Evaluate(lvCustLedgerEntry."Document Date", CLEDocumentDate);
                        lvCustLedgerEntry."External Document No." := CLEExternalDocNo;
                        Evaluate(lvCustLedgerEntry."Calculate Interest", CLECalcuateInterest);
                        Evaluate(lvCustLedgerEntry."Closing Interest Calculated", CLEClosingInterestCalc);
                        lvCustLedgerEntry."No. Series" := CLENoSeries;
                        lvCustLedgerEntry."Closed by Currency Code" := CLEClosedByCurrCode;
                        Evaluate(lvCustLedgerEntry."Closed by Currency Amount", CLEClosedByCurrAmt);
                        Evaluate(lvCustLedgerEntry."Adjusted Currency Factor", CLEAdjCurrFactor);
                        Evaluate(lvCustLedgerEntry."Original Currency Factor", CLEOrigCurrFactor);
                        Evaluate(lvCustLedgerEntry."Remaining Pmt. Disc. Possible", CLERemainingPmtDiscPossible);
                        Evaluate(lvCustLedgerEntry."Pmt. Disc. Tolerance Date", CLEPmtDiscToleranceDate);
                        Evaluate(lvCustLedgerEntry."Max. Payment Tolerance", CLEMaxPaymentTolerance);
                        Evaluate(lvCustLedgerEntry."Last Issued Reminder Level", CLELastIssuedReminder);
                        Evaluate(lvCustLedgerEntry."Accepted Payment Tolerance", CLEAcceptedPaymentTolerance);
                        Evaluate(lvCustLedgerEntry."Accepted Pmt. Disc. Tolerance", CLEAcceptedPmtDiscTolerance);
                        Evaluate(lvCustLedgerEntry."Pmt. Tolerance (LCY)", CLEPmtToleranceLCY);
                        Evaluate(lvCustLedgerEntry."Amount to Apply", CLEAmountToApply);
                        lvCustLedgerEntry."IC Partner Code" := CLEICPartnerCode;
                        Evaluate(lvCustLedgerEntry."Applying Entry", CLEApplyingEntry);
                        Evaluate(lvCustLedgerEntry.Reversed, CLEReversed);
                        Evaluate(lvCustLedgerEntry."Reversed by Entry No.", CLEReversedByEntryNo);
                        Evaluate(lvCustLedgerEntry."Reversed Entry No.", CLEReversedEntryNo);
                        Evaluate(lvCustLedgerEntry.Prepayment, CLEPrepayment);

                        lvCustLedgerEntry.Insert();
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    lvCLE: record "Cust. Ledger Entry";
                begin
                    if lvCLE.get(gvCLEEntryNo) then
                        currXMLport.Skip;
                end;
            }
            tableelement(DetailedCustLedgEntry; "Detailed Cust. Ledg. Entry")
            {
                textelement(DCLEEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvDCLEEntryNo, DCLEEntryNo);
                    end;
                }
                textelement(DCLECustLedgEntryNo) { }
                textelement(DCLEEntryType) { }
                textelement(DCLEPostingDate) { }
                textelement(DCLEDocType) { }
                textelement(DCLEDocNo) { }
                textelement(DCLEAmt) { }
                textelement(DCLEAmtLCY) { }
                textelement(DCLECustNo) { }
                textelement(DCLECurrCode) { }
                textelement(DCLEUserId) { }
                textelement(DCLESourceCode) { }
                textelement(DCLETransactionNo) { }
                textelement(DCLEJournalBatchName) { }
                textelement(DCLEReasonCode) { }
                textelement(DCLEDebit) { }
                textelement(DCLECredit) { }
                textelement(DCLEDebitLCY) { }
                textelement(DCLECreditLCY) { }
                textelement(DCLEInitEntryDueDate) { }
                textelement(DCLEInitEntryGlobDim1) { }
                textelement(DCLEInitEntryGlobDim2) { }
                textelement(DCLEGenBusPostingGroup) { }
                textelement(DCLEGenProdPostingGroup) { }
                textelement(DCLEUseTax) { }
                textelement(DCLEVatBusPostingGroup) { }
                textelement(DCLEVatProdPostingGroup) { }
                textelement(DCLEInitDocType) { }
                textelement(DCLEAppliedCustLedgerNo) { }
                textelement(DCLEUnapplied) { }
                textelement(DCLEUnappliedByEntryNo) { }
                textelement(DCLERemainingPmtDiscPossible) { }
                textelement(DCLEMaxPaymentTolerance) { }
                textelement(DCLETaxJurisCode)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvDetailedCustLedgerEntry: Record "Detailed Cust. Ledg. Entry";
                    begin
                        lvDetailedCustLedgerEntry.Init();
                        Evaluate(lvDetailedCustLedgerEntry."Entry No.", DCLEEntryNo);
                        Evaluate(lvDetailedCustLedgerEntry."Cust. Ledger Entry No.", DCLECustLedgEntryNo);
                        Evaluate(lvDetailedCustLedgerEntry."Entry Type", DCLEEntryType);
                        Evaluate(lvDetailedCustLedgerEntry."Posting Date", DCLEPostingDate);
                        Evaluate(lvDetailedCustLedgerEntry."Document Type", DCLEDocType);
                        lvDetailedCustLedgerEntry."Document No." := DCLEDocNo;
                        Evaluate(lvDetailedCustLedgerEntry.Amount, DCLEAmt);
                        Evaluate(lvDetailedCustLedgerEntry."Amount (LCY)", DCLEAmtLCY);
                        lvDetailedCustLedgerEntry."Customer No." := DCLECustNo;
                        lvDetailedCustLedgerEntry."Currency Code" := DCLECurrCode;
                        lvDetailedCustLedgerEntry."User ID" := DCLEUserId;
                        lvDetailedCustLedgerEntry."Source Code" := DCLESourceCode;
                        Evaluate(lvDetailedCustLedgerEntry."Transaction No.", DCLETransactionNo);
                        lvDetailedCustLedgerEntry."Journal Batch Name" := DCLEJournalBatchName;
                        lvDetailedCustLedgerEntry."Reason Code" := DCLEReasonCode;
                        Evaluate(lvDetailedCustLedgerEntry."Debit Amount", DCLEDebit);
                        Evaluate(lvDetailedCustLedgerEntry."Credit Amount", DCLECredit);
                        Evaluate(lvDetailedCustLedgerEntry."Debit Amount (LCY)", DCLEDebitLCY);
                        Evaluate(lvDetailedCustLedgerEntry."Credit Amount (LCY)", DCLECreditLCY);
                        Evaluate(lvDetailedCustLedgerEntry."Initial Entry Due Date", DCLEInitEntryDueDate);
                        lvDetailedCustLedgerEntry."Initial Entry Global Dim. 1" := DCLEInitEntryGlobDim1;
                        lvDetailedCustLedgerEntry."Initial Entry Global Dim. 2" := DCLEInitEntryGlobDim2;
                        lvDetailedCustLedgerEntry."Gen. Bus. Posting Group" := DCLEGenBusPostingGroup;
                        lvDetailedCustLedgerEntry."Gen. Prod. Posting Group" := DCLEGenProdPostingGroup;
                        Evaluate(lvDetailedCustLedgerEntry."Use Tax", DCLEUseTax);
                        lvDetailedCustLedgerEntry."VAT Bus. Posting Group" := DCLEVatBusPostingGroup;
                        lvDetailedCustLedgerEntry."VAT Prod. Posting Group" := DCLEVatProdPostingGroup;
                        Evaluate(lvDetailedCustLedgerEntry."Initial Document Type", DCLEInitDocType);
                        Evaluate(lvDetailedCustLedgerEntry."Applied Cust. Ledger Entry No.", DCLEAppliedCustLedgerNo);
                        Evaluate(lvDetailedCustLedgerEntry.Unapplied, DCLEUnapplied);
                        Evaluate(lvDetailedCustLedgerEntry."Unapplied by Entry No.", DCLEUnappliedByEntryNo);
                        Evaluate(lvDetailedCustLedgerEntry."Remaining Pmt. Disc. Possible", DCLERemainingPmtDiscPossible);
                        Evaluate(lvDetailedCustLedgerEntry."Max. Payment Tolerance", DCLEMaxPaymentTolerance);
                        lvDetailedCustLedgerEntry."Tax Jurisdiction Code" := DCLETaxJurisCode;
                        lvDetailedCustLedgerEntry.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvDCLE: record "Detailed Cust. Ledg. Entry";
                begin
                    if lvDCLE.get(gvDCLEEntryNo) then
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