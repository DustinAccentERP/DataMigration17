xmlport 90090 "Master Cust/Vend Records"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {
            tableelement(Customer; Customer)
            {
                XmlName = 'Customer';
                textelement(cCustNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvCustNo := cCustNo;
                    end;
                }
                textelement(cName)
                {
                }
                textelement(cSearch)
                {
                }
                textelement(cName2)
                {
                }
                textelement(cAddress)
                {
                }
                textelement(cAddress2)
                {
                }
                textelement(cCity)
                {
                }
                textelement(cContact)
                {
                }
                textelement(cPhoneNo)
                {
                }
                textelement(cTelexNo)
                {
                }
                textelement(cOurAccountNo)
                {
                }
                textelement(cTerritoryCode)
                {
                }
                textelement(cGlobalDimension1)
                {
                }
                textelement(cGlobalDimension2)
                {
                }
                textelement(cChainName)
                {
                }
                textelement(cBudgetedAmount)
                {
                }
                textelement(cCreditLimit)
                {
                }
                textelement(cCustomerPostingGroup)
                {
                }
                textelement(cCurrencyCode)
                {
                }
                textelement(cCustomerPriceGroup)
                {
                }
                textelement(cLanguageCode)
                {
                }
                textelement(cStatisticsGroup)
                {
                }
                textelement(cPaymentTermsCode)
                {
                }
                textelement(cFinChargeTermsCode)
                {
                }
                textelement(cSalespersonCode)
                {
                }
                textelement(cShipmentMethodCode)
                {
                }
                textelement(cShippingAgentCode)
                {
                }
                textelement(cPlaceofExport)
                {
                }
                textelement(cInvDiscCode)
                {
                }
                textelement(cCustDiscGroup)
                {
                }
                textelement(cCountryRegionCode)
                {
                }
                textelement(cCollectionMethod)
                {
                }
                textelement(cAmount)
                {
                }
                textelement(cBlocked)
                {
                }
                textelement(cInvoiceCopies)
                {
                }
                textelement(cPrintStatements)
                {
                }
                textelement(cBillToCustomerNo)
                {
                }
                textelement(cPriority)
                {
                }
                textelement(cPaymentMethodCode)
                {
                }
                textelement(cLastDateModified)
                {
                }
                textelement(cApplicationMethod)
                {
                }
                textelement(cPricesIncludingVat)
                {
                }
                textelement(cLocationCode)
                {
                }
                textelement(cFaxNo)
                {
                }
                textelement(cTelexAnswerBack)
                {
                }
                textelement(cVatRegistrationNo)
                {
                }
                textelement(cCombineShipments)
                {
                }
                textelement(cGenBusPostingGroup)
                {
                }
                textelement(cPostCode)
                {
                }
                textelement(cCounty)
                {
                }
                textelement(cEmail)
                {
                }
                textelement(cHomePage)
                {
                }
                textelement(cReminderTermsCode)
                {
                }
                textelement(cNoSeries)
                {
                }
                textelement(cTaxAreaCode)
                {
                }
                textelement(cTaxLiable)
                {
                }
                textelement(cVatBusPostingGroup)
                {
                }
                textelement(cReserve)
                {
                }
                textelement(cBlockPaymentTolerance)
                {
                }
                textelement(cICPartnerCode)
                {
                }
                textelement(cPrePaymentPercent)
                {
                }
                textelement(cPrimaryContactNo)
                {
                }
                textelement(cResponsibilityCenter)
                {
                }
                textelement(cShippingAdvice)
                {
                }
                textelement(cShippingTime)
                {
                }
                textelement(cShippingAgentServiceCode)
                {
                }
                textelement(cServiceZoneCode)
                {
                }
                textelement(cAllowLineDisc)
                {
                }
                textelement(cBaseCalendarCode)
                {
                }
                textelement(cCopySelltoAddresstoQteFrom)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvCustomer: Record Customer;
                    begin
                        lvCustomer.Init();
                        // Base 
                        lvCustomer."No." := cCustNo;
                        lvCustomer.Name := cName;
                        lvCustomer."Search Name" := cSearch;
                        lvCustomer."Name 2" := cName2;
                        lvCustomer.Address := cAddress;
                        lvCustomer."Address 2" := cAddress2;
                        lvCustomer.City := cCity;
                        lvCustomer.Contact := cContact;
                        lvCustomer."Phone No." := cPhoneNo;
                        lvCustomer."Telex No." := cTelexNo;
                        lvCustomer."Our Account No." := cOurAccountNo;
                        lvCustomer."Territory Code" := cTerritoryCode;
                        lvCustomer."Global Dimension 1 Code" := cGlobalDimension1;
                        lvCustomer."Global Dimension 2 Code" := cGlobalDimension2;
                        lvCustomer."Chain Name" := cChainName;
                        Evaluate(lvCustomer."Budgeted Amount", cBudgetedAmount);
                        Evaluate(lvCustomer."Credit Limit (LCY)", cCreditLimit);
                        lvCustomer."Customer Posting Group" := cCustomerPostingGroup;
                        lvCustomer."Currency Code" := cCurrencyCode;
                        lvCustomer."Customer Price Group" := cCustomerPriceGroup;
                        lvCustomer."Language Code" := cLanguageCode;
                        Evaluate(lvCustomer."Statistics Group", cStatisticsGroup);
                        lvCustomer."Payment Terms Code" := cPaymentTermsCode;
                        lvCustomer."Fin. Charge Terms Code" := cFinChargeTermsCode;
                        lvCustomer."Salesperson Code" := cSalespersonCode;
                        lvCustomer."Shipment Method Code" := cShipmentMethodCode;
                        lvCustomer."Shipping Agent Code" := cShippingAgentCode;
                        lvCustomer."Place of Export" := cPlaceofExport;
                        lvCustomer."Invoice Disc. Code" := cInvDiscCode;
                        lvCustomer."Customer Disc. Group" := cCustDiscGroup;
                        lvCustomer."Country/Region Code" := cCountryRegionCode;
                        lvCustomer."Collection Method" := cCollectionMethod;
                        Evaluate(lvCustomer.Amount, cAmount);
                        Evaluate(lvCustomer.Blocked, cBlocked);
                        Evaluate(lvCustomer."Invoice Copies", cInvoiceCopies);
                        Evaluate(lvCustomer."Print Statements", cPrintStatements);
                        lvCustomer."Bill-to Customer No." := cBillToCustomerNo;
                        Evaluate(lvCustomer.Priority, cPriority);
                        lvCustomer."Payment Method Code" := cPaymentMethodCode;
                        Evaluate(lvCustomer."Last Date Modified", cLastDateModified);
                        Evaluate(lvCustomer."Application Method", cApplicationMethod);
                        Evaluate(lvCustomer."Prices Including VAT", cPricesIncludingVat);
                        lvCustomer."Location Code" := cLocationCode;
                        lvCustomer."Fax No." := cFaxNo;
                        lvCustomer."Telex Answer Back" := cTelexAnswerBack;
                        lvCustomer."VAT Registration No." := cVatRegistrationNo;
                        Evaluate(lvCustomer."Combine Shipments", cCombineShipments);
                        lvCustomer."Gen. Bus. Posting Group" := cGenBusPostingGroup;
                        lvCustomer."Post Code" := cPostCode;
                        lvCustomer.County := cCounty;
                        lvCustomer."E-Mail" := cEmail;
                        lvCustomer."Home Page" := cHomePage;
                        lvCustomer."Reminder Terms Code" := cReminderTermsCode;
                        lvCustomer."No. Series" := cNoSeries;
                        lvCustomer."Tax Area Code" := cTaxAreaCode;
                        Evaluate(lvCustomer."Tax Liable", cTaxLiable);
                        lvCustomer."VAT Bus. Posting Group" := cVatBusPostingGroup;
                        Evaluate(lvCustomer.Reserve, cReserve);
                        Evaluate(lvCustomer."Block Payment Tolerance", cBlockPaymentTolerance);
                        lvCustomer."IC Partner Code" := cICPartnerCode;
                        Evaluate(lvCustomer."Prepayment %", cPrePaymentPercent);
                        lvCustomer."Primary Contact No." := cPrimaryContactNo;
                        lvCustomer."Responsibility Center" := cResponsibilityCenter;
                        Evaluate(lvCustomer."Shipping Advice", cShippingAdvice);
                        Evaluate(lvCustomer."Shipping Time", cShippingTime);
                        lvCustomer."Shipping Agent Service Code" := cShippingAgentServiceCode;
                        lvCustomer."Service Zone Code" := cServiceZoneCode;
                        Evaluate(lvCustomer."Allow Line Disc.", cAllowLineDisc);
                        lvCustomer."Base Calendar Code" := cBaseCalendarCode;
                        Evaluate(lvCustomer."Copy Sell-to Addr. to Qte From", cCopySelltoAddresstoQteFrom);
                        // end Base
                        // SGI

                        // end SGI
                        lvCustomer.Insert();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvCust: record Customer;
                begin
                    if lvCust.get(gvCustNo) then
                        currXMLport.Skip;
                end;
            }
            tableelement(lvVendor; Vendor)
            {
                XmlName = 'Vendor';
                textelement(vVendNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvVendNo := vVendNo;
                    end;
                }
                textelement(vName)
                {
                }
                textelement(vSearch)
                {
                }
                textelement(vName2)
                {
                }
                textelement(vAddress)
                {
                }
                textelement(vAddress2)
                {
                }
                textelement(vCity)
                {
                }
                textelement(vContact)
                {
                }
                textelement(vPhoneNo)
                {
                }
                textelement(vTelexNo)
                {
                }
                textelement(vOurAccountNo)
                {
                }
                textelement(vTerritoryCode)
                {
                }
                textelement(vGlobalDimension1)
                {
                }
                textelement(vGlobalDimension2)
                {
                }
                textelement(vBudgetedAmount)
                {
                }
                textelement(vVendorPostingGroup)
                {
                }
                textelement(vCurrencyCode)
                {
                }
                textelement(vLanguageCode)
                {
                }
                textelement(vStatisticsGroup)
                {
                }
                textelement(vPaymentTermsCode)
                {
                }
                textelement(vFinChargeTermsCode)
                {
                }
                textelement(vPurchaserCode)
                {
                }
                textelement(vShipmentMethodCode)
                {
                }
                textelement(vShippingAgentCode)
                {
                }
                textelement(vInvDiscCode)
                {
                }
                textelement(vCountryRegionCode)
                {
                }
                textelement(vBlocked)
                {
                }
                textelement(vPayToVendorNo)
                {
                }
                textelement(vPriority)
                {
                }
                textelement(vPaymentMethodCode)
                {
                }
                textelement(vLastDateModified)
                {
                }
                textelement(vApplicationMethod)
                {
                }
                textelement(vPricesIncludingVat)
                {
                }
                textelement(vFaxNo)
                {
                }
                textelement(vTelexAnswerBack)
                {
                }
                textelement(vVatRegistrationNo)
                {
                }
                textelement(vGenBusPostingGroup)
                {
                }
                textelement(vPostCode)
                {
                }
                textelement(vCounty)
                {
                }
                textelement(vEmail)
                {
                }
                textelement(vHomePage)
                {
                }
                textelement(vNoSeries)
                {
                }
                textelement(vTaxAreaCode)
                {
                }
                textelement(vTaxLiable)
                {
                }
                textelement(vVatBusPostingGroup)
                {
                }
                textelement(vBlockPaymentTolerance)
                {
                }
                textelement(vICPartnerCode)
                {
                }
                textelement(vPrePaymentPercent)
                {
                }
                textelement(vPrimaryContactNo)
                {
                }
                textelement(vResponsibilityCenter)
                {
                }
                textelement(vLocationCode)
                {
                }
                textelement(vLeadTimeCalculation)
                {
                }
                textelement(vBaseCalendarCode)
                {
                }
                textelement(vUPSZone)
                {
                }
                textelement(vFederalIDNo)
                {
                }
                textelement(vBankCommunication)
                {
                }
                textelement(vCheckDateFormat)
                {
                }
                textelement(vCheckDateSeperator)
                {
                }
                textelement(v1099Code)
                {
                }
                textelement(vTaxIdType)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvVendor: Record Vendor;
                    begin
                        lvVendor.Init();
                        // base
                        lvVendor."No." := vVendNo;
                        lvVendor.Name := vName;
                        lvVendor."Search Name" := vSearch;
                        lvVendor."Name 2" := vName2;
                        lvVendor.Address := vAddress;
                        lvVendor."Address 2" := vAddress2;
                        lvVendor.City := vCity;
                        lvVendor.Contact := vContact;
                        lvVendor."Phone No." := vPhoneNo;
                        lvVendor."Telex No." := vTelexNo;
                        lvVendor."Our Account No." := vOurAccountNo;
                        lvVendor."Territory Code" := vTerritoryCode;
                        lvVendor."Global Dimension 1 Code" := vGlobalDimension1;
                        lvVendor."Global Dimension 2 Code" := vGlobalDimension2;
                        Evaluate(lvVendor."Budgeted Amount", vBudgetedAmount);
                        lvVendor."Vendor Posting Group" := vVendorPostingGroup;
                        lvVendor."Currency Code" := vCurrencyCode;
                        lvVendor."Language Code" := vLanguageCode;
                        Evaluate(lvVendor."Statistics Group", vStatisticsGroup);
                        lvVendor."Payment Terms Code" := vPaymentTermsCode;
                        lvVendor."Fin. Charge Terms Code" := vFinChargeTermsCode;
                        lvVendor."Purchaser Code" := vPurchaserCode;
                        lvVendor."Shipment Method Code" := vShipmentMethodCode;
                        lvVendor."Shipping Agent Code" := vShippingAgentCode;
                        lvVendor."Invoice Disc. Code" := vInvDiscCode;
                        lvVendor."Country/Region Code" := vCountryRegionCode;
                        Evaluate(lvVendor.Blocked, vBlocked);
                        lvVendor."Pay-to Vendor No." := vPayToVendorNo;
                        Evaluate(lvVendor.Priority, vPriority);
                        lvVendor."Payment Method Code" := vPaymentMethodCode;
                        Evaluate(lvVendor."Last Date Modified", vLastDateModified);
                        Evaluate(lvVendor."Application Method", vApplicationMethod);
                        Evaluate(lvVendor."Prices Including VAT", vPricesIncludingVat);
                        lvVendor."Fax No." := vFaxNo;
                        lvVendor."Telex Answer Back" := vTelexAnswerBack;
                        lvVendor."VAT Registration No." := vVatRegistrationNo;
                        lvVendor."Gen. Bus. Posting Group" := vGenBusPostingGroup;
                        lvVendor."Post Code" := vPostCode;
                        lvVendor.County := vCounty;
                        lvVendor."E-Mail" := vEmail;
                        lvVendor."Home Page" := vHomePage;
                        lvVendor."No. Series" := vNoSeries;
                        lvVendor."Tax Area Code" := vTaxAreaCode;
                        Evaluate(lvVendor."Tax Liable", vTaxLiable);
                        lvVendor."VAT Bus. Posting Group" := vVatBusPostingGroup;
                        Evaluate(lvVendor."Block Payment Tolerance", vBlockPaymentTolerance);
                        lvVendor."IC Partner Code" := vICPartnerCode;
                        Evaluate(lvVendor."Prepayment %", vPrePaymentPercent);
                        lvVendor."Primary Contact No." := vPrimaryContactNo;
                        lvVendor."Responsibility Center" := vResponsibilityCenter;
                        lvVendor."Location Code" := vLocationCode;
                        Evaluate(lvVendor."Lead Time Calculation", vLeadTimeCalculation);
                        lvVendor."Base Calendar Code" := vBaseCalendarCode;
                        lvVendor."UPS Zone" := vUPSZone;
                        lvVendor."Federal ID No." := vFederalIDNo;
                        Evaluate(lvVendor."Bank Communication", vBankCommunication);
                        Evaluate(lvVendor."Check Date Format", vCheckDateFormat);
                        Evaluate(lvVendor."Check Date Separator", vCheckDateSeperator);
                        lvVendor."IRS 1099 Code" := v1099Code;
                        Evaluate(lvVendor."Tax Identification Type", vTaxIdType);
                        // SGI
                        lvVendor.Insert();
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    lvVend: record Vendor;
                begin
                    if lvVend.get(gvVendNo) then
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
        gvCustNo: code[20];
        gvVendNo: code[20];
        gvS2ACustNo: Code[20];
        gvS2ACode: Code[20];
}

