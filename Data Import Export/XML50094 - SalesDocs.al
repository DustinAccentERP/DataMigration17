xmlport 90094 "Master Base Sales Doc"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(SalesHeader; "Sales Header")
            {
                textelement(SHDocumentType) { }
                textelement(SHSellToCustomerNo) { }
                textelement(SHNo)
                {
                    trigger OnAfterAssignVariable();
                    begin
                        gvSalesHeaderNo := SHNo;
                    end;
                }
                textelement(SHBillToCustomerNo) { }
                textelement(SHBillToName) { }
                textelement(SHBillToName2) { }
                textelement(SHBillToAddr) { }
                textelement(SHBillToAddr2) { }
                textelement(SHBillToCity) { }
                textelement(SHBillToContact) { }
                textelement(SHYourReference) { }
                textelement(SHShiptoCode) { }
                textelement(SHShiptoName) { }
                textelement(SHShiptoName2) { }
                textelement(SHShiptoAddr) { }
                textelement(SHShiptoAddr2) { }
                textelement(SHShiptoCity) { }
                textelement(SHShiptoContact) { }
                textelement(SHOrderDate) { }
                textelement(SHPostingDate) { }
                textelement(SHShipmentDate) { }
                textelement(SHPostingDesc) { }
                textelement(SHPaymentTermsCode) { }
                textelement(SHDueDate) { }
                textelement(SHPaymentDiscPer) { }
                textelement(SHPmtDiscDate) { }
                textelement(SHShipmentMethodCode) { }
                textelement(SHLocationCode) { }
                textelement(SHShortcutDimCode1) { }
                textelement(SHShortcutDimCode2) { }
                textelement(SHCustomerPostingGroup) { }
                textelement(SHCurrCode) { }
                textelement(SHCurrFactor) { }
                textelement(SHCustomerPriceGroup) { }
                textelement(SHPricesIncludingVAT) { }
                textelement(SHInvDiscCode) { }
                textelement(SHCustDiscGroup) { }
                textelement(SHLanguageCode) { }
                textelement(SHSalespersonCode) { }
                textelement(SHOrderClass) { }
                textelement(SHNoPrinted) { }
                textelement(SHOnHold) { }
                textelement(SHAppliestoDocType) { }
                textelement(SHAppliestoDocNo) { }
                textelement(SHBalAccNo) { }
                textelement(SHShip) { }
                textelement(SHInvoice) { }
                textelement(SHShippingNo) { }
                textelement(SHPostingNo) { }
                textelement(SHLastShippingNo) { }
                textelement(SHLastPostingNo) { }
                textelement(SHPrepaymentNo) { }
                textelement(SHLastPrepaymentNo) { }
                textelement(SHPrepmtCrMemoNo) { }
                textelement(SHLastPrepmtCrMemoNo) { }
                textelement(SHVATRegistrationNo) { }
                textelement(SHCombineShipments) { }
                textelement(SHReasonCode) { }
                textelement(SHGenBusPostingGroup) { }
                textelement(SHEU3PartyTrade) { }
                textelement(SHTransactionType) { }
                textelement(SHTransportMethod) { }
                textelement(SHVATCountryRegionCode) { }
                textelement(SHSelltoCustomerName) { }
                textelement(SHSelltoCustomerName2) { }
                textelement(SHSelltoAddr) { }
                textelement(SHSelltoAddr2) { }
                textelement(SHSelltoCity) { }
                textelement(SHSelltoContact) { }
                textelement(SHBilltoPostCode) { }
                textelement(SHBilltoCounty) { }
                textelement(SHBilltoCountryRegionCode) { }
                textelement(SHSelltoPostCode) { }
                textelement(SHSelltoCounty) { }
                textelement(SHSelltoCountryRegionCode) { }
                textelement(SHShiptoPostCode) { }
                textelement(SHShiptoCounty) { }
                textelement(SHShiptoCountryRegionCode) { }
                textelement(SHBalAccountType) { }
                textelement(SHExitPoint) { }
                textelement(SHCorrection) { }
                textelement(SHDocDate) { }
                textelement(SHExtDocNo) { }
                textelement(SHArea) { }
                textelement(SHTransSpecification) { }
                textelement(SHPaymentMethodCode) { }
                textelement(SHShippingAgentCode) { }
                textelement(SHPackageTrackingNo) { }
                textelement(SHNoSeries) { }
                textelement(SHPostingNoSeries) { }
                textelement(SHShippingNoSeries) { }
                textelement(SHTaxAreaCode) { }
                textelement(SHTaxLiable) { }
                textelement(SHVATBusPostingGroup) { }
                textelement(SHReserve) { }
                textelement(SHAppliesToID) { }
                textelement(SHVATBaseDiscPercent) { }
                textelement(SHStatus) { }
                textelement(SHInvDiscCalc) { }
                textelement(SHInvDiscValue) { }
                textelement(SHSendICDocument) { }
                textelement(SHICStatus) { }
                textelement(SHSelltoICPartnerCode) { }
                textelement(SHBilltoICPartnerCode) { }
                textelement(SHICDirection) { }
                textelement(SHPrepaymentPercent) { }
                textelement(SHPrepaymentNoSeries) { }
                textelement(SHCompressPrepayment) { }
                textelement(SHPrepaymentDueDate) { }
                textelement(SHPrepmtCrMemoNoSeries) { }
                textelement(SHPrepmtPostingDesc) { }
                textelement(SHPrepmtPmtDiscDate) { }
                textelement(SHPrepmtPaymentTermsCode) { }
                textelement(SHPrepmtDiscPercent) { }
                textelement(SHQuoteNo) { }
                textelement(SHDocNoOccur) { }
                textelement(SHCampaignNo) { }
                textelement(SHSelltoCustomerTemplateCode) { }
                textelement(SHSelltoContactNo) { }
                textelement(SHBilltoContactNo) { }
                textelement(SHBilltoCustomerTemplateCode) { }
                textelement(SHOpportunityNo) { }
                textelement(SHResponsibilityCenter) { }
                textelement(SHShippingAdvice) { }
                textelement(SHPostingFromWhseRef) { }
                textelement(SHReqDeliveryDate) { }
                textelement(SHPromisedDeliveryDate) { }
                textelement(SHShippingTime) { }
                textelement(SHOutboundWhseHandlingTime) { }
                textelement(SHShippingAgentServiceCode) { }
                textelement(SHReceive) { }
                textelement(SHReturnReceiptNo) { }
                textelement(SHReturnReceiptNoSeries) { }
                textelement(SHLastReturnReceiptNo) { }
                textelement(SHAllowLineDisc) { }
                textelement(SHGetShipmentUsed) { }
                textelement(SHAssignedUserID) { }
                textelement(SHShiptoUPSZone) { }
                textelement(SHTaxExemptionNo) { }
                textelement(SHSTETransactionID) { }
                textelement(SHPrepmtIncludeTax)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvSalesHeader: Record "Sales Header";
                    begin
                        lvSalesHeader.Init();
                        Evaluate(lvSalesHeader."Document Type", SHDocumentType);
                        lvSalesHeader."Sell-to Customer No." := SHSellToCustomerNo;
                        lvSalesHeader."No." := SHNo;
                        lvSalesHeader."Bill-to Customer No." := SHBillToCustomerNo;
                        lvSalesHeader."Bill-to Name" := SHBillToName;
                        lvSalesHeader."Bill-to Name 2" := SHBillToName2;
                        lvSalesHeader."Bill-to Address" := SHBillToAddr;
                        lvSalesHeader."Bill-to Address 2" := SHBillToAddr2;
                        lvSalesHeader."Bill-to City" := SHBillToCity;
                        lvSalesHeader."Bill-to Contact" := SHBillToContact;
                        lvSalesHeader."Your Reference" := SHYourReference;
                        lvSalesHeader."Ship-to Code" := SHShiptoCode;
                        lvSalesHeader."Ship-to Name" := SHShiptoName;
                        lvSalesHeader."Ship-to Name 2" := SHShiptoName2;
                        lvSalesHeader."Ship-to Address" := SHShiptoAddr;
                        lvSalesHeader."Ship-to Address 2" := SHShiptoAddr2;
                        lvSalesHeader."Ship-to City" := SHShiptoCity;
                        lvSalesHeader."Ship-to Contact" := SHShiptoContact;
                        Evaluate(lvSalesHeader."Order Date", SHOrderDate);
                        Evaluate(lvSalesHeader."Posting Date", SHPostingDate);
                        Evaluate(lvSalesHeader."Shipment Date", SHShipmentDate);
                        lvSalesHeader."Posting Description" := SHPostingDesc;
                        lvSalesHeader."Payment Terms Code" := SHPaymentTermsCode;
                        Evaluate(lvSalesHeader."Due Date", SHDueDate);
                        Evaluate(lvSalesHeader."Payment Discount %", SHPaymentDiscPer);
                        Evaluate(lvSalesHeader."Pmt. Discount Date", SHPmtDiscDate);
                        lvSalesHeader."Shipment Method Code" := SHShipmentMethodCode;
                        lvSalesHeader."Location Code" := SHLocationCode;
                        lvSalesHeader."Shortcut Dimension 1 Code" := SHShortcutDimCode1;
                        lvSalesHeader."Shortcut Dimension 2 Code" := SHShortcutDimCode2;
                        lvSalesHeader."Customer Posting Group" := SHCustomerPostingGroup;
                        lvSalesHeader."Currency Code" := SHCurrCode;
                        Evaluate(lvSalesHeader."Currency Factor", SHCurrFactor);
                        lvSalesHeader."Customer Price Group" := SHCustomerPriceGroup;
                        Evaluate(lvSalesHeader."Prices Including VAT", SHPricesIncludingVAT);
                        lvSalesHeader."Invoice Disc. Code" := SHInvDiscCode;
                        lvSalesHeader."Customer Disc. Group" := SHCustDiscGroup;
                        lvSalesHeader."Language Code" := SHLanguageCode;
                        lvSalesHeader."Salesperson Code" := SHSalespersonCode;
                        lvSalesHeader."Order Class" := SHOrderClass;
                        Evaluate(lvSalesHeader."No. Printed", SHNoPrinted);
                        lvSalesHeader."On Hold" := SHOnHold;
                        Evaluate(lvSalesHeader."Applies-to Doc. Type", SHAppliestoDocType);
                        lvSalesHeader."Applies-to Doc. No." := SHAppliestoDocNo;
                        lvSalesHeader."Bal. Account No." := SHBalAccNo;
                        Evaluate(lvSalesHeader.Ship, SHShip);
                        Evaluate(lvSalesHeader.Invoice, SHInvoice);
                        lvSalesHeader."Shipping No." := SHShippingNo;
                        lvSalesHeader."Posting No." := SHPostingNo;
                        lvSalesHeader."Last Shipping No." := SHLastShippingNo;
                        lvSalesHeader."Last Posting No." := SHLastPostingNo;
                        lvSalesHeader."Prepayment No." := SHPrepaymentNo;
                        lvSalesHeader."Last Prepayment No." := SHLastPrepaymentNo;
                        lvSalesHeader."Prepmt. Cr. Memo No." := SHPrepmtCrMemoNo;
                        lvSalesHeader."Last Prepmt. Cr. Memo No." := SHLastPrepmtCrMemoNo;
                        lvSalesHeader."VAT Registration No." := SHVATRegistrationNo;
                        Evaluate(lvSalesHeader."Combine Shipments", SHCombineShipments);
                        lvSalesHeader."Reason Code" := SHReasonCode;
                        lvSalesHeader."Gen. Bus. Posting Group" := SHGenBusPostingGroup;
                        Evaluate(lvSalesHeader."EU 3-Party Trade", SHEU3PartyTrade);
                        lvSalesHeader."Transaction Type" := SHTransactionType;
                        lvSalesHeader."Transport Method" := SHTransportMethod;
                        lvSalesHeader."VAT Country/Region Code" := SHVATCountryRegionCode;
                        lvSalesHeader."Sell-to Customer Name" := SHSelltoCustomerName;
                        lvSalesHeader."Sell-to Customer Name 2" := SHSelltoCustomerName2;
                        lvSalesHeader."Sell-to Address" := SHSelltoAddr;
                        lvSalesHeader."Sell-to Address 2" := SHSelltoAddr2;
                        lvSalesHeader."Sell-to City" := SHSelltoCity;
                        lvSalesHeader."Sell-to Contact" := SHSelltoContact;
                        lvSalesHeader."Bill-to Post Code" := SHBilltoPostCode;
                        lvSalesHeader."Bill-to County" := SHBilltoCounty;
                        lvSalesHeader."Bill-to Country/Region Code" := SHBilltoCountryRegionCode;
                        lvSalesHeader."Sell-to Post Code" := SHSelltoPostCode;
                        lvSalesHeader."Sell-to County" := SHSelltoCounty;
                        lvSalesHeader."Sell-to Country/Region Code" := SHSelltoCountryRegionCode;
                        lvSalesHeader."Ship-to Post Code" := SHShiptoPostCode;
                        lvSalesHeader."Ship-to County" := SHShiptoCounty;
                        lvSalesHeader."Ship-to Country/Region Code" := SHShiptoCountryRegionCode;
                        Evaluate(lvSalesHeader."Bal. Account Type", SHBalAccountType);
                        lvSalesHeader."Exit Point" := SHExitPoint;
                        Evaluate(lvSalesHeader.Correction, SHCorrection);
                        Evaluate(lvSalesHeader."Document Date", SHDocDate);
                        lvSalesHeader."External Document No." := SHExtDocNo;
                        lvSalesHeader."Area" := SHArea;
                        lvSalesHeader."Transaction Specification" := SHTransSpecification;
                        lvSalesHeader."Payment Method Code" := SHPaymentMethodCode;
                        lvSalesHeader."Shipping Agent Code" := SHShippingAgentCode;
                        lvSalesHeader."Package Tracking No." := SHPackageTrackingNo;
                        lvSalesHeader."No. Series" := SHNoSeries;
                        lvSalesHeader."Posting No. Series" := SHPostingNoSeries;
                        lvSalesHeader."Shipping No. Series" := SHShippingNoSeries;
                        lvSalesHeader."Tax Area Code" := SHTaxAreaCode;
                        Evaluate(lvSalesHeader."Tax Liable", SHTaxLiable);
                        lvSalesHeader."VAT Bus. Posting Group" := SHVATBusPostingGroup;
                        Evaluate(lvSalesHeader.Reserve, SHReserve);
                        lvSalesHeader."Applies-to ID" := SHAppliesToID;
                        Evaluate(lvSalesHeader."VAT Base Discount %", SHVATBaseDiscPercent);
                        Evaluate(lvSalesHeader.Status, SHStatus);
                        Evaluate(lvSalesHeader."Invoice Discount Calculation", SHInvDiscCalc);
                        Evaluate(lvSalesHeader."Invoice Discount Value", SHInvDiscValue);
                        Evaluate(lvSalesHeader."Send IC Document", SHSendICDocument);
                        Evaluate(lvSalesHeader."IC Status", SHICStatus);
                        lvSalesHeader."Sell-to IC Partner Code" := SHSelltoICPartnerCode;
                        lvSalesHeader."Bill-to IC Partner Code" := SHBilltoICPartnerCode;
                        Evaluate(lvSalesHeader."IC Direction", SHICDirection);
                        Evaluate(lvSalesHeader."Prepayment %", SHPrepaymentPercent);
                        lvSalesHeader."Prepayment No. Series" := SHPrepaymentNoSeries;
                        Evaluate(lvSalesHeader."Compress Prepayment", SHCompressPrepayment);
                        Evaluate(lvSalesHeader."Prepayment Due Date", SHPrepaymentDueDate);
                        lvSalesHeader."Prepmt. Cr. Memo No. Series" := SHPrepmtCrMemoNoSeries;
                        lvSalesHeader."Prepmt. Posting Description" := SHPrepmtPostingDesc;
                        Evaluate(lvSalesHeader."Prepmt. Pmt. Discount Date", SHPrepmtPmtDiscDate);
                        lvSalesHeader."Prepmt. Payment Terms Code" := SHPrepmtPaymentTermsCode;
                        Evaluate(lvSalesHeader."Prepmt. Payment Discount %", SHPrepmtDiscPercent);
                        lvSalesHeader."Quote No." := SHQuoteNo;
                        Evaluate(lvSalesHeader."Doc. No. Occurrence", SHDocNoOccur);
                        lvSalesHeader."Campaign No." := SHCampaignNo;
                        lvSalesHeader."Sell-to Customer Template Code" := SHSelltoCustomerTemplateCode;
                        lvSalesHeader."Sell-to Contact No." := SHSelltoContactNo;
                        lvSalesHeader."Bill-to Contact No." := SHBilltoContactNo;
                        lvSalesHeader."Bill-to Customer Template Code" := SHBilltoCustomerTemplateCode;
                        lvSalesHeader."Opportunity No." := SHOpportunityNo;
                        lvSalesHeader."Responsibility Center" := SHResponsibilityCenter;
                        Evaluate(lvSalesHeader."Shipping Advice", SHShippingAdvice);
                        Evaluate(lvSalesHeader."Posting from Whse. Ref.", SHPostingFromWhseRef);
                        Evaluate(lvSalesHeader."Requested Delivery Date", SHReqDeliveryDate);
                        Evaluate(lvSalesHeader."Promised Delivery Date", SHPromisedDeliveryDate);
                        Evaluate(lvSalesHeader."Shipping Time", SHShippingTime);
                        Evaluate(lvSalesHeader."Outbound Whse. Handling Time", SHOutboundWhseHandlingTime);
                        lvSalesHeader."Shipping Agent Service Code" := SHShippingAgentServiceCode;
                        Evaluate(lvSalesHeader.Receive, SHReceive);
                        lvSalesHeader."Return Receipt No." := SHReturnReceiptNo;
                        lvSalesHeader."Return Receipt No. Series" := SHReturnReceiptNoSeries;
                        lvSalesHeader."Last Return Receipt No." := SHLastReturnReceiptNo;
                        Evaluate(lvSalesHeader."Allow Line Disc.", SHAllowLineDisc);
                        Evaluate(lvSalesHeader."Get Shipment Used", SHGetShipmentUsed);
                        lvSalesHeader."Assigned User ID" := SHAssignedUserID;
                        lvSalesHeader."Ship-to UPS Zone" := SHShiptoUPSZone;
                        lvSalesHeader."Tax Exemption No." := SHTaxExemptionNo;
                        lvSalesHeader."STE Transaction ID" := SHSTETransactionID;
                        Evaluate(lvSalesHeader."Prepmt. Include Tax", SHPrepmtIncludeTax);
                        lvSalesHeader.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvSalesHeader: record "Sales Header";
                begin
                    lvSalesHeader.SetRange("No.", gvSalesHeaderNo);
                    if lvSalesHeader.FindFirst() then
                        currXMLport.Skip;
                end;
            }
            // SGI doesnt need - remove this remark later
            tableelement(SalesLines; "Sales Line")
            {
                textelement(SLDocType) { }
                textelement(SLSellToCustNo) { }
                textelement(SLDocNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvSalesLineDocumentNo := SLDocNo
                    end;
                }
                textelement(SLLineNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(gvSalesLineLineNo, SLLineNo);
                    end;
                }
                textelement(SLType) { }
                textelement(SLNo) { }
                textelement(SLLocationCode) { }
                textelement(SLPostingGroup) { }
                textelement(SLShipmentDate) { }
                textelement(SLDescription) { }
                textelement(SLDescription2) { }
                textelement(SLUoM) { }
                textelement(SLQty) { }
                textelement(SLOutstandingQty) { }
                textelement(SLQtyToInvoice) { }
                textelement(SLQtyToShip) { }
                textelement(SLUnitPrice) { }
                textelement(SLUnitCostLCY) { }
                textelement(SLVATPercent) { }
                textelement(SLLineDiscPercent) { }
                textelement(SLLineDiscAmt) { }
                textelement(SLAmount) { }
                textelement(SLAmountIncVAT) { }
                textelement(SLAllowInvDisc) { }
                textelement(SLGrossWeight) { }
                textelement(SLNetWeight) { }
                textelement(SLUnitsPerParcel) { }
                textelement(SLUnitVolume) { }
                textelement(SLAppToItemEntry) { }
                textelement(SLShortcutDimCode1) { }
                textelement(SLShortcutDimCode2) { }
                textelement(SLCustPriceGroup) { }
                textelement(SLJobNo) { }
                textelement(SLWorkTypeCode) { }
                textelement(SLOutstandingAmt) { }
                textelement(SLQtyShippedNotInvoiced) { }
                textelement(SLShippedNoInvoiced) { }
                textelement(SLQtyShipped) { }
                textelement(SLQtyInvoiced) { }
                textelement(SLShipmentNo) { }
                textelement(SLShipmentLineNo) { }
                textelement(SLProfitPercent) { }
                textelement(SLBilltoCustomerNo) { }
                textelement(SLInvDiscAmount) { }
                textelement(SLPurchOrderNo) { }
                textelement(SLPurchOrderLineNo) { }
                textelement(SLDropShipment) { }
                textelement(SLGenBusPostingGroup) { }
                textelement(SLGenProdPostingGroup) { }
                textelement(SLVATCalcType) { }
                textelement(SLTransactionType) { }
                textelement(SLTransportMethod) { }
                textelement(SLAttachedtoLineNo) { }
                textelement(SLExitPoint) { }
                textelement(SLArea) { }
                textelement(SLTransactionSpecification) { }
                textelement(SLTaxAreaCode) { }
                textelement(SLTaxLiable) { }
                textelement(SLTaxGroupCode) { }
                textelement(SLVATBusPostingGroup) { }
                textelement(SLVATProdPostingGroup) { }
                textelement(SLCurrCode) { }
                textelement(SLOutstandingAmtLCY) { }
                textelement(SLShippedNoInvoiceLCY) { }
                textelement(SLReserve) { }
                textelement(SLBlanketOrderNo) { }
                textelement(SLBlanketOrderLineNo) { }
                textelement(SLVATBaseAmount) { }
                textelement(SLUnitCost) { }
                textelement(SLSystemCreatedEntry) { }
                textelement(SLLineAmount) { }
                textelement(SLVATDifference) { }
                textelement(SLInvDiscAmtToInv) { }
                textelement(SLVATIdent) { }
                textelement(SLICPartnerRefType) { }
                textelement(SLICPartnerReference) { }
                textelement(SLPrepmtPercent) { }
                textelement(SLPrepmtLineAmount) { }
                textelement(SLPrepmtAmtInv) { }
                textelement(SLPrepmtAmtInclVAT) { }
                textelement(SLPrepmtAmount) { }
                textelement(SLPrepmtVATBaseAMT) { }
                textelement(SLPrepmtVATPercent) { }
                textelement(SLPrepmtVATCalcType) { }
                textelement(SLPrepmtVATIdentifier) { }
                textelement(SLPrepaymentTaxAreaCode) { }
                textelement(SLPrepaymentTaxLiable) { }
                textelement(SLPrepaymentTaxGroupCode) { }
                textelement(SLPrepmtAmtToDeduct) { }
                textelement(SLPrepmtAmtDeducted) { }
                textelement(SLPrepaymentLine) { }
                textelement(SLPrepmtAmtInvInclVAT) { }
                textelement(SLPrepmtAmtInvLCY) { }
                textelement(SLICPartnerCode) { }
                textelement(SLPrepaymentVATDifference) { }
                textelement(SLPrepmtVATdiffToDeduct) { }
                textelement(SLPrepmtVATdiffDeducted) { }
                textelement(SLJobTaskNo) { }
                textelement(SLJobContractEntryNo) { }
                textelement(SLVariantCode) { }
                textelement(SLBinCode) { }
                textelement(SLQtyPerUnitOfMeasure) { }
                textelement(SLPlanned) { }
                textelement(SLUoMCode) { }
                textelement(SLQtyBase) { }
                textelement(SLOutstandingQtyBase) { }
                textelement(SLQtytoInvoiceBase) { }
                textelement(SLQtytoShipBase) { }
                textelement(SLQtyShippedNotInvd) { }
                textelement(SLQtyShippedBase) { }
                textelement(SLQtyInvoicedBase) { }
                textelement(SLFAPostingDate) { }
                textelement(SLDepBookCode) { }
                textelement(SLDeprUntilFAPostingDate) { }
                textelement(SLDupInDeprBook) { }
                textelement(SLUseDuplicationList) { }
                textelement(SLRespCenter) { }
                textelement(SLOutOfStockSub) { }
                textelement(SLSubAvail) { }
                textelement(SLOrigOrderNo) { }
                textelement(SLOrigOrderedVarCode) { }
                textelement(SLCrossReferenceNo) { }
                textelement(SLUoMCrossRef) { }
                textelement(SLCrossRefType) { }
                textelement(SLCrossRefTypeNo) { }
                textelement(SLItemCatCode) { }
                textelement(SLNonstock) { }
                textelement(SLPurchCode) { }
                textelement(SLProductGroupCode) { }
                textelement(SLSpecialOrder) { }
                textelement(SLSpecialOrderPurchNo) { }
                textelement(SLSpecialOrderPurchLineNo) { }
                textelement(SLCompletelyShipped) { }
                textelement(SLRequestedDeliveryDate) { }
                textelement(SLPromisedDeliveryDate) { }
                textelement(SLShippingTime) { }
                textelement(SLOutboundWhseHandlingTime) { }
                textelement(SLPlannedDeliveryDate) { }
                textelement(SLPlannedShipmentDate) { }
                textelement(SLShippingAgentCode) { }
                textelement(SLShippingAgentServiceCode) { }
                textelement(SLAllowItemChargeAssignment) { }
                textelement(SLReturnQtyToReceive) { }
                textelement(SLReturnQtyToReceiveBase) { }
                textelement(SLReturnQtyRcdNoInvd) { }
                textelement(SLRetQtyRcdNoInvBased) { }
                textelement(SLReturnRcdNoInvd) { }
                textelement(SLReturnRcdNoInvdLCY) { }
                textelement(SLReturnQtyReceived) { }
                textelement(SLReturnQtyReceivedBase) { }
                textelement(SLAppliFromItemEntry) { }
                textelement(SLReturnReceiptNo) { }
                textelement(SLReturnReceiptLineNo) { }
                textelement(SLReturnReasonCode) { }
                textelement(SLAllowLineDisc) { }
                textelement(SLCustomerDiscGroup) { }
                textelement(SLPackageTrackingNo) { }
                textelement(SLKitItem) { }
                textelement(SLBuildKit)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvSalesLine: Record "Sales Line";
                    begin
                        lvSalesLine.Init();

                        Evaluate(lvSalesLine."Document Type", SLDocType);
                        lvSalesLine."Sell-to Customer No." := SLSellToCustNo;
                        lvSalesLine."Document No." := SLDocNo;
                        Evaluate(lvSalesLine."Line No.", SLLineNo);
                        Evaluate(lvSalesLine.Type, SLType);
                        lvSalesLine."No." := SLNo;
                        lvSalesLine."Location Code" := SLLocationCode;
                        lvSalesLine."Posting Group" := SLPostingGroup;
                        Evaluate(lvSalesLine."Shipment Date", SLShipmentDate);
                        lvSalesLine.Description := SLDescription;
                        lvSalesLine."Description 2" := SLDescription2;
                        lvSalesLine."Unit of Measure" := SLUoM;
                        Evaluate(lvSalesLine.Quantity, SLQty);
                        Evaluate(lvSalesLine."Outstanding Quantity", SLOutstandingQty);
                        Evaluate(lvSalesLine."Qty. to Invoice", SLQtyToInvoice);
                        Evaluate(lvSalesLine."Qty. to Ship", SLQtyToShip);
                        Evaluate(lvSalesLine."Unit Price", SLUnitPrice);
                        Evaluate(lvSalesLine."Unit Cost (LCY)", SLUnitCostLCY);
                        Evaluate(lvSalesLine."VAT %", SLVATPercent);
                        Evaluate(lvSalesLine."Line Discount %", SLLineDiscPercent);
                        Evaluate(lvSalesLine."Line Discount Amount", SLLineDiscAmt);
                        Evaluate(lvSalesLine.Amount, SLAmount);
                        Evaluate(lvSalesLine."Amount Including VAT", SLAmountIncVAT);
                        Evaluate(lvSalesLine."Allow Invoice Disc.", SLAllowInvDisc);
                        Evaluate(lvSalesLine."Gross Weight", SLGrossWeight);
                        Evaluate(lvSalesLine."Net Weight", SLNetWeight);
                        Evaluate(lvSalesLine."Units per Parcel", SLUnitsPerParcel);
                        Evaluate(lvSalesLine."Unit Volume", SLUnitVolume);
                        Evaluate(lvSalesLine."Appl.-to Item Entry", SLAppToItemEntry);
                        lvSalesLine."Shortcut Dimension 1 Code" := SLShortcutDimCode1;
                        lvSalesLine."Shortcut Dimension 2 Code" := SLShortcutDimCode2;
                        lvSalesLine."Customer Price Group" := SLCustPriceGroup;
                        lvSalesLine."Job No." := SLJobNo;
                        lvSalesLine."Work Type Code" := SLWorkTypeCode;
                        Evaluate(lvSalesLine."Outstanding Amount", SLOutstandingAmt);
                        Evaluate(lvSalesLine."Qty. Shipped Not Invoiced", SLQtyShippedNotInvoiced);
                        Evaluate(lvSalesLine."Shipped Not Invoiced", SLShippedNoInvoiced);
                        Evaluate(lvSalesLine."Quantity Shipped", SLQtyShipped);
                        Evaluate(lvSalesLine."Quantity Invoiced", SLQtyInvoiced);
                        lvSalesLine."Shipment No." := SLShipmentNo;
                        Evaluate(lvSalesLine."Shipment Line No.", SLShipmentLineNo);
                        Evaluate(lvSalesLine."Profit %", SLProfitPercent);
                        lvSalesLine."Bill-to Customer No." := SLBilltoCustomerNo;
                        Evaluate(lvSalesLine."Inv. Discount Amount", SLInvDiscAmount);
                        lvSalesLine."Purchase Order No." := SLPurchOrderNo;
                        Evaluate(lvSalesLine."Purch. Order Line No.", SLPurchOrderLineNo);
                        Evaluate(lvSalesLine."Drop Shipment", SLDropShipment);
                        lvSalesLine."Gen. Bus. Posting Group" := SLGenBusPostingGroup;
                        lvSalesLine."Gen. Prod. Posting Group" := SLGenProdPostingGroup;
                        Evaluate(lvSalesLine."VAT Calculation Type", SLVATCalcType);
                        lvSalesLine."Transaction Type" := SLTransactionType;
                        lvSalesLine."Transport Method" := SLTransportMethod;
                        Evaluate(lvSalesLine."Attached to Line No.", SLAttachedtoLineNo);
                        lvSalesLine."Exit Point" := SLExitPoint;
                        lvSalesLine."Area" := SLArea;
                        lvSalesLine."Transaction Specification" := SLTransactionSpecification;
                        lvSalesLine."Tax Area Code" := SLTaxAreaCode;
                        Evaluate(lvSalesLine."Tax Liable", SLTaxLiable);
                        lvSalesLine."Tax Group Code" := SLTaxGroupCode;
                        lvSalesLine."VAT Bus. Posting Group" := SLVATBusPostingGroup;
                        lvSalesLine."VAT Prod. Posting Group" := SLVATProdPostingGroup;
                        lvSalesLine."Currency Code" := SLCurrCode;
                        Evaluate(lvSalesLine."Outstanding Amount (LCY)", SLOutstandingAmtLCY);
                        Evaluate(lvSalesLine."Shipped Not Invoiced (LCY)", SLShippedNoInvoiceLCY);
                        Evaluate(lvSalesLine.Reserve, SLReserve);
                        lvSalesLine."Blanket Order No." := SLBlanketOrderNo;
                        Evaluate(lvSalesLine."Blanket Order Line No.", SLBlanketOrderLineNo);
                        Evaluate(lvSalesLine."VAT Base Amount", SLVATBaseAmount);
                        Evaluate(lvSalesLine."Unit Cost", SLUnitCost);
                        Evaluate(lvSalesLine."System-Created Entry", SLSystemCreatedEntry);
                        Evaluate(lvSalesLine."Line Amount", SLLineAmount);
                        Evaluate(lvSalesLine."VAT Difference", SLVATDifference);
                        Evaluate(lvSalesLine."Inv. Disc. Amount to Invoice", SLInvDiscAmtToInv);
                        lvSalesLine."VAT Identifier" := SLVATIdent;
                        Evaluate(lvSalesLine."IC Partner Ref. Type", SLICPartnerRefType);
                        lvSalesLine."IC Partner Reference" := SLICPartnerReference;
                        Evaluate(lvSalesLine."Prepayment %", SLPrepmtPercent);
                        Evaluate(lvSalesLine."Prepmt. Line Amount", SLPrepmtLineAmount);
                        Evaluate(lvSalesLine."Prepmt. Amt. Inv.", SLPrepmtAmtInv);
                        Evaluate(lvSalesLine."Prepmt. Amt. Incl. VAT", SLPrepmtAmtInclVAT);
                        Evaluate(lvSalesLine."Prepayment Amount", SLPrepmtAmount);
                        Evaluate(lvSalesLine."Prepmt. VAT Base Amt.", SLPrepmtVATBaseAMT);
                        Evaluate(lvSalesLine."Prepayment VAT %", SLPrepmtVATPercent);
                        Evaluate(lvSalesLine."Prepmt. VAT Calc. Type", SLPrepmtVATCalcType);
                        lvSalesLine."Prepayment VAT Identifier" := SLPrepmtVATIdentifier;
                        lvSalesLine."Prepayment Tax Area Code" := SLPrepaymentTaxAreaCode;
                        Evaluate(lvSalesLine."Prepayment Tax Liable", SLPrepaymentTaxLiable);
                        lvSalesLine."Prepayment Tax Group Code" := SLPrepaymentTaxGroupCode;
                        Evaluate(lvSalesLine."Prepmt Amt to Deduct", SLPrepmtAmtToDeduct);
                        Evaluate(lvSalesLine."Prepmt Amt Deducted", SLPrepmtAmtDeducted);
                        Evaluate(lvSalesLine."Prepayment Line", SLPrepaymentLine);
                        Evaluate(lvSalesLine."Prepmt. Amount Inv. Incl. VAT", SLPrepmtAmtInvInclVAT);
                        Evaluate(lvSalesLine."Prepmt. Amount Inv. (LCY)", SLPrepmtAmtInvLCY);
                        lvSalesLine."IC Partner Code" := SLICPartnerCode;
                        Evaluate(lvSalesLine."Prepayment VAT Difference", SLPrepaymentVATDifference);
                        Evaluate(lvSalesLine."Prepmt VAT Diff. to Deduct", SLPrepmtVATdiffToDeduct);
                        Evaluate(lvSalesLine."Prepmt VAT Diff. Deducted", SLPrepmtVATdiffDeducted);
                        lvSalesLine."Job Task No." := SLJobTaskNo;
                        Evaluate(lvSalesLine."Job Contract Entry No.", SLJobContractEntryNo);
                        lvSalesLine."Variant Code" := SLVariantCode;
                        lvSalesLine."Bin Code" := SLBinCode;
                        Evaluate(lvSalesLine."Qty. per Unit of Measure", SLQtyPerUnitOfMeasure);
                        Evaluate(lvSalesLine.planned, SLPlanned);
                        lvSalesLine."Unit of Measure Code" := SLUoMCode;
                        Evaluate(lvSalesLine."Quantity (Base)", SLQtyBase);
                        Evaluate(lvSalesLine."Outstanding Qty. (Base)", SLOutstandingQtyBase);
                        Evaluate(lvSalesLine."Qty. to Invoice (Base)", SLQtytoInvoiceBase);
                        Evaluate(lvSalesLine."Qty. to Ship (Base)", SLQtytoShipBase);
                        Evaluate(lvSalesLine."Qty. Shipped Not Invoiced", SLQtyShippedNotInvd);
                        Evaluate(lvSalesLine."Qty. Shipped (Base)", SLQtyShippedBase);
                        Evaluate(lvSalesLine."Qty. Invoiced (Base)", SLQtyInvoicedBase);
                        Evaluate(lvSalesLine."FA Posting Date", SLFAPostingDate);
                        lvSalesLine."Depreciation Book Code" := SLDepBookCode;
                        Evaluate(lvSalesLine."Depr. until FA Posting Date", SLDeprUntilFAPostingDate);
                        lvSalesLine."Duplicate in Depreciation Book" := SLDupInDeprBook;
                        Evaluate(lvSalesLine."Use Duplication List", SLUseDuplicationList);
                        lvSalesLine."Responsibility Center" := SLRespCenter;
                        Evaluate(lvSalesLine."Out-of-Stock Substitution", SLOutOfStockSub);
                        Evaluate(lvSalesLine."Substitution Available", SLSubAvail);
                        lvSalesLine."Originally Ordered No." := SLOrigOrderNo;
                        lvSalesLine."Originally Ordered Var. Code" := SLOrigOrderedVarCode;
                        // lvSalesLine.cross := SLCrossReferenceNo;
                        // lvSalesLine.unito := SLUoMCrossRef;
                        // lvSalesLine. := SLCrossRefType;
                        //   lvSalesLine. := SLCrossRefTypeNo;
                        lvSalesLine."Item Category Code" := SLItemCatCode;
                        Evaluate(lvSalesLine.Nonstock, SLNonstock);
                        lvSalesLine."Purchasing Code" := SLPurchCode;
                        //lvSalesLine."Product Group Code" := SLProductGroupCode;
                        Evaluate(lvSalesLine."Special Order", SLSpecialOrder);
                        lvSalesLine."Special Order Purchase No." := SLSpecialOrderPurchNo;
                        Evaluate(lvSalesLine."Special Order Purch. Line No.", SLSpecialOrderPurchLineNo);
                        Evaluate(lvSalesLine."Completely Shipped", SLCompletelyShipped);
                        Evaluate(lvSalesLine."Requested Delivery Date", SLRequestedDeliveryDate);
                        Evaluate(lvSalesLine."Promised Delivery Date", SLPromisedDeliveryDate);
                        Evaluate(lvSalesLine."Shipping Time", SLShippingTime);
                        Evaluate(lvSalesLine."Outbound Whse. Handling Time", SLOutboundWhseHandlingTime);
                        Evaluate(lvSalesLine."Planned Delivery Date", SLPlannedDeliveryDate);
                        Evaluate(lvSalesLine."Planned Shipment Date", SLPlannedShipmentDate);
                        lvSalesLine."Shipping Agent Code" := SLShippingAgentCode;
                        lvSalesLine."Shipping Agent Service Code" := SLShippingAgentServiceCode;
                        Evaluate(lvSalesLine."Allow Item Charge Assignment", SLAllowItemChargeAssignment);
                        Evaluate(lvSalesLine."Return Qty. to Receive", SLReturnQtyToReceive);
                        Evaluate(lvSalesLine."Return Qty. to Receive (Base)", SLReturnQtyToReceiveBase);
                        Evaluate(lvSalesLine."Return Qty. Rcd. Not Invd.", SLReturnQtyRcdNoInvd);
                        Evaluate(lvSalesLine."Ret. Qty. Rcd. Not Invd.(Base)", SLRetQtyRcdNoInvBased);
                        Evaluate(lvSalesLine."Return Rcd. Not Invd.", SLReturnRcdNoInvd);
                        Evaluate(lvSalesLine."Return Rcd. Not Invd. (LCY)", SLReturnRcdNoInvdLCY);
                        Evaluate(lvSalesLine."Return Qty. Received", SLReturnQtyReceived);
                        Evaluate(lvSalesLine."Return Qty. Received (Base)", SLReturnQtyReceivedBase);
                        Evaluate(lvSalesLine."Appl.-from Item Entry", SLAppliFromItemEntry);
                        lvSalesLine."Return Receipt No." := SLReturnReceiptNo;
                        Evaluate(lvSalesLine."Return Receipt Line No.", SLReturnReceiptLineNo);
                        lvSalesLine."Return Reason Code" := SLReturnReasonCode;
                        Evaluate(lvSalesLine."Allow Line Disc.", SLAllowLineDisc);
                        lvSalesLine."Customer Disc. Group" := SLCustomerDiscGroup;
                        lvSalesLine."Package Tracking No." := SLPackageTrackingNo;
                        lvSalesLine.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvSalesLine: record "Sales Line";
                begin
                    lvSalesLine.SetRange("Document No.", gvSalesLineDocumentNo);
                    lvSalesLine.SetRange("Line No.", gvSalesLineLineNo);
                    if lvSalesLine.FindFirst() then
                        currXMLport.Skip;
                end;
            }

        }
    }

    var
        gvSalesHeaderNo: Code[20];
        gvSalesLineDocumentNo: Code[20];
        gvSalesLineLineNo: Integer;

}
