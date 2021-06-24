xmlport 90076 "Master JobLedger"
{
    Format = VariableText;
    Permissions = tabledata "Job Ledger Entry" = rimd;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(JobLedgerEntry; "Job Ledger Entry")
            {
                XmlName = 'JobLedgerEntry';
                textelement(EntryNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvEntryNo, EntryNo);
                    end;
                }
                textelement(JobNo)
                {
                }
                textelement(PostingDate)
                {
                }
                textelement(DocumentNo)
                {
                }
                textelement(Type)
                {
                }
                textelement(No)
                {
                }
                textelement(Description)
                {
                }
                textelement(Qty)
                {
                }
                textelement(DirectUnitCostlCY)
                {
                }
                textelement(UnitCostLCY)
                {
                }
                textelement(TotalCostLCY)
                {
                }
                textelement(UnitPriceLCY)
                {
                }
                textelement(TotalPriceLCY)
                {
                }
                textelement(ResourceGroupNo)
                {
                }
                textelement(UnitOfMeasureCode)
                {
                }
                textelement(LocationCode)
                {
                }
                textelement(JobPostingGroup)
                {
                }
                textelement(GlobalDimension1)
                {
                }
                textelement(GlobalDimension2)
                {
                }
                textelement(WorkTypeCode)
                {
                }
                textelement(CustomerPriceGroup)
                {
                }
                textelement(UserId)
                {
                }
                textelement(SourceCode)
                {
                }
                textelement(AmtToPosttoGL)
                {
                }
                textelement(AmtPostedtoGL)
                {
                }
                textelement(EntryType)
                {
                }
                textelement(JournalBatchName)
                {
                }
                textelement(ReasonCode)
                {
                }
                textelement(TransactionType)
                {
                }
                textelement(TransportMethod)
                {
                }
                textelement(CountryRegionCode)
                {
                }
                textelement(GenBusPostingGroup)
                {
                }
                textelement(GenProdPostingGroup)
                {
                }
                textelement(EntryExitPoint)
                {
                }
                textelement(DocumentDate)
                {
                }
                textelement(ExternalDocumentNo)
                {
                }
                textelement("Area")
                {
                }
                textelement(TransactionSpecifications)
                {
                }
                textelement(NoSeries)
                {
                }
                textelement(AdditionalCurrencyTotalCost)
                {
                }
                textelement(AddCurrencyTotalPrice)
                {
                }
                textelement(AddCurrencyLineAmount)
                {
                }
                textelement(JobTaskNo)
                {
                }
                textelement(LineAmtLcy)
                {
                }
                textelement(UnitCost)
                {
                }
                textelement(TotalCost)
                {
                }
                textelement(UnitPrice)
                {
                }
                textelement(TotalPrice)
                {
                }
                textelement(LineAmount)
                {
                }
                textelement(LineDiscAmount)
                {
                }
                textelement(LineDiscAmountLCY)
                {
                }
                textelement(CurrencyCode)
                {
                }
                textelement(CurrencyFactor)
                {
                }
                textelement(Desc2)
                {
                }
                textelement(LedgerEntryType)
                {
                }
                textelement(LedgerEntryNo)
                {
                }
                textelement(SerialNo)
                {
                }
                textelement(LotNo)
                {
                }
                textelement(LineDiscPer)
                {
                }
                textelement(LineType)
                {
                }
                textelement(OriginalUnitCostLCY)
                {
                }
                textelement(OriginalTotalCostLCY)
                {
                }
                textelement(OriginalUnitCost)
                {
                }
                textelement(OriginalTotalCost)
                {
                }
                textelement(OriginalTotalCostACY)
                {
                }
                textelement(Adjusted)
                {
                }
                textelement(DateTimeAdjusted)
                {
                }
                textelement(VariantCode)
                {
                }
                textelement(BinCode)
                {
                }
                textelement(QtyPerUnitOfMeasure)
                {
                }
                textelement(QtyBase)
                {
                }
                textelement(ServiceOrderNo)
                {
                }
                textelement(PostedServiceShipmentNo)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvJobLedgerEntry: Record "Job Ledger Entry";
                    begin
                        lvJobLedgerEntry.Init();
                        Evaluate(lvJobLedgerEntry."Entry No.", EntryNo);
                        lvJobLedgerEntry."Job No." := JobNo;
                        Evaluate(lvJobLedgerEntry."Posting Date", PostingDate);
                        lvJobLedgerEntry."Document No." := DocumentNo;
                        Evaluate(lvJobLedgerEntry.Type, Type);
                        lvJobLedgerEntry."No." := No;
                        lvJobLedgerEntry.Description := Description;
                        Evaluate(lvJobLedgerEntry.Quantity, Qty);
                        Evaluate(lvJobLedgerEntry."Direct Unit Cost (LCY)", DirectUnitCostlCY);
                        Evaluate(lvJobLedgerEntry."Unit Cost (LCY)", UnitCostLCY);
                        Evaluate(lvJobLedgerEntry."Total Cost (LCY)", TotalCostLCY);
                        Evaluate(lvJobLedgerEntry."Unit Price (LCY)", UnitPriceLCY);
                        Evaluate(lvJobLedgerEntry."Total Price (LCY)", TotalPriceLCY);
                        lvJobLedgerEntry."Resource Group No." := ResourceGroupNo;
                        lvJobLedgerEntry."Unit of Measure Code" := UnitOfMeasureCode;
                        lvJobLedgerEntry."Location Code" := LocationCode;
                        lvJobLedgerEntry."Job Posting Group" := JobPostingGroup;
                        lvJobLedgerEntry."Global Dimension 1 Code" := GlobalDimension1;
                        lvJobLedgerEntry."Global Dimension 2 Code" := GlobalDimension2;
                        lvJobLedgerEntry."Work Type Code" := WorkTypeCode;
                        lvJobLedgerEntry."Customer Price Group" := CustomerPriceGroup;
                        lvJobLedgerEntry."User ID" := UserId;
                        lvJobLedgerEntry."Source Code" := SourceCode;
                        Evaluate(lvJobLedgerEntry."Amt. to Post to G/L", AmtToPosttoGL);
                        Evaluate(lvJobLedgerEntry."Amt. Posted to G/L", AmtPostedtoGL);
                        if EntryType = 'Production' then
                            lvJobLedgerEntry."Entry Type" := lvJobLedgerEntry."Entry Type"::Usage
                        else
                            Evaluate(lvJobLedgerEntry."Entry Type", EntryType);
                        lvJobLedgerEntry."Journal Batch Name" := JournalBatchName;
                        lvJobLedgerEntry."Reason Code" := ReasonCode;
                        lvJobLedgerEntry."Transaction Type" := TransactionType;
                        lvJobLedgerEntry."Transport Method" := TransportMethod;
                        lvJobLedgerEntry."Country/Region Code" := CountryRegionCode;
                        lvJobLedgerEntry."Gen. Bus. Posting Group" := GenBusPostingGroup;
                        lvJobLedgerEntry."Gen. Prod. Posting Group" := GenProdPostingGroup;
                        lvJobLedgerEntry."Entry/Exit Point" := EntryExitPoint;
                        Evaluate(lvJobLedgerEntry."Document Date", DocumentDate);
                        lvJobLedgerEntry."External Document No." := ExternalDocumentNo;
                        lvJobLedgerEntry."Area" := "Area";
                        lvJobLedgerEntry."Transaction Specification" := TransactionSpecifications;
                        lvJobLedgerEntry."No. Series" := NoSeries;
                        Evaluate(lvJobLedgerEntry."Additional-Currency Total Cost", AdditionalCurrencyTotalCost);
                        Evaluate(lvJobLedgerEntry."Add.-Currency Total Price", AddCurrencyTotalPrice);
                        Evaluate(lvJobLedgerEntry."Add.-Currency Line Amount", AddCurrencyLineAmount);
                        lvJobLedgerEntry."Job Task No." := JobTaskNo;
                        Evaluate(lvJobLedgerEntry."Line Amount (LCY)", LineAmtLcy);
                        Evaluate(lvJobLedgerEntry."Unit Cost", UnitCost);
                        Evaluate(lvJobLedgerEntry."Total Cost", TotalCost);
                        Evaluate(lvJobLedgerEntry."Unit Price", UnitPrice);
                        Evaluate(lvJobLedgerEntry."Total Price", TotalPrice);
                        Evaluate(lvJobLedgerEntry."Line Amount", LineAmount);
                        Evaluate(lvJobLedgerEntry."Line Discount Amount", LineDiscAmount);
                        Evaluate(lvJobLedgerEntry."Line Discount Amount (LCY)", LineDiscAmountLCY);
                        lvJobLedgerEntry."Currency Code" := CurrencyCode;
                        Evaluate(lvJobLedgerEntry."Currency Factor", CurrencyFactor);
                        lvJobLedgerEntry."Description 2" := Desc2;
                        Evaluate(lvJobLedgerEntry."Ledger Entry Type", LedgerEntryType);
                        Evaluate(lvJobLedgerEntry."Ledger Entry No.", LedgerEntryNo);
                        lvJobLedgerEntry."Serial No." := SerialNo;
                        lvJobLedgerEntry."Lot No." := LotNo;
                        Evaluate(lvJobLedgerEntry."Line Discount %", LineDiscPer);
                        if LineType = 'Schedule' then
                            lvJobLedgerEntry."Line Type" := lvJobLedgerEntry."Line Type"::Budget
                        else
                            if LineType = 'Contract' then
                                lvJobLedgerEntry."Line Type" := lvJobLedgerEntry."Line Type"::Billable
                            else
                                if LineType = 'Both Schedule and Contract' then
                                    lvJobLedgerEntry."Line Type" := lvJobLedgerEntry."Line Type"::"Both Budget and Billable"
                                else
                                    lvJobLedgerEntry."Line Type" := lvJobLedgerEntry."Line Type"::" ";

                        Evaluate(lvJobLedgerEntry."Original Unit Cost (LCY)", OriginalUnitCostLCY);
                        Evaluate(lvJobLedgerEntry."Original Total Cost (LCY)", OriginalTotalCostLCY);
                        Evaluate(lvJobLedgerEntry."Original Unit Cost", OriginalUnitCost);
                        Evaluate(lvJobLedgerEntry."Original Total Cost", OriginalTotalCost);
                        Evaluate(lvJobLedgerEntry."Original Total Cost (ACY)", OriginalTotalCostACY);
                        Evaluate(lvJobLedgerEntry.Adjusted, Adjusted);
                        Evaluate(lvJobLedgerEntry."DateTime Adjusted", DateTimeAdjusted);
                        lvJobLedgerEntry."Variant Code" := VariantCode;
                        lvJobLedgerEntry."Bin Code" := BinCode;
                        Evaluate(lvJobLedgerEntry."Qty. per Unit of Measure", QtyPerUnitOfMeasure);
                        Evaluate(lvJobLedgerEntry."Quantity (Base)", QtyBase);
                        lvJobLedgerEntry."Service Order No." := ServiceOrderNo;
                        lvJobLedgerEntry."Posted Service Shipment No." := PostedServiceShipmentNo;
                        lvJobLedgerEntry.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvJLE: record "Job Ledger Entry";
                begin
                    if lvJLE.get(gvEntryNo) then
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
        gvEntryNo: integer;
}

