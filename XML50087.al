xmlport 90087 "Master Base Job Planning"
{
    Format = VariableText;
    schema
    {
        textelement(Root)
        {
            tableelement(lvJobPlanningLine; "Job Planning Line")
            {
                XmlName = 'JobPlanningLine';

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
                textelement(LineNo)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        Evaluate(gvLineNo, LineNo);
                    end;
                }
                textelement(PlanningDate) { }
                textelement(DocumentNo) { }
                textelement(Type) { }
                textelement(No) { }
                textelement(Desc) { }
                textelement(Qty) { }
                textelement(DirectUnitCostLCY) { }
                textelement(UnitCostLCY) { }
                textelement(TotalCostLCY) { }
                textelement(UnitPriceLCY) { }
                textelement(TotalPriceLCY) { }
                textelement(ResGroupNo) { }
                textelement(UoM) { }
                textelement(LocationCode) { }
                textelement(LastDateModified) { }
                textelement(UserID) { }
                textelement(WorkTypeCode) { }
                textelement(CustomerPriceGroup) { }
                textelement(CountryRegionCode) { }
                textelement(GenBusPostinGroup) { }
                textelement(GenProdPostingGroup) { }
                textelement(DocumentDate) { }
                textelement(LineAmtLCY) { }
                textelement(UnitCost) { }
                textelement(TotalCost) { }
                textelement(UnitPrice) { }
                textelement(TotalPrice) { }
                textelement(LineAmt) { }
                textelement(LineDiscAmt) { }
                textelement(LineDiscAmtLCY) { }
                textelement(CostFact) { }
                textelement(SerialNo) { }
                textelement(LotNo) { }
                textelement(LineDiscPercent) { }
                textelement(LineType) { }
                textelement(CurrCode) { }
                textelement(CurrDate) { }
                textelement(CurrFactor) { }
                textelement(ScheduleLine) { }
                textelement(ContractLine) { }
                textelement(JobContractEntryNo) { }
                textelement(InvAmtLCY) { }
                textelement(InvCostAmtLCY) { }
                textelement(VATUnitPrice) { }
                textelement(VATLineDiscAmt) { }
                textelement(VATLineAmt) { }
                textelement(VATPercent) { }
                textelement(Desc2) { }
                textelement(Status) { }
                textelement(SystemCreatedEntry) { }
                textelement(VariantCode) { }
                textelement(BinCode) { }
                textelement(QtyPerUoM) { }
                textelement(QuantityBase) { }
                textelement(ServiceOrderNo)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvJobPlanningLine: record "Job Planning Line";
                    begin
                        lvJobPlanningLine.Init();
                        Evaluate(lvJobPlanningLine."Line No.", LineNo);
                        lvJobPlanningLine."Job No." := JobNo;
                        Evaluate(lvJobPlanningLine."Planning Date", PlanningDate);
                        lvJobPlanningLine."Document No." := DocumentNo;
                        Evaluate(lvJobPlanningLine.Type, Type);
                        lvJobPlanningLine."No." := No;
                        lvJobPlanningLine.Description := Desc;
                        Evaluate(lvJobPlanningLine.Quantity, Qty);
                        Evaluate(lvJobPlanningLine."Direct Unit Cost (LCY)", DirectUnitCostLCY);
                        Evaluate(lvJobPlanningLine."Unit Cost (LCY)", UnitCostLCY);
                        Evaluate(lvJobPlanningLine."Total Cost (LCY)", TotalCostLCY);
                        Evaluate(lvJobPlanningLine."Unit Price (LCY)", UnitPriceLCY);
                        Evaluate(lvJobPlanningLine."Total Price (LCY)", TotalPriceLCY);
                        lvJobPlanningLine."Resource Group No." := ResGroupNo;
                        lvJobPlanningLine."Unit of Measure Code" := UoM;
                        lvJobPlanningLine."Location Code" := LocationCode;
                        Evaluate(lvJobPlanningLine."Last Date Modified", LastDateModified);
                        lvJobPlanningLine."User ID" := UserID;
                        lvJobPlanningLine."Work Type Code" := WorkTypeCode;
                        lvJobPlanningLine."Customer Price Group" := CustomerPriceGroup;
                        lvJobPlanningLine."Country/Region Code" := CountryRegionCode;
                        lvJobPlanningLine."Gen. Bus. Posting Group" := GenBusPostinGroup;
                        lvJobPlanningLine."Gen. Prod. Posting Group" := GenProdPostingGroup;
                        Evaluate(lvJobPlanningLine."Document Date", DocumentDate);
                        lvJobPlanningLine."Job Task No." := JobTaskNo;
                        Evaluate(lvJobPlanningLine."Line Amount (LCY)", LineAmtLCY);
                        Evaluate(lvJobPlanningLine."Unit Cost", UnitCost);
                        Evaluate(lvJobPlanningLine."Total Cost", TotalCost);
                        Evaluate(lvJobPlanningLine."Unit Price", UnitPrice);
                        Evaluate(lvJobPlanningLine."Total Price", TotalPrice);
                        Evaluate(lvJobPlanningLine."Line Amount", LineAmt);
                        Evaluate(lvJobPlanningLine."Line Discount Amount", LineDiscAmt);
                        Evaluate(lvJobPlanningLine."Line Discount Amount (LCY)", LineDiscAmtLCY);
                        Evaluate(lvJobPlanningLine."Cost Factor", CostFact);
                        lvJobPlanningLine."Serial No." := SerialNo;
                        lvJobPlanningLine."Lot No." := LotNo;
                        Evaluate(lvJobPlanningLine."Line Discount %", LineDiscPercent);
                        //Schedule,Contract,Both Schedule and Contract
                        //Budget,Billable,Both Budget and Billable
                        if LineType = 'Schedule' then
                            lvJobPlanningLine."Line Type" := lvJobPlanningLine."Line Type"::Budget
                        else
                            if LineType = 'Contract' then
                                lvJobPlanningLine."Line Type" := lvJobPlanningLine."Line Type"::Billable
                            else
                                lvJobPlanningLine."Line Type" := lvJobPlanningLine."Line Type"::"Both Budget and Billable";
                        lvJobPlanningLine."Currency Code" := CurrCode;
                        Evaluate(lvJobPlanningLine."Currency Date", CurrDate);
                        Evaluate(lvJobPlanningLine."Currency Factor", CurrFactor);
                        Evaluate(lvJobPlanningLine."Schedule Line", ScheduleLine);
                        Evaluate(lvJobPlanningLine."Contract Line", ContractLine);
                        Evaluate(lvJobPlanningLine."Job Contract Entry No.", JobContractEntryNo);
                        Evaluate(lvJobPlanningLine."Invoiced Amount (LCY)", InvAmtLCY);
                        Evaluate(lvJobPlanningLine."Invoiced Cost Amount (LCY)", InvCostAmtLCY);
                        Evaluate(lvJobPlanningLine."VAT Unit Price", VATUnitPrice);
                        Evaluate(lvJobPlanningLine."VAT Line Discount Amount", VATLineDiscAmt);
                        Evaluate(lvJobPlanningLine."VAT Line Amount", VATLineAmt);
                        Evaluate(lvJobPlanningLine."VAT %", VATPercent);
                        lvJobPlanningLine."Description 2" := Desc2;
                        Evaluate(lvJobPlanningLine.Status, Status);
                        Evaluate(lvJobPlanningLine."System-Created Entry", SystemCreatedEntry);
                        lvJobPlanningLine."Variant Code" := VariantCode;
                        lvJobPlanningLine."Bin Code" := BinCode;
                        Evaluate(lvJobPlanningLine."Qty. per Unit of Measure", QtyPerUoM);
                        Evaluate(lvJobPlanningLine."Quantity (Base)", QuantityBase);
                        lvJobPlanningLine."Service Order No." := ServiceOrderNo;
                        /*lvJobPlanningLine."CCS Master Job No." := MasterJobNo;
                        lvJobPlanningLine."CCS Bill-to Customer No." := BillToCustomerNo;
                        lvJobPlanningLine."CCS Buy-from Vendor No." := BuyFromVendorNo;
                        lvJobPlanningLine."CCS Vendor Item No." := VendorItemNo;
                        Evaluate(lvJobPlanningLine."CCS Do Not Copy to Job Usage", DoNotCopyToJobUsage);
                        Evaluate(lvJobPlanningLine."CCS Qty. to Requisition", QtyToRequisition);
                        Evaluate(lvJobPlanningLine."CCS Due Date", DueDate);
                        Evaluate(lvJobPlanningLine."CCS Outstanding Qty", OutstandingQty);
                        Evaluate(lvJobPlanningLine."CCS Sent to Job Jrnl", SendToJobJrnl);
                        Evaluate(lvJobPlanningLine."CCS Outstanding Qty (Base)", OutstandingQtyBase);
                        lvJobPlanningLine."CCS Person Responsible" := PersonRespons;
                        lvJobPlanningLine."CCS Comment" := Comment;
                        lvJobPlanningLine."CCS Cost Category" := CostCategory;
                        Evaluate(lvJobPlanningLine."CCS Reordering Policy", ReorderingPolicy);
                        Evaluate(lvJobPlanningLine."CCS Attached To Line No.", AttachToLineNo);
                        Evaluate(lvJobPlanningLine."CCS Fixed Cost", FixedCost);
                        Evaluate(lvJobPlanningLine."CCS BOM Level", BOMLevel);*/
                        lvJobPlanningLine.Insert;
                    end;

                }
                trigger OnBeforeInsertRecord();
                var
                    lvJobPlanningLine: Record "Job Planning Line";
                begin
                    if lvJobPlanningLine.get(gvJobNo, gvJobTaskNo, gvLineNo) then
                        currXMLport.Skip();
                end;
            }
        }
    }

    var
        gvJobNo: Code[20];
        gvJobTaskNo: Code[20];
        gvLineNo: Integer;
}

