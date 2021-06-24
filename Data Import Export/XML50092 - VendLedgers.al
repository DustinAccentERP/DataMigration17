xmlport 90092 "Master Base Vend Ledgers"
{
    Format = VariableText;
    Permissions = tabledata "Vendor Ledger Entry" = rimd;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(VendLedgEntry; "Vendor Ledger Entry")
            {
                textelement(VLEEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvVLEEntryNo, VLEEntryNo);
                    end;
                }
                textelement(VLEVendorNo) { }
                textelement(VLEPostingDate) { }
                textelement(VLEDocType) { }
                textelement(VLEDocNo) { }
                textelement(VLEDesc) { }
                textelement(VLECurrCode) { }
                textelement(VLEPurchLCY) { }
                textelement(VLEInvDiscLCY) { }
                textelement(VLEBuyFromVendor) { }
                textelement(VLEVendorPostingGroup) { }
                textelement(VLEGlobDimCode1) { }
                textelement(VLEGlobDimCode2) { }
                textelement(VLEPurchaserCode) { }
                textelement(VLEUserID) { }
                textelement(VLESourceCode) { }
                textelement(VLEOnHold) { }
                textelement(VLEAppliesToDocType) { }
                textelement(VLEAppliesToDocNo) { }
                textelement(VLEOpen) { }
                textelement(VLEDueDate) { }
                textelement(VLEPmtDiscountDate) { }
                textelement(VLEOrigPmtDiscPossible) { }
                textelement(VLEPmtDiscRcdLCY) { }
                textelement(VLEPositive) { }
                textelement(VLEClosedByEntryNo) { }
                textelement(VLEClosedAtDate) { }
                textelement(VLEClosedByAmt) { }
                textelement(VLEAppliesToId) { }
                textelement(VLEJournalBatchName) { }
                textelement(VLEReasonCode) { }
                textelement(VLEBalAccountType) { }
                textelement(VLEBalAccountNo) { }
                textelement(VLETransactionNo) { }
                textelement(VLEClosedByAmtLCY) { }
                textelement(VLEDocumentDate) { }
                textelement(VLEExternalDocNo) { }
                textelement(VLENoSeries) { }
                textelement(VLEClosedByCurrCode) { }
                textelement(VLEClosedByCurrAmt) { }
                textelement(VLEAdjCurrFactor) { }
                textelement(VLEOrigCurrFactor) { }
                textelement(VLERemainingPmtDiscPossible) { }
                textelement(VLEPmtDiscToleranceDate) { }
                textelement(VLEMaxPaymentTolerance) { }
                textelement(VLEAcceptedPaymentTolerance) { }
                textelement(VLEAcceptedPmtDiscTolerance) { }
                textelement(VLEPmtTolerance) { }
                textelement(VLEAmountToApply) { }
                textelement(VLEICPartnerCode) { }
                textelement(VLEApplyingEntry) { }
                textelement(VLEReversed) { }
                textelement(VLEReversedByEntryNo) { }
                textelement(VLEReversedEntryNo) { }
                textelement(VLEPrepayment) { }
                textelement(VLE1099Code) { }
                textelement(VLE1099Amt)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvVLE: Record "Vendor Ledger Entry";
                    begin
                        lvVLE.Init();
                        Evaluate(lvVLE."Entry No.", VLEEntryNo);
                        lvVLE."Vendor No." := VLEVendorNo;
                        Evaluate(lvVLE."Posting Date", VLEPostingDate);
                        Evaluate(lvVLE."Document Type", VLEDocType);
                        lvVLE."Document No." := VLEDocNo;
                        lvVLE.Description := VLEDesc;
                        lvVLE."Currency Code" := VLECurrCode;
                        Evaluate(lvVLE."Purchase (LCY)", VLEPurchLCY);
                        Evaluate(lvVLE."Inv. Discount (LCY)", VLEInvDiscLCY);
                        lvVLE."Buy-from Vendor No." := VLEBuyFromVendor;
                        lvVLE."Vendor Posting Group" := VLEVendorPostingGroup;
                        lvVLE."Global Dimension 1 Code" := VLEGlobDimCode1;
                        lvVLE."Global Dimension 2 Code" := VLEGlobDimCode2;
                        lvVLE."Purchaser Code" := VLEPurchaserCode;
                        lvVLE."User ID" := VLEUserID;
                        lvVLE."Source Code" := VLESourceCode;
                        lvVLE."On Hold" := VLEOnHold;
                        Evaluate(lvVLE."Applies-to Doc. Type", VLEAppliesToDocType);
                        lvVLE."Applies-to Doc. No." := VLEAppliesToDocNo;
                        Evaluate(lvVLE.Open, VLEOpen);
                        Evaluate(lvVLE."Due Date", VLEDueDate);
                        Evaluate(lvVLE."Pmt. Discount Date", VLEPmtDiscountDate);
                        Evaluate(lvVLE."Original Pmt. Disc. Possible", VLEOrigPmtDiscPossible);
                        Evaluate(lvVLE.Positive, VLEPositive);
                        Evaluate(lvVLE."Closed by Entry No.", VLEClosedByEntryNo);
                        Evaluate(lvVLE."Closed at Date", VLEClosedAtDate);
                        Evaluate(lvVLE."Closed by Amount", VLEClosedByAmt);
                        lvVLE."Applies-to ID" := VLEAppliesToId;
                        lvVLE."Journal Batch Name" := lvVLE."Journal Batch Name";
                        lvVLE."Reason Code" := VLEReasonCode;
                        Evaluate(lvVLE."Bal. Account Type", VLEBalAccountType);
                        lvVLE."Bal. Account No." := VLEBalAccountNo;
                        Evaluate(lvVLE."Transaction No.", VLETransactionNo);
                        Evaluate(lvVLE."Closed by Amount (LCY)", VLEClosedByAmtLCY);
                        Evaluate(lvVLE."Document Date", VLEDocumentDate);
                        lvVLE."External Document No." := VLEExternalDocNo;
                        lvVLE."No. Series" := VLENoSeries;
                        lvVLE."Closed by Currency Code" := VLEClosedByCurrCode;
                        Evaluate(lvVLE."Closed by Currency Amount", VLEClosedByCurrAmt);
                        Evaluate(lvVLE."Adjusted Currency Factor", VLEAdjCurrFactor);
                        Evaluate(lvVLE."Original Currency Factor", VLEOrigCurrFactor);
                        Evaluate(lvVLE."Remaining Pmt. Disc. Possible", VLERemainingPmtDiscPossible);
                        Evaluate(lvVLE."Pmt. Disc. Tolerance Date", VLEPmtDiscToleranceDate);
                        Evaluate(lvVLE."Max. Payment Tolerance", VLEMaxPaymentTolerance);
                        Evaluate(lvVLE."Accepted Payment Tolerance", VLEAcceptedPaymentTolerance);
                        Evaluate(lvVLE."Accepted Pmt. Disc. Tolerance", VLEAcceptedPmtDiscTolerance);
                        Evaluate(lvVLE."Pmt. Tolerance (LCY)", VLEPmtTolerance);
                        Evaluate(lvVLE."Amount to Apply", VLEAmountToApply);
                        lvVLE."IC Partner Code" := VLEICPartnerCode;
                        Evaluate(lvVLE."Applying Entry", VLEApplyingEntry);
                        Evaluate(lvVLE.Reversed, VLEReversed);
                        Evaluate(lvVLE."Reversed by Entry No.", VLEReversedByEntryNo);
                        Evaluate(lvVLE."Reversed Entry No.", VLEReversedEntryNo);
                        Evaluate(lvVLE.Prepayment, VLEPrepayment);
                        lvVLE."IRS 1099 Code" := VLE1099Code;
                        Evaluate(lvVLE."IRS 1099 Amount", VLE1099Amt);
                        lvVLE.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvVLE: record "Vendor Ledger Entry";
                begin
                    if lvVLE.get(gvVLEEntryNo) then
                        currXMLport.Skip;
                end;
            }
            tableelement(DetailedVendLedgEntry; "Detailed Vendor Ledg. Entry")
            {
                textelement(DVLEEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvDVLEEntryNo, DVLEEntryNo);
                    end;
                }
                textelement(DVLEVendLedgEntryNo) { }
                textelement(DVLEEntryType) { }
                textelement(DVLEPostingDate) { }
                textelement(DVLEDocType) { }
                textelement(DVLEDocNo) { }
                textelement(DVLEAmt) { }
                textelement(DVLEAmtLCY) { }
                textelement(DVLEVendorNo) { }
                textelement(DVLECurrCode) { }
                textelement(DVLEUserId) { }
                textelement(DVLESourceCode) { }
                textelement(DVLETransactionNo) { }
                textelement(DVLEJournalBatchName) { }
                textelement(DVLEReasonCode) { }
                textelement(DVLEDebit) { }
                textelement(DVLECredit) { }
                textelement(DVLEDebitLCY) { }
                textelement(DVLECreditLCY) { }
                textelement(DVLEInitEntryDueDate) { }
                textelement(DVLEInitEntryGlobDim1) { }
                textelement(DVLEInitEntryGlobDim2) { }
                textelement(DVLEGenBusPostingGroup) { }
                textelement(DVLEGenProdPostingGroup) { }
                textelement(DVLEUseTax) { }
                textelement(DVLEVatBusPostingGroup) { }
                textelement(DVLEVatProdPostingGroup) { }
                textelement(DVLEInitDocType) { }
                textelement(DVLEAppliedVendLedgerNo) { }
                textelement(DVLEUnapplied) { }
                textelement(DVLEUnappliedByEntryNo) { }
                textelement(DVLERemainingPmtDiscPossible) { }
                textelement(DVLEMaxPaymentTolerance) { }
                textelement(DVLETaxJurisCode)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvDVLE: Record "Detailed Vendor Ledg. Entry";
                    begin
                        lvDVLE.Init();
                        Evaluate(lvDVLE."Entry No.", DVLEEntryNo);
                        Evaluate(lvDVLE."Vendor Ledger Entry No.", DVLEVendLedgEntryNo);
                        Evaluate(lvDVLE."Entry Type", DVLEEntryType);
                        Evaluate(lvDVLE."Posting Date", DVLEPostingDate);
                        Evaluate(lvDVLE."Document Type", DVLEDocType);
                        lvDVLE."Document No." := DVLEDocNo;
                        Evaluate(lvDVLE.Amount, DVLEAmt);
                        Evaluate(lvDVLE."Amount (LCY)", DVLEAmtLCY);
                        lvDVLE."Vendor No." := DVLEVendorNo;
                        lvDVLE."Currency Code" := DVLECurrCode;
                        lvDVLE."User ID" := DVLEUserId;
                        lvDVLE."Source Code" := DVLESourceCode;
                        Evaluate(lvDVLE."Transaction No.", DVLETransactionNo);
                        lvDVLE."Journal Batch Name" := DVLEJournalBatchName;
                        lvDVLE."Reason Code" := DVLEReasonCode;
                        Evaluate(lvDVLE."Debit Amount", DVLEDebit);
                        Evaluate(lvDVLE."Credit Amount", DVLECredit);
                        Evaluate(lvDVLE."Debit Amount (LCY)", DVLEDebitLCY);
                        Evaluate(lvDVLE."Credit Amount (LCY)", DVLECreditLCY);
                        Evaluate(lvDVLE."Initial Entry Due Date", DVLEInitEntryDueDate);
                        Evaluate(lvDVLE."Initial Entry Global Dim. 1", DVLEInitEntryGlobDim1);
                        Evaluate(lvDVLE."Initial Entry Global Dim. 2", DVLEInitEntryGlobDim2);
                        lvDVLE."Gen. Bus. Posting Group" := DVLEGenBusPostingGroup;
                        lvDVLE."Gen. Prod. Posting Group" := DVLEGenProdPostingGroup;
                        Evaluate(lvDVLE."Use Tax", DVLEUseTax);
                        lvDVLE."VAT Bus. Posting Group" := DVLEVatBusPostingGroup;
                        lvDVLE."VAT Prod. Posting Group" := DVLEVatProdPostingGroup;
                        Evaluate(lvDVLE."Initial Document Type", DVLEInitDocType);
                        Evaluate(lvDVLE."Applied Vend. Ledger Entry No.", DVLEAppliedVendLedgerNo);
                        Evaluate(lvDVLE.Unapplied, DVLEUnapplied);
                        Evaluate(lvDVLE."Unapplied by Entry No.", DVLEUnappliedByEntryNo);
                        Evaluate(lvDVLE."Remaining Pmt. Disc. Possible", DVLERemainingPmtDiscPossible);
                        Evaluate(lvDVLE."Max. Payment Tolerance", DVLEMaxPaymentTolerance);
                        lvDVLE."Tax Jurisdiction Code" := DVLETaxJurisCode;
                        lvDVLE.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvDVLE: record "Detailed Vendor Ledg. Entry";
                begin
                    if lvDVLE.get(gvDVLEEntryNo) then
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