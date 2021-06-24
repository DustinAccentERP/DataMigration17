xmlport 90095 "Master Base Purchs Doc"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(PurchaseHeader; "Purchase Header")
            {

                textelement(PHDocType) { }
                textelement(PHBuyFromVendorNo) { }
                textelement(PHNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvPurchHeaderNo, PHNo);
                    end;
                }
                textelement(PHPaytoVendorNo) { }
                textelement(PHPaytoName) { }
                textelement(PHPaytoName2) { }
                textelement(PHPaytoAddr) { }
                textelement(PHPaytoAddr2) { }
                textelement(PHPaytoCity) { }
                textelement(PHPaytoContact) { }
                textelement(PHYourReference) { }
                textelement(PHShiptoCode) { }
                textelement(PHShiptoName) { }
                textelement(PHShiptoName2) { }
                textelement(PHShiptoAddr) { }
                textelement(PHShiptoAddr2) { }
                textelement(PHShiptoCity) { }
                textelement(PHShiptoContact) { }
                textelement(PHOrderDate) { }
                textelement(PHPostingDate) { }
                textelement(PHExpectedReceiptDate) { }
                textelement(PHPostingDescription) { }
                textelement(PHPaymentTermsCode) { }
                textelement(PHDueDate) { }
                textelement(PHPaymentDiscPercent) { }
                textelement(PHPmtDiscountDate) { }
                textelement(PHShipmentMethodCode) { }
                textelement(PHLocationCode) { }
                textelement(PHShortcutDimCode1) { }
                textelement(PHShortcutDimCode2) { }
                textelement(PHVendorPostingGroup) { }
                textelement(PHCurrCode) { }
                textelement(PHCurrFactor) { }
                textelement(PHPricesIncludingVAT) { }
                textelement(PHInvDiscCode) { }
                textelement(PHLanguageCode) { }
                textelement(PHPurchaserCode) { }
                textelement(PHOrderClass) { }
                textelement(PHNoPrinted) { }
                textelement(PHOnHold) { }
                textelement(PHAppliestoDocType) { }
                textelement(PHAppliestoDocNo) { }
                textelement(PHBalAccNo) { }
                textelement(PHReceive) { }
                textelement(PHInvoice) { }
                textelement(PHReceivingNo) { }
                textelement(PHPostingNo) { }
                textelement(PHLastReceivingNo) { }
                textelement(PHLastPostingNo) { }
                textelement(PHVendorOrderNo) { }
                textelement(PHVendorShipmentNo) { }
                textelement(PHVendorInvoiceNo) { }
                textelement(PHVendorCrMemoNo) { }
                textelement(PHVatRegistrationNo) { }
                textelement(PHSelltoCustomerNo) { }
                textelement(PHReasonCode) { }
                textelement(PHGenBusPostingGroup) { }
                textelement(PHTransactionType) { }
                textelement(PHTransportMethod) { }
                textelement(PHVatCountryRegionCode) { }
                textelement(PHBuyFromVendorName) { }
                textelement(PHBuyFromVendorName2) { }
                textelement(PHBuyFromAddress) { }
                textelement(PHBuyFromAddress2) { }
                textelement(PHBuyFromCity) { }
                textelement(PHBuyFromContact) { }
                textelement(PHPaytoPostCode) { }
                textelement(PHPaytoCounty) { }
                textelement(PHPaytoCountryRegionCode) { }
                textelement(PHBuyFromPostCode) { }
                textelement(PHBuyFromCounty) { }
                textelement(PHBuyFromCountryRegionCode) { }
                textelement(PHShiptoPostCode) { }
                textelement(PHShiptoCounty) { }
                textelement(PHShiptoCountryRegionCode) { }
                textelement(PHBalAccountType) { }
                textelement(PHOrderAddrCode) { }
                textelement(PHEntryPoint) { }
                textelement(PHCorrection) { }
                textelement(PHDocumentDate) { }
                textelement(PHArea) { }
                textelement(PHTransactionSpecification) { }
                textelement(PHPaymentMethodCode) { }
                textelement(PHNoSeries) { }
                textelement(PHPostingNoSeries) { }
                textelement(PHReceivingNoSeries) { }
                textelement(PHTaxAreaCode) { }
                textelement(PHTaxLiable) { }
                textelement(PHVatBusPostingGroup) { }
                textelement(PHAppliedToId) { }
                textelement(PHVatBaseDiscPercent) { }
                textelement(PHStatus) { }
                textelement(PHInvoiceDiscCalc) { }
                textelement(PHInvoiceDiscValue) { }
                textelement(PHSendIcDoc) { }
                textelement(PHIcStatus) { }
                textelement(PHBuyFromICPartner) { }
                textelement(PHPaytoICPartner) { }
                textelement(PHIcDirection) { }
                textelement(PHPrepaymentNo) { }
                textelement(PHLastPrepaymentNo) { }
                textelement(PHPrepmtCrMemoNo) { }
                textelement(PHLastPrepmtCrMemoNo) { }
                textelement(PHPrepmtPercent) { }
                textelement(PHPrepaymentNoSeries) { }
                textelement(PHCompressPrepayment) { }
                textelement(PHPrepaymentDueDate) { }
                textelement(PHPrepmtCrMemoNoSeries) { }
                textelement(PHPrepmtPostingDesc) { }
                textelement(PHPrepmtPmtDiscountDate) { }
                textelement(PHPrepmtPaymentTermsCode) { }
                textelement(PHPrepmtPaymentDiscountPercent) { }
                textelement(PHQuoteNo) { }
                textelement(PHDocNoOccurence) { }
                textelement(PHCampaignNo) { }
                textelement(PHBuyfromContactNo) { }
                textelement(PHPaytoContactNo) { }
                textelement(PHResponsibilityCenter) { }
                textelement(PHPostingFromWhseRef) { }
                textelement(PHRequestedReceiptDate) { }
                textelement(PHPromisedReceiptDate) { }
                textelement(PHLeadTimeCalc) { }
                textelement(PHInboundWhseHandlingTime) { }
                textelement(PHVendorAuthNo) { }
                textelement(PHReturnShipmentNo) { }
                textelement(PHReturnShipmentNoSeries) { }
                textelement(PHShip) { }
                textelement(PHLastReturnShipmentNo) { }
                textelement(PHAssignedUserId) { }
                textelement(PHShiptoUPSZone) { }
                textelement(PHTaxExemptionNo) { }
                textelement(PHProvincialTaxAreaCode) { }
                textelement(PHSTETransactionId) { }
                textelement(PH1099Code) { }
                textelement(PHPrepmtIncludeTax)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvPurchaseHeader: Record "Purchase Header";
                    begin
                        lvPurchaseHeader.Init();
                        Evaluate(lvPurchaseHeader."Document Type", PHDocType);
                        lvPurchaseHeader."Buy-from Vendor No." := PHBuyFromVendorNo;
                        lvPurchaseHeader."No." := PHNo;
                        lvPurchaseHeader."Pay-to Vendor No." := PHPaytoVendorNo;
                        lvPurchaseHeader."Pay-to Name" := PHPaytoName;
                        lvPurchaseHeader."Pay-to Name 2" := PHPaytoName2;
                        lvPurchaseHeader."Pay-to Address" := PHPaytoAddr;
                        lvPurchaseHeader."Pay-to Address 2" := PHPaytoAddr2;
                        lvPurchaseHeader."Pay-to City" := PHPaytoCity;
                        lvPurchaseHeader."Pay-to Contact" := PHPaytoContact;
                        lvPurchaseHeader."Your Reference" := PHYourReference;
                        lvPurchaseHeader."Ship-to Code" := PHShiptoCode;
                        lvPurchaseHeader."Ship-to Name" := PHShiptoName;
                        lvPurchaseHeader."Ship-to Name 2" := PHShiptoName2;
                        lvPurchaseHeader."Ship-to Address" := PHShiptoAddr;
                        lvPurchaseHeader."Ship-to Address 2" := PHShiptoAddr2;
                        lvPurchaseHeader."Ship-to City" := PHShiptoCity;
                        lvPurchaseHeader."Ship-to Contact" := PHShiptoContact;
                        Evaluate(lvPurchaseHeader."Order Date", PHOrderDate);
                        Evaluate(lvPurchaseHeader."Posting Date", PHPostingDate);
                        Evaluate(lvPurchaseHeader."Expected Receipt Date", PHExpectedReceiptDate);
                        lvPurchaseHeader."Posting Description" := PHPostingDescription;
                        lvPurchaseHeader."Payment Terms Code" := PHPaymentTermsCode;
                        Evaluate(lvPurchaseHeader."Due Date", PHDueDate);
                        Evaluate(lvPurchaseHeader."Payment Discount %", PHPaymentDiscPercent);
                        Evaluate(lvPurchaseHeader."Pmt. Discount Date", PHPmtDiscountDate);
                        lvPurchaseHeader."Shipment Method Code" := PHShipmentMethodCode;
                        lvPurchaseHeader."Location Code" := PHLocationCode;
                        lvPurchaseHeader."Shortcut Dimension 1 Code" := PHShortcutDimCode1;
                        lvPurchaseHeader."Shortcut Dimension 2 Code" := PHShortcutDimCode2;
                        lvPurchaseHeader."Vendor Posting Group" := PHVendorPostingGroup;
                        lvPurchaseHeader."Currency Code" := PHCurrCode;
                        Evaluate(lvPurchaseHeader."Currency Factor", PHCurrFactor);
                        Evaluate(lvPurchaseHeader."Prices Including VAT", PHPricesIncludingVAT);
                        lvPurchaseHeader."Invoice Disc. Code" := PHInvDiscCode;
                        lvPurchaseHeader."Language Code" := PHLanguageCode;
                        lvPurchaseHeader."Purchaser Code" := PHPurchaserCode;
                        lvPurchaseHeader."Order Class" := PHOrderClass;
                        Evaluate(lvPurchaseHeader."No. Printed", PHNoPrinted);
                        lvPurchaseHeader."On Hold" := PHOnHold;
                        Evaluate(lvPurchaseHeader."Applies-to Doc. Type", PHAppliestoDocType);
                        lvPurchaseHeader."Applies-to Doc. No." := PHAppliestoDocNo;
                        lvPurchaseHeader."Bal. Account No." := PHBalAccNo;
                        Evaluate(lvPurchaseHeader."Receive", PHReceive);
                        Evaluate(lvPurchaseHeader."Invoice", PHInvoice);
                        lvPurchaseHeader."Receiving No." := PHReceivingNo;
                        lvPurchaseHeader."Posting No." := PHPostingNo;
                        lvPurchaseHeader."Last Receiving No." := PHLastReceivingNo;
                        lvPurchaseHeader."Last Posting No." := PHLastPostingNo;
                        lvPurchaseHeader."Vendor Order No." := PHVendorOrderNo;
                        lvPurchaseHeader."Vendor Shipment No." := PHVendorShipmentNo;
                        lvPurchaseHeader."Vendor Invoice No." := PHVendorInvoiceNo;
                        lvPurchaseHeader."Vendor Cr. Memo No." := PHVendorCrMemoNo;
                        lvPurchaseHeader."VAT Registration No." := PHVatRegistrationNo;
                        lvPurchaseHeader."Sell-to Customer No." := PHSelltoCustomerNo;
                        lvPurchaseHeader."Reason Code" := PHReasonCode;
                        lvPurchaseHeader."Gen. Bus. Posting Group" := PHGenBusPostingGroup;
                        lvPurchaseHeader."Transaction Type" := PHTransactionType;
                        lvPurchaseHeader."Transport Method" := PHTransportMethod;
                        lvPurchaseHeader."VAT Country/Region Code" := PHVatCountryRegionCode;
                        lvPurchaseHeader."Buy-from Vendor Name" := PHBuyFromVendorName;
                        lvPurchaseHeader."Buy-from Vendor Name 2" := PHBuyFromVendorName2;
                        lvPurchaseHeader."Buy-from Address" := PHBuyFromAddress;
                        lvPurchaseHeader."Buy-from Address 2" := PHBuyFromAddress2;
                        lvPurchaseHeader."Buy-from City" := PHBuyFromCity;
                        lvPurchaseHeader."Buy-from Contact" := PHBuyFromContact;
                        lvPurchaseHeader."Pay-to Post Code" := PHPaytoPostCode;
                        lvPurchaseHeader."Pay-to County" := PHPaytoCounty;
                        lvPurchaseHeader."Pay-to Country/Region Code" := PHPaytoCountryRegionCode;
                        lvPurchaseHeader."Buy-from Post Code" := PHBuyFromPostCode;
                        lvPurchaseHeader."Buy-from County" := PHBuyFromCounty;
                        lvPurchaseHeader."Buy-from Country/Region Code" := PHBuyFromCountryRegionCode;
                        lvPurchaseHeader."Ship-to Post Code" := PHShiptoPostCode;
                        lvPurchaseHeader."Ship-to County" := PHShiptoCounty;
                        lvPurchaseHeader."Ship-to Country/Region Code" := PHShiptoCountryRegionCode;
                        Evaluate(lvPurchaseHeader."Bal. Account Type", PHBalAccountType);
                        lvPurchaseHeader."Order Address Code" := PHOrderAddrCode;
                        lvPurchaseHeader."Entry Point" := PHEntryPoint;
                        Evaluate(lvPurchaseHeader."Correction", PHCorrection);
                        Evaluate(lvPurchaseHeader."Document Date", PHDocumentDate);
                        lvPurchaseHeader."Area" := PHArea;
                        lvPurchaseHeader."Transaction Specification" := PHTransactionSpecification;
                        lvPurchaseHeader."Payment Method Code" := PHPaymentMethodCode;
                        lvPurchaseHeader."No. Series" := PHNoSeries;
                        lvPurchaseHeader."Posting No. Series" := PHPostingNoSeries;
                        lvPurchaseHeader."Receiving No. Series" := PHReceivingNoSeries;
                        lvPurchaseHeader."Tax Area Code" := PHTaxAreaCode;
                        Evaluate(lvPurchaseHeader."Tax Liable", PHTaxLiable);
                        lvPurchaseHeader."VAT Bus. Posting Group" := PHVatBusPostingGroup;
                        lvPurchaseHeader."Applies-to ID" := PHAppliedToId;
                        Evaluate(lvPurchaseHeader."VAT Base Discount %", PHVatBaseDiscPercent);
                        Evaluate(lvPurchaseHeader."Status", PHStatus);
                        Evaluate(lvPurchaseHeader."Invoice Discount Calculation", PHInvoiceDiscCalc);
                        Evaluate(lvPurchaseHeader."Invoice Discount Value", PHInvoiceDiscValue);
                        Evaluate(lvPurchaseHeader."Send IC Document", PHSendIcDoc);
                        Evaluate(lvPurchaseHeader."IC Status", PHIcStatus);
                        lvPurchaseHeader."Buy-from IC Partner Code" := PHBuyFromICPartner;
                        lvPurchaseHeader."Pay-to IC Partner Code" := PHPaytoICPartner;
                        Evaluate(lvPurchaseHeader."IC Direction", PHIcDirection);
                        lvPurchaseHeader."Prepayment No." := PHPrepaymentNo;
                        lvPurchaseHeader."Last Prepayment No." := PHLastPrepaymentNo;
                        lvPurchaseHeader."Prepmt. Cr. Memo No." := PHPrepmtCrMemoNo;
                        lvPurchaseHeader."Last Prepmt. Cr. Memo No." := PHLastPrepmtCrMemoNo;
                        Evaluate(lvPurchaseHeader."Prepayment %", PHPrepmtPercent);
                        lvPurchaseHeader."Prepayment No. Series" := PHPrepaymentNoSeries;
                        Evaluate(lvPurchaseHeader."Compress Prepayment", PHCompressPrepayment);
                        Evaluate(lvPurchaseHeader."Prepayment Due Date", PHPrepaymentDueDate);
                        lvPurchaseHeader."Prepmt. Cr. Memo No. Series" := PHPrepmtCrMemoNoSeries;
                        lvPurchaseHeader."Prepmt. Posting Description" := PHPrepmtPostingDesc;
                        Evaluate(lvPurchaseHeader."Prepmt. Pmt. Discount Date", PHPrepmtPmtDiscountDate);
                        lvPurchaseHeader."Prepmt. Payment Terms Code" := PHPrepmtPaymentTermsCode;
                        Evaluate(lvPurchaseHeader."Prepmt. Payment Discount %", PHPrepmtPaymentDiscountPercent);
                        lvPurchaseHeader."Quote No." := PHQuoteNo;
                        Evaluate(lvPurchaseHeader."Doc. No. Occurrence", PHDocNoOccurence);
                        lvPurchaseHeader."Campaign No." := PHCampaignNo;
                        lvPurchaseHeader."Buy-from Contact No." := PHBuyfromContactNo;
                        lvPurchaseHeader."Pay-to Contact No." := PHPaytoContactNo;
                        lvPurchaseHeader."Responsibility Center" := PHResponsibilityCenter;
                        Evaluate(lvPurchaseHeader."Posting from Whse. Ref.", PHPostingFromWhseRef);
                        Evaluate(lvPurchaseHeader."Requested Receipt Date", PHRequestedReceiptDate);
                        Evaluate(lvPurchaseHeader."Promised Receipt Date", PHPromisedReceiptDate);
                        Evaluate(lvPurchaseHeader."Lead Time Calculation", PHLeadTimeCalc);
                        Evaluate(lvPurchaseHeader."Inbound Whse. Handling Time", PHInboundWhseHandlingTime);
                        lvPurchaseHeader."Vendor Authorization No." := PHVendorAuthNo;
                        lvPurchaseHeader."Return Shipment No." := PHReturnShipmentNo;
                        lvPurchaseHeader."Return Shipment No. Series" := PHReturnShipmentNoSeries;
                        Evaluate(lvPurchaseHeader."Ship", PHShip);
                        lvPurchaseHeader."Last Return Shipment No." := PHLastReturnShipmentNo;
                        lvPurchaseHeader."Assigned User ID" := PHAssignedUserId;
                        lvPurchaseHeader."Ship-to UPS Zone" := PHShiptoUPSZone;
                        lvPurchaseHeader."Tax Exemption No." := PHTaxExemptionNo;
                        lvPurchaseHeader."Provincial Tax Area Code" := PHProvincialTaxAreaCode;
                        lvPurchaseHeader."STE Transaction ID" := PHSTETransactionId;
                        lvPurchaseHeader."IRS 1099 Code" := PH1099Code;
                        Evaluate(lvPurchaseHeader."Prepmt. Include Tax", PHPrepmtIncludeTax);
                        lvPurchaseHeader.Insert();
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    lvPurchaseHeader: record "Purchase Header";
                begin
                    lvPurchaseHeader.SetRange("No.", gvPurchHeaderNo);
                    if lvPurchaseHeader.FindFirst() then
                        currXMLport.Skip;
                end;
            }

            tableelement(PurchaseLine; "Purchase Line")
            {
                textelement(PLDocType) { }
                textelement(PLBuyFromVendorNo) { }
                textelement(PLDocNo)
                {
                    trigger OnAfterAssignVariable()

                    begin
                        gvPurchLineDocumentNo := PLDocNo;
                    end;
                }
                textelement(PLLineNo)
                {
                    trigger OnAfterAssignVariable()

                    begin
                        Evaluate(gvPurchLineLineNo, PLLineNo);
                    end;
                }
                textelement(PLType) { }
                textelement(PLNo) { }
                textelement(PLLocationCode) { }
                textelement(PLPostingGroup) { }
                textelement(PLExpectedReceiptDate) { }
                textelement(PLDesc) { }
                textelement(PLDesc2) { }
                textelement(PLUoM) { }
                textelement(PLQty) { }
                textelement(PLOutstandingQty) { }
                textelement(PLQtyToInv) { }
                textelement(PLQtyToReceive) { }
                textelement(PLDirectUnitCost) { }
                textelement(PLUnitCostLCY) { }
                textelement(PLVatPercent) { }
                textelement(PLLineDiscPercent) { }
                textelement(PLLineDiscAmount) { }
                textelement(PLAmount) { }
                textelement(PLAmountIncVat) { }
                textelement(PLUnitPriceLCY) { }
                textelement(PLAllowInvoiceDisc) { }
                textelement(PLGrossWeight) { }
                textelement(PLNetWeight) { }
                textelement(PLUnitsPerParcel) { }
                textelement(PLUnitVolume) { }
                textelement(PLAppltoItemEntry) { }
                textelement(PLShortcutDim1Code) { }
                textelement(PLShortcutDim2Code) { }
                textelement(PLJobNo) { }
                textelement(PLIndirectCostPercent) { }
                textelement(PLOutstandingAmount) { }
                textelement(PLQtyRcdNotInvoiced) { }
                textelement(PLAmtRcdNotInvoiced) { }
                textelement(PLQtyReceived) { }
                textelement(PLQtyInvoiced) { }
                textelement(PLReceiptNo) { }
                textelement(PLReceiptLineNo) { }
                textelement(PLProfitPercent) { }
                textelement(PLPayToVendorNo) { }
                textelement(PLInvDiscountAmount) { }
                textelement(PLVendorItemNo) { }
                textelement(PLSalesOrderNo) { }
                textelement(PLSalesOrderLineNo) { }
                textelement(PLDropShipment) { }
                textelement(PLGenBusPostingGroup) { }
                textelement(PLGenProdPostingGroup) { }
                textelement(PLVATCalcType) { }
                textelement(PLTransactionType) { }
                textelement(PLTransportMethod) { }
                textelement(PLAttachedToLineNo) { }
                textelement(PLEntryPoint) { }
                textelement(PLArea) { }
                textelement(PLTransactionSpecification) { }
                textelement(PLTaxAreaCode) { }
                textelement(PLTaxLiable) { }
                textelement(PLTaxGroupCode) { }
                textelement(PLUseTax) { }
                textelement(PLVatBusPostingGroup) { }
                textelement(PLVatProdPostingGroup) { }
                textelement(PLCurrCode) { }
                textelement(PLOustandingAmtLCY) { }
                textelement(PLAmtRcdNotInvoicedLCY) { }
                textelement(PLBlanketOrderNo) { }
                textelement(PLBlanketOrderLineNo) { }
                textelement(PLVatBaseAmount) { }
                textelement(PLUnitCost) { }
                textelement(PLSystemCreatedEntry) { }
                textelement(PLLineAmount) { }
                textelement(PLVatDifference) { }
                textelement(PLInvDiscAmountToInv) { }
                textelement(PLVatIdentifier) { }
                textelement(PLICPartnerRefType) { }
                textelement(PLICPartnerReference) { }
                textelement(PLPrepaymentPercent) { }
                textelement(PLPrepmtLineAmt) { }
                textelement(PLPrepmtAmtInv) { }
                textelement(PLPrepmtAmtInclVAT) { }
                textelement(PLPrepaymentAmount) { }
                textelement(PLPrepmtVATBaseAMT) { }
                textelement(PLPrepmtVATPercent) { }
                textelement(PLPrepmtVATCalcType) { }
                textelement(PLPrepaymentVATIdentifier) { }
                textelement(PLPrepaymentTaxAreaCode) { }
                textelement(PLPrepaymentTaxLiable) { }
                textelement(PLPrepaymentTaxGroupCode) { }
                textelement(PLPrepmtAmtToDeduct) { }
                textelement(PLPrepmtAmtDeducted) { }
                textelement(PLPrepaymentLine) { }
                textelement(PLPrepmtAmountInvInclVAT) { }
                textelement(PLPrepmtAmountInvLCY) { }
                textelement(PLIcPartnerCode) { }
                textelement(PLPrepaymentVATDifference) { }
                textelement(PLPrepmtVATDiffToDeduct) { }
                textelement(PLPrepmtVATDiffDeduced) { }
                textelement(PLJobTaskNo) { }
                textelement(PLJobLineType) { }
                textelement(PLJobUnitPrice) { }
                textelement(PLJobTotalPrice) { }
                textelement(PLJobLineAmount) { }
                textelement(PLJobLineDiscAmount) { }
                textelement(PLJobLineDiscPercent) { }
                textelement(PLJobUnitPriceLCY) { }
                textelement(PLJobTotalPriceLCY) { }
                textelement(PLJobLineAmountLCY) { }
                textelement(PLJobLineDiscAmountLCY) { }
                textelement(PLJobCurrFactor) { }
                textelement(PLJobCurrCode) { }
                textelement(PLProdOrderNo) { }
                textelement(PLVariantCode) { }
                textelement(PLBinCode) { }
                textelement(PLQtyPerUnitofMeasure) { }
                textelement(PLUomC) { }
                textelement(PLQtyBase) { }
                textelement(PLOutstandingQtyBase) { }
                textelement(PLQtytoInvBase) { }
                textelement(PLQtyToRecBase) { }
                textelement(PLQtyRcdNotInvBase) { }
                textelement(PLQtyReceivedBase) { }
                textelement(PLQtyInvoicedBase) { }
                textelement(PLFaPostingDate) { }
                textelement(PLFaPostingType) { }
                textelement(PLDeprBookCode) { }
                textelement(PLSalvageValue) { }
                textelement(PLDeprUntilFAPostingDate) { }
                textelement(PLDeprAcqCost) { }
                textelement(PLMaintenanceCost) { }
                textelement(PLInsuranceNo) { }
                textelement(PLBudgetedFANo) { }
                textelement(PLDupInDeprBook) { }
                textelement(PLUseDuplicationList) { }
                textelement(PLResponsibilityCenter) { }
                textelement(PLCrossReferenceNo) { }
                textelement(PLUnitOfMeasureCrossRef) { }
                textelement(PLCrossReferenceType) { }
                textelement(PLCrossReferenceTypeNo) { }
                textelement(PLItemCategoryCode) { }
                textelement(PLNonstock) { }
                textelement(PLPurchasingCode) { }
                textelement(PLProductGroupCode) { }
                textelement(PLSpecialOrder) { }
                textelement(PLSpecialOrderSalesNo) { }
                textelement(PLSpecialOrderSalesLineNo) { }
                textelement(PLCompletelyReceived) { }
                textelement(PLRequestedReceiptedDate) { }
                textelement(PLPromisedReceiptDate) { }
                textelement(PLLeadTimeCalc) { }
                textelement(PLInboundWhseHandlingTime) { }
                textelement(PLPlannedReceiptDate) { }
                textelement(PLOrderDate) { }
                textelement(PLAllowItemChrgAssignments) { }
                textelement(PLReturnQtyToShip) { }
                textelement(PLReturnQtytoShipBase) { }
                textelement(PLReturnQtyShippedNotInvd) { }
                textelement(PLReturnQtyShippedNotInvdBase) { }
                textelement(PLReturnShpdNotInvd) { }
                textelement(PLReturnShpdNotInvdLCY) { }
                textelement(PLReturnQtyShipped) { }
                textelement(PLReturnQtyShippedBase) { }
                textelement(PLReturnShipmentNo) { }
                textelement(PLReturnShipmentLineNo) { }
                textelement(PLReturnReasonCode) { }
                textelement(PLTaxToBeExpensed) { }
                textelement(PLProvincialTaxAreaCode) { }
                textelement(PL1099Liable)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvPurchaseLine: Record "Purchase Line";
                    begin
                        lvPurchaseLine.Init();

                        Evaluate(lvPurchaseLine."Document Type", PLDocType);
                        lvPurchaseLine."Buy-from Vendor No." := PLBuyFromVendorNo;
                        lvPurchaseLine."Document No." := PLDocNo;
                        Evaluate(lvPurchaseLine."Line No.", PLLineNo);
                        Evaluate(lvPurchaseLine."Type", PLType);
                        lvPurchaseLine."No." := PLNo;
                        lvPurchaseLine."Location Code" := PLLocationCode;
                        lvPurchaseLine."Posting Group" := PLPostingGroup;
                        Evaluate(lvPurchaseLine."Expected Receipt Date", PLExpectedReceiptDate);
                        lvPurchaseLine."Description" := PLDesc;
                        lvPurchaseLine."Description 2" := PLDesc2;
                        lvPurchaseLine."Unit of Measure" := PLUoM;
                        Evaluate(lvPurchaseLine."Quantity", PLQty);
                        Evaluate(lvPurchaseLine."Outstanding Quantity", PLOutstandingQty);
                        Evaluate(lvPurchaseLine."Qty. to Invoice", PLQtyToInv);
                        Evaluate(lvPurchaseLine."Qty. to Receive", PLQtyToReceive);
                        Evaluate(lvPurchaseLine."Direct Unit Cost", PLDirectUnitCost);
                        Evaluate(lvPurchaseLine."Unit Cost (LCY)", PLUnitCostLCY);
                        Evaluate(lvPurchaseLine."VAT %", PLVatPercent);
                        Evaluate(lvPurchaseLine."Line Discount %", PLLineDiscPercent);
                        Evaluate(lvPurchaseLine."Line Discount Amount", PLLineDiscAmount);
                        Evaluate(lvPurchaseLine."Amount", PLAmount);
                        Evaluate(lvPurchaseLine."Amount Including VAT", PLAmountIncVat);
                        Evaluate(lvPurchaseLine."Unit Price (LCY)", PLUnitPriceLCY);
                        Evaluate(lvPurchaseLine."Allow Invoice Disc.", PLAllowInvoiceDisc);
                        Evaluate(lvPurchaseLine."Gross Weight", PLGrossWeight);
                        Evaluate(lvPurchaseLine."Net Weight", PLNetWeight);
                        Evaluate(lvPurchaseLine."Units per Parcel", PLUnitsPerParcel);
                        Evaluate(lvPurchaseLine."Unit Volume", PLUnitVolume);
                        Evaluate(lvPurchaseLine."Appl.-to Item Entry", PLAppltoItemEntry);
                        lvPurchaseLine."Shortcut Dimension 1 Code" := PLShortcutDim1Code;
                        lvPurchaseLine."Shortcut Dimension 2 Code" := PLShortcutDim2Code;
                        lvPurchaseLine."Job No." := PLJobNo;
                        Evaluate(lvPurchaseLine."Indirect Cost %", PLIndirectCostPercent);
                        Evaluate(lvPurchaseLine."Outstanding Amount", PLOutstandingAmount);
                        Evaluate(lvPurchaseLine."Qty. Rcd. Not Invoiced", PLQtyRcdNotInvoiced);
                        Evaluate(lvPurchaseLine."Amt. Rcd. Not Invoiced", PLAmtRcdNotInvoiced);
                        Evaluate(lvPurchaseLine."Quantity Received", PLQtyReceived);
                        Evaluate(lvPurchaseLine."Quantity Invoiced", PLQtyInvoiced);
                        lvPurchaseLine."Receipt No." := PLReceiptNo;
                        Evaluate(lvPurchaseLine."Receipt Line No.", PLReceiptLineNo);
                        Evaluate(lvPurchaseLine."Profit %", PLProfitPercent);
                        lvPurchaseLine."Pay-to Vendor No." := PLPayToVendorNo;
                        Evaluate(lvPurchaseLine."Inv. Discount Amount", PLInvDiscountAmount);
                        lvPurchaseLine."Vendor Item No." := PLVendorItemNo;
                        lvPurchaseLine."Sales Order No." := PLSalesOrderNo;
                        Evaluate(lvPurchaseLine."Sales Order Line No.", PLSalesOrderLineNo);
                        Evaluate(lvPurchaseLine."Drop Shipment", PLDropShipment);
                        lvPurchaseLine."Gen. Bus. Posting Group" := PLGenBusPostingGroup;
                        lvPurchaseLine."Gen. Prod. Posting Group" := PLGenProdPostingGroup;
                        Evaluate(lvPurchaseLine."VAT Calculation Type", PLVATCalcType);
                        lvPurchaseLine."Transaction Type" := PLTransactionType;
                        lvPurchaseLine."Transport Method" := PLTransportMethod;
                        Evaluate(lvPurchaseLine."Attached to Line No.", PLAttachedToLineNo);
                        lvPurchaseLine."Entry Point" := PLEntryPoint;
                        lvPurchaseLine."Area" := PLArea;
                        lvPurchaseLine."Transaction Specification" := PLTransactionSpecification;
                        lvPurchaseLine."Tax Area Code" := PLTaxAreaCode;
                        Evaluate(lvPurchaseLine."Tax Liable", PLTaxLiable);
                        lvPurchaseLine."Tax Group Code" := PLTaxGroupCode;
                        Evaluate(lvPurchaseLine."Use Tax", PLUseTax);
                        lvPurchaseLine."VAT Bus. Posting Group" := PLVatBusPostingGroup;
                        lvPurchaseLine."VAT Prod. Posting Group" := PLVatProdPostingGroup;
                        lvPurchaseLine."Currency Code" := PLCurrCode;
                        Evaluate(lvPurchaseLine."Outstanding Amount (LCY)", PLOustandingAmtLCY);
                        Evaluate(lvPurchaseLine."Amt. Rcd. Not Invoiced (LCY)", PLAmtRcdNotInvoicedLCY);
                        lvPurchaseLine."Blanket Order No." := PLBlanketOrderNo;
                        Evaluate(lvPurchaseLine."Blanket Order Line No.", PLBlanketOrderLineNo);
                        Evaluate(lvPurchaseLine."VAT Base Amount", PLVatBaseAmount);
                        Evaluate(lvPurchaseLine."Unit Cost", PLUnitCost);
                        Evaluate(lvPurchaseLine."System-Created Entry", PLSystemCreatedEntry);
                        Evaluate(lvPurchaseLine."Line Amount", PLLineAmount);
                        Evaluate(lvPurchaseLine."VAT Difference", PLVatDifference);
                        Evaluate(lvPurchaseLine."Inv. Disc. Amount to Invoice", PLInvDiscAmountToInv);
                        lvPurchaseLine."VAT Identifier" := PLVatIdentifier;
                        Evaluate(lvPurchaseLine."IC Partner Ref. Type", PLICPartnerRefType);
                        lvPurchaseLine."IC Partner Reference" := PLICPartnerReference;
                        Evaluate(lvPurchaseLine."Prepayment %", PLPrepaymentPercent);
                        Evaluate(lvPurchaseLine."Prepmt. Line Amount", PLPrepmtLineAmt);
                        Evaluate(lvPurchaseLine."Prepmt. Amt. Inv.", PLPrepmtAmtInv);
                        Evaluate(lvPurchaseLine."Prepmt. Amt. Incl. VAT", PLPrepmtAmtInclVAT);
                        Evaluate(lvPurchaseLine."Prepayment Amount", PLPrepaymentAmount);
                        Evaluate(lvPurchaseLine."Prepmt. VAT Base Amt.", PLPrepmtVATBaseAMT);
                        Evaluate(lvPurchaseLine."Prepayment VAT %", PLPrepmtVATPercent);
                        Evaluate(lvPurchaseLine."Prepmt. VAT Calc. Type", PLPrepmtVATCalcType);
                        lvPurchaseLine."Prepayment VAT Identifier" := PLPrepaymentVATIdentifier;
                        lvPurchaseLine."Prepayment Tax Area Code" := PLPrepaymentTaxAreaCode;
                        Evaluate(lvPurchaseLine."Prepayment Tax Liable", PLPrepaymentTaxLiable);
                        lvPurchaseLine."Prepayment Tax Group Code" := PLPrepaymentTaxGroupCode;
                        Evaluate(lvPurchaseLine."Prepmt Amt to Deduct", PLPrepmtAmtToDeduct);
                        Evaluate(lvPurchaseLine."Prepmt Amt Deducted", PLPrepmtAmtDeducted);
                        Evaluate(lvPurchaseLine."Prepayment Line", PLPrepaymentLine);
                        Evaluate(lvPurchaseLine."Prepmt. Amount Inv. Incl. VAT", PLPrepmtAmountInvInclVAT);
                        Evaluate(lvPurchaseLine."Prepmt. Amount Inv. (LCY)", PLPrepmtAmountInvLCY);
                        lvPurchaseLine."IC Partner Code" := PLIcPartnerCode;
                        Evaluate(lvPurchaseLine."Prepayment VAT Difference", PLPrepaymentVATDifference);
                        Evaluate(lvPurchaseLine."Prepmt VAT Diff. to Deduct", PLPrepmtVATDiffToDeduct);
                        Evaluate(lvPurchaseLine."Prepmt VAT Diff. Deducted", PLPrepmtVATDiffDeduced);
                        lvPurchaseLine."Job Task No." := PLJobTaskNo;
                        Evaluate(lvPurchaseLine."Job Line Type", PLJobLineType);
                        Evaluate(lvPurchaseLine."Job Unit Price", PLJobUnitPrice);
                        Evaluate(lvPurchaseLine."Job Total Price", PLJobTotalPrice);
                        Evaluate(lvPurchaseLine."Job Line Amount", PLJobLineAmount);
                        Evaluate(lvPurchaseLine."Job Line Discount Amount", PLJobLineDiscAmount);
                        Evaluate(lvPurchaseLine."Job Line Discount %", PLJobLineDiscPercent);
                        Evaluate(lvPurchaseLine."Job Unit Price (LCY)", PLJobUnitPriceLCY);
                        Evaluate(lvPurchaseLine."Job Total Price (LCY)", PLJobTotalPriceLCY);
                        Evaluate(lvPurchaseLine."Job Line Amount (LCY)", PLJobLineAmountLCY);
                        Evaluate(lvPurchaseLine."Job Line Disc. Amount (LCY)", PLJobLineDiscAmountLCY);
                        Evaluate(lvPurchaseLine."Job Currency Factor", PLJobCurrFactor);
                        lvPurchaseLine."Job Currency Code" := PLJobCurrCode;
                        lvPurchaseLine."Prod. Order No." := PLProdOrderNo;
                        lvPurchaseLine."Variant Code" := PLVariantCode;
                        lvPurchaseLine."Bin Code" := PLBinCode;
                        Evaluate(lvPurchaseLine."Qty. per Unit of Measure", PLQtyPerUnitofMeasure);
                        lvPurchaseLine."Unit of Measure Code" := PLUomC;
                        Evaluate(lvPurchaseLine."Quantity (Base)", PLQtyBase);
                        Evaluate(lvPurchaseLine."Outstanding Qty. (Base)", PLOutstandingQtyBase);
                        Evaluate(lvPurchaseLine."Qty. to Invoice (Base)", PLQtytoInvBase);
                        Evaluate(lvPurchaseLine."Qty. to Receive (Base)", PLQtyToRecBase);
                        Evaluate(lvPurchaseLine."Qty. Rcd. Not Invoiced (Base)", PLQtyRcdNotInvBase);
                        Evaluate(lvPurchaseLine."Qty. Received (Base)", PLQtyReceivedBase);
                        Evaluate(lvPurchaseLine."Qty. Invoiced (Base)", PLQtyInvoicedBase);
                        Evaluate(lvPurchaseLine."FA Posting Date", PLFaPostingDate);
                        Evaluate(lvPurchaseLine."FA Posting Type", PLFaPostingType);
                        lvPurchaseLine."Depreciation Book Code" := PLDeprBookCode;
                        Evaluate(lvPurchaseLine."Salvage Value", PLSalvageValue);
                        Evaluate(lvPurchaseLine."Depr. until FA Posting Date", PLDeprUntilFAPostingDate);
                        Evaluate(lvPurchaseLine."Depr. Acquisition Cost", PLDeprAcqCost);
                        lvPurchaseLine."Maintenance Code" := PLMaintenanceCost;
                        lvPurchaseLine."Insurance No." := PLInsuranceNo;
                        lvPurchaseLine."Budgeted FA No." := PLBudgetedFANo;
                        lvPurchaseLine."Duplicate in Depreciation Book" := PLDupInDeprBook;
                        Evaluate(lvPurchaseLine."Use Duplication List", PLUseDuplicationList);
                        lvPurchaseLine."Responsibility Center" := PLResponsibilityCenter;
                        //lvPurchaseLine."Cross-Reference No." := PLCrossReferenceNo;
                        //lvPurchaseLine."Unit of Measure (Cross Ref.)" := PLUnitOfMeasureCrossRef;
                        //lvPurchaseLine."Cross-Reference Type" := PLCrossReferenceType;
                        //lvPurchaseLine."Cross-Reference Type No." := PLCrossReferenceTypeNo;
                        lvPurchaseLine."Item Category Code" := PLItemCategoryCode;
                        Evaluate(lvPurchaseLine."Nonstock", PLNonstock);
                        lvPurchaseLine."Purchasing Code" := PLPurchasingCode;
                        //lvPurchaseLine."Product Group Code" := PLProductGroupCode;
                        Evaluate(lvPurchaseLine."Special Order", PLSpecialOrder);
                        lvPurchaseLine."Special Order Sales No." := PLSpecialOrderSalesNo;
                        Evaluate(lvPurchaseLine."Special Order Sales Line No.", PLSpecialOrderSalesLineNo);
                        Evaluate(lvPurchaseLine."Completely Received", PLCompletelyReceived);
                        Evaluate(lvPurchaseLine."Requested Receipt Date", PLRequestedReceiptedDate);
                        Evaluate(lvPurchaseLine."Promised Receipt Date", PLPromisedReceiptDate);
                        Evaluate(lvPurchaseLine."Lead Time Calculation", PLLeadTimeCalc);
                        Evaluate(lvPurchaseLine."Inbound Whse. Handling Time", PLInboundWhseHandlingTime);
                        Evaluate(lvPurchaseLine."Planned Receipt Date", PLPlannedReceiptDate);
                        Evaluate(lvPurchaseLine."Order Date", PLOrderDate);
                        Evaluate(lvPurchaseLine."Allow Item Charge Assignment", PLAllowItemChrgAssignments);
                        Evaluate(lvPurchaseLine."Return Qty. to Ship", PLReturnQtyToShip);
                        Evaluate(lvPurchaseLine."Return Qty. to Ship (Base)", PLReturnQtytoShipBase);
                        Evaluate(lvPurchaseLine."Return Qty. Shipped Not Invd.", PLReturnQtyShippedNotInvd);
                        Evaluate(lvPurchaseLine."Ret. Qty. Shpd Not Invd.(Base)", PLReturnQtyShippedNotInvdBase);
                        Evaluate(lvPurchaseLine."Return Shpd. Not Invd.", PLReturnShpdNotInvd);
                        Evaluate(lvPurchaseLine."Return Shpd. Not Invd. (LCY)", PLReturnShpdNotInvdLCY);
                        Evaluate(lvPurchaseLine."Return Qty. Shipped", PLReturnQtyShipped);
                        Evaluate(lvPurchaseLine."Return Qty. Shipped (Base)", PLReturnQtyShippedBase);
                        lvPurchaseLine."Return Shipment No." := PLReturnShipmentNo;
                        Evaluate(lvPurchaseLine."Return Shipment Line No.", PLReturnShipmentLineNo);
                        lvPurchaseLine."Return Reason Code" := PLReturnReasonCode;
                        Evaluate(lvPurchaseLine."Tax To Be Expensed", PLTaxToBeExpensed);
                        lvPurchaseLine."Provincial Tax Area Code" := PLProvincialTaxAreaCode;
                        Evaluate(lvPurchaseLine."IRS 1099 Liable", PL1099Liable);
                        lvPurchaseLine.Insert();
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    lvPurchaseLine: record "Purchase Line";
                begin
                    lvPurchaseLine.SetRange("Document No.", gvPurchLineDocumentNo);
                    lvPurchaseLine.SetRange("Line No.", gvPurchLineLineNo);
                    if lvPurchaseLine.FindFirst() then
                        currXMLport.Skip;
                end;
            }
        }
    }

    var
        gvPurchHeaderNo: Code[20];
        gvPurchLineDocumentNo: Code[20];
        gvPurchLineLineNo: Integer;

}