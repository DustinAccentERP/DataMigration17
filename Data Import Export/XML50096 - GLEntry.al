xmlport 90096 "Master Base GL Entry"
{
    Format = VariableText;
    Permissions = tabledata "G/L Entry" = rimd;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(glEntry; "G/L Entry")
            {
                textelement(GLEntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvGLEntryNo, GLEntryNo);
                    end;
                }
                textelement(GLGLAccNo) { }
                textelement(GLPostingDate) { }
                textelement(GLDocType) { }
                textelement(GLDocNo) { }
                textelement(GLDesc) { }
                textelement(GLBalAccNo) { }
                textelement(GLAmount) { }
                textelement(GLGlobDim1) { }
                textelement(GLGlobDim2) { }
                textelement(GLUserId) { }
                textelement(GLSourceCode) { }
                textelement(GLSystemCreatedEntry) { }
                textelement(GLPriorYearEntry) { }
                textelement(GLJobNo) { }
                textelement(GLQuantity) { }
                textelement(GLVatAmount) { }
                textelement(GLBusnessUnitCode) { }
                textelement(GLJournalBatchName) { }
                textelement(GLReasonCode) { }
                textelement(GLGenPostingType) { }
                textelement(GLGenBusPostingGroup) { }
                textelement(GLGenPodPostingGroup) { }
                textelement(GLBalAccountType) { }
                textelement(GLTransactionNo) { }
                textelement(GLDebit) { }
                textelement(GLCredit) { }
                textelement(GLDocDate) { }
                textelement(GLExtDocNo) { }
                textelement(GLSourceType) { }
                textelement(GLSourceNo) { }
                textelement(GLNoSeries) { }
                textelement(GLTaxAreaCode) { }
                textelement(GLTaxLiable) { }
                textelement(GLTaxGroupCode) { }
                textelement(GLUseTax) { }
                textelement(GLVatBusPostingGroup) { }
                textelement(GLVatProdPostingGroup) { }
                textelement(GLAddCurrAmt) { }
                textelement(GLAddCurrDebit) { }
                textelement(GLAddCurrCredit) { }
                textelement(GLCloseIncomeStatementDimID) { }
                textelement(GLICPartnerCode) { }
                textelement(GLReversed) { }
                textelement(GLReversedByEntryNo) { }
                textelement(GLReversedEntryNo) { }
                textelement(GLprodOrderNo) { }
                textelement(GLFAEntryType) { }
                textelement(GLFAEntryNo) { }
                textelement(GLSTETransactionID)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvGLE: Record "G/L Entry";
                    begin
                        if lvGLE.get(gvGLEntryNo) then
                            currXMLport.Skip
                        else begin
                            lvGLE.Init();

                            Evaluate(lvGLE."Entry No.", GLEntryNo);
                            lvGLE."G/L Account No." := GLGLAccNo;
                            Evaluate(lvGLE."Posting Date", GLPostingDate);
                            Evaluate(lvGLE."Document Type", GLDocType);
                            lvGLE."Document No." := GLDocNo;
                            lvGLE.Description := GLDesc;
                            lvGLE."Bal. Account No." := GLBalAccNo;
                            Evaluate(lvGLE.Amount, GLAmount);
                            lvGLE."Global Dimension 1 Code" := GLGlobDim1;
                            lvGLE."Global Dimension 2 Code" := GLGlobDim2;
                            lvGLE."User ID" := GLUserId;
                            lvGLE."Source Code" := GLSourceCode;
                            Evaluate(lvGLE."System-Created Entry", GLSystemCreatedEntry);
                            Evaluate(lvGLE."Prior-Year Entry", GLPriorYearEntry);
                            lvGLE."Job No." := GLJobNo;
                            Evaluate(lvGLE.Quantity, GLQuantity);
                            Evaluate(lvGLE."VAT Amount", GLVatAmount);
                            lvGLE."Business Unit Code" := GLBusnessUnitCode;
                            lvGLE."Journal Batch Name" := GLJournalBatchName;
                            lvGLE."Reason Code" := GLReasonCode;
                            Evaluate(lvGLE."Gen. Posting Type", GLGenPostingType);
                            lvGLE."Gen. Bus. Posting Group" := GLGenBusPostingGroup;
                            lvGLE."Gen. Prod. Posting Group" := GLGenPodPostingGroup;
                            Evaluate(lvGLE."Bal. Account Type", GLBalAccountType);
                            Evaluate(lvGLE."Transaction No.", GLTransactionNo);
                            Evaluate(lvGLE."Debit Amount", GLDebit);
                            Evaluate(lvGLE."Credit Amount", GLCredit);
                            Evaluate(lvGLE."Document Date", GLDocDate);
                            lvGLE."External Document No." := GLExtDocNo;
                            Evaluate(lvGLE."Source Type", GLSourceType);
                            lvGLE."Source No." := GLSourceNo;
                            lvGLE."No. Series" := GLNoSeries;
                            lvGLE."Tax Area Code" := GLTaxAreaCode;
                            Evaluate(lvGLE."Tax Liable", GLTaxLiable);
                            lvGLE."Tax Group Code" := GLTaxGroupCode;
                            Evaluate(lvGLE."Use Tax", GLUseTax);
                            lvGLE."VAT Bus. Posting Group" := GLVatBusPostingGroup;
                            lvGLE."VAT Prod. Posting Group" := GLVatProdPostingGroup;
                            Evaluate(lvGLE."Additional-Currency Amount", GLAddCurrAmt);
                            Evaluate(lvGLE."Add.-Currency Debit Amount", GLAddCurrDebit);
                            Evaluate(lvGLE."Add.-Currency Credit Amount", GLAddCurrCredit);
                            Evaluate(lvGLE."Close Income Statement Dim. ID", GLCloseIncomeStatementDimID);
                            lvGLE."IC Partner Code" := GLICPartnerCode;
                            Evaluate(lvGLE.Reversed, GLReversed);
                            Evaluate(lvGLE."Reversed by Entry No.", GLReversedByEntryNo);
                            Evaluate(lvGLE."Reversed Entry No.", GLReversedEntryNo);
                            lvGLE."Prod. Order No." := GLprodOrderNo;
                            Evaluate(lvGLE."FA Entry Type", GLFAEntryType);
                            Evaluate(lvGLE."FA Entry No.", GLFAEntryNo);
                            lvGLE."STE Transaction ID" := GLSTETransactionID;

                            lvGLE.Insert();
                        end;
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvGLE: Record "G/L Entry";
                begin
                    if lvGLE.get(gvGLEntryNo) then
                        currXMLport.Skip;
                end;
            }
        }
    }


    var

    var
        gvGLEntryNo: Integer;

}