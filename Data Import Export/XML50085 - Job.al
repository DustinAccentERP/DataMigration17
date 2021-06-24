xmlport 90085 "Master Base Job"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';
    schema
    {
        textelement(Root)
        {

            tableelement(Job; Job)
            {
                XmlName = 'Job';
                textelement(No)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        gvJobNo := No;
                    end;

                }
                textelement(SearchDesc)
                {
                }
                textelement(Desc)
                {
                }
                textelement(Desc2)
                {
                }
                textelement(BillToCustomerNo)
                {
                }
                textelement(CreationDate)
                {
                }
                textelement(StartingDate)
                {
                }
                textelement(EndingDate)
                {
                }
                textelement(Status)
                {
                }
                textelement(PersonResponsible)
                {
                }
                textelement(GlobalDim1)
                {
                }
                textelement(GlobalDim2)
                {
                }
                textelement(JobPostingGroup)
                {
                }
                textelement(Blocked)
                {
                }
                textelement(LastDateModified)
                {
                }
                textelement(CustDiscGroup)
                {
                }
                textelement(CustPriceGroup)
                {
                }
                textelement(Language)
                {
                }
                textelement(BillToName)
                {
                }
                textelement(BillToAddress)
                {
                }
                textelement(BillToAddess2)
                {
                }
                textelement(BillToCity)
                {
                }
                textelement(County)
                {
                }
                textelement(BillToPost)
                {
                }
                textelement(NoSeries)
                {
                }
                textelement(BillToCountryRegion)
                {
                }
                textelement(BillToName2)
                {
                }
                textelement(WIPMethod)
                {
                }
                textelement(CurrencyCode)
                {
                }
                textelement(BillToContactNo)
                {
                }
                textelement(BillToContact)
                {
                }
                textelement(WIPPostingDate)
                {
                }
                textelement(InvCurrCode)
                {
                }
                textelement(ExchCalcCost)
                {
                }
                textelement(ExchCalcPrice)
                {
                }
                textelement(AllowScheduleContractLines)
                {
                }
                textelement(Complete)
                {
                    trigger OnAfterAssignVariable();
                    var
                        lvJob: Record Job;
                    begin
                        lvJob.INIT;

                        // base
                        lvJob."No." := No;
                        lvJob."Search Description" := SearchDesc;
                        lvJob.Description := Desc;
                        lvJob."Description 2" := Desc2;
                        lvJob."Bill-to Customer No." := BillToCustomerNo;
                        EVALUATE(lvJob."Creation Date", CreationDate);
                        EVALUATE(lvJob."Starting Date", StartingDate);
                        EVALUATE(lvJob."Ending Date", EndingDate);
                        if Status = 'Order' then
                            lvJob.Status := lvJob.Status::Open
                        else
                            EVALUATE(lvJob.Status, Status);
                        lvJob."Person Responsible" := PersonResponsible;
                        lvJob."Global Dimension 1 Code" := GlobalDim1;
                        lvJob."Global Dimension 2 Code" := GlobalDim2;
                        lvJob."Job Posting Group" := JobPostingGroup;
                        if Blocked = '' then
                            lvJob.Blocked := lvJob.Blocked::" "
                        else
                            if Blocked = 'Posting' then
                                lvJob.Blocked := lvJob.Blocked::"Posting"
                            else
                                if Blocked = 'All' then
                                    lvJob.Blocked := lvJob.Blocked::All
                                else
                                    lvJob.Blocked := lvJob.Blocked::" ";
                        EVALUATE(lvJob."Last Date Modified", LastDateModified);
                        lvJob."Customer Disc. Group" := CustDiscGroup;
                        lvJob."Customer Price Group" := CustPriceGroup;
                        lvJob."Language Code" := Language;
                        lvJob."Bill-to Name" := BillToName;
                        lvJob."Bill-to Address" := BillToAddress;
                        lvJob."Bill-to Address 2" := BillToAddess2;
                        lvJob."Bill-to City" := BillToCity;
                        lvJob."Bill-to County" := County;
                        lvJob."Bill-to Post Code" := BillToPost;
                        lvJob."No. Series" := NoSeries;
                        lvJob."Bill-to Country/Region Code" := BillToCountryRegion;
                        lvJob."Bill-to Name 2" := BillToName2;


                        if WIPMethod = 'Cost Value' then
                            lvJob."WIP Method" := 'COST VALUE'
                        else
                            if WIPMethod = 'Sales Value' then
                                lvJob."WIP Method" := 'SALES VALUE'
                            else
                                if WIPMethod = 'Cost of Sales' then
                                    lvJob."WIP Method" := 'COST OF SALES'
                                else
                                    if WIPMethod = 'Percentage of Completion' then
                                        lvJob."WIP Method" := 'POC'
                                    else
                                        if WIPMethod = 'Completed Contract' then
                                            lvJob."WIP Method" := 'COMPLETED CONTRACT'
                                        else
                                            lvJob."WIP Method" := '';

                        lvJob."Currency Code" := CurrencyCode;
                        lvJob."Bill-to Contact No." := BillToContactNo;
                        lvJob."Bill-to Contact" := BillToContact;
                        Evaluate(lvJob."WIP Posting Date", WIPPostingDate);
                        lvJob."Invoice Currency Code" := InvCurrCode;
                        Evaluate(lvJob."Exch. Calculation (Cost)", ExchCalcCost);
                        Evaluate(lvJob."Exch. Calculation (Price)", ExchCalcPrice);
                        Evaluate(lvJob."Allow Schedule/Contract Lines", AllowScheduleContractLines);
                        Evaluate(lvJob.Complete, Complete);
                        lvJob.Insert();
                        // sgi
                        /*
                        Evaluate(lvJob."Last Activity Date", LastActivityDate);
                        Evaluate(lvJob."Lost job", LostJob);
                        Evaluate(lvJob."Cancelled job", CancelledJob);
                        //if TempBlock = 'Posting' then
                        //    lvJob."Temp Blocked" := lvJob."Temp Blocked"::
                        //Evaluate(lvJob."Temp Blocked", TempBlock);
                        Evaluate(lvJob."PRF Initiated", PRFInit);
                        Evaluate(lvJob."PRF Date", PRFDate);
                        Evaluate(lvJob."Est. Requested", EstRequested);
                        Evaluate(lvJob."Est. Request Date", EstRequestDate);
                        Evaluate(lvJob."Est. Returned", EstReturn);
                        Evaluate(lvJob."Est. Returned Date", EstReturnDate);
                        Evaluate(lvJob."Quote Sent", QuoteSent);
                        Evaluate(lvJob."Quote Sent Date", QuoteSentDate);
                        Evaluate(lvJob."Quote Approved", QuoteApproved);
                        Evaluate(lvJob."Quote Approved Date", QuoteApprovedDate);
                        Evaluate(lvJob."BOM Ready", BomReady);
                        Evaluate(lvJob."BOM Ready Date", BomReadyDate);
                        Evaluate(lvJob."Rush Job", RushJob);
                        Evaluate(lvJob."Project Released", ProjectRelease);
                        Evaluate(lvJob."Project Released Date", ProjectReleaseDate);
                        Evaluate(lvJob."Quoted To Client", QuoteToClient);
                        Evaluate(lvJob."Emergency Job", EmergencyJob);
                        Evaluate(lvJob."Estimate Only", EstimateOnly);
                        Evaluate(lvJob."Send to Sub Jobs", SendToSubjob);
                        lvJob."Pers. Respon. Name" := PerRespName;
                        Evaluate(lvJob.Stage, Stage);
                        Evaluate(lvJob."Sample Approved", SampleApproved);
                        Evaluate(lvJob."Sample Approved Date", SampleApprovedDate);
                        Evaluate(lvJob."Shipment/Inventory Item?", ShipInvItem);
                        Evaluate(lvJob."Quote Lost", QuoteLost);
                        Evaluate(lvJob."Last Ship Date", LastShipDate);
                        lvJob."Shipment Method" := ShipMethod;
                        Evaluate(lvJob."Rush Fee", RushFee);
                        Evaluate(lvJob."Emergency Fee", EmergencyFee);
                        Evaluate(lvJob."Shipment?", Shipment);
                        Evaluate(lvJob."Inventory Item?", InventoryItem);
                        Evaluate(lvJob."Price Per Unit", PricePerUnit);
                        Evaluate(lvJob."Piece Rate Cost", PieceRateCost);
                        Evaluate(lvJob."Total Piece Rate Invoice", TotalPieceRateInv);
                        lvJob."PO#" := PoNo;
                        Evaluate(lvJob."Date Lost", DateLost);
                        Evaluate(lvJob."Late Job", LateJob);
                        Evaluate(lvJob."Ship Early", ShipEarly);
                        if TimeDue = '8:00 AM' then
                            lvJob."Time Due" := lvJob."Time Due"::"8:00 AM"
                        else
                            if TimeDue = '8:30 AM' then
                                lvJob."Time Due" := lvJob."Time Due"::"8:30 AM"
                            else
                                if TimeDue = '9:00 AM' then
                                    lvJob."Time Due" := lvJob."Time Due"::"9:00 AM"
                                else
                                    if TimeDue = '9:30 AM' then
                                        lvJob."Time Due" := lvJob."Time Due"::"9:30 AM"
                                    else
                                        if TimeDue = '10:00 AM' then
                                            lvJob."Time Due" := lvJob."Time Due"::"10:00 AM"
                                        else
                                            if TimeDue = '10:30 AM' then
                                                lvJob."Time Due" := lvJob."Time Due"::"10:30 AM"
                                            else
                                                if TimeDue = '11:00 AM' then
                                                    lvJob."Time Due" := lvJob."Time Due"::"11:00 AM"
                                                else
                                                    if TimeDue = '11:30 AM' then
                                                        lvJob."Time Due" := lvJob."Time Due"::"11:30 AM"
                                                    else
                                                        if TimeDue = '12:00 PM' then
                                                            lvJob."Time Due" := lvJob."Time Due"::"12:00 PM"
                                                        else
                                                            if TimeDue = '12:30 PM' then
                                                                lvJob."Time Due" := lvJob."Time Due"::"12:30 PM"
                                                            else
                                                                if TimeDue = '1:00 PM' then
                                                                    lvJob."Time Due" := lvJob."Time Due"::"1:00 PM"
                                                                else
                                                                    if TimeDue = '1:30 PM' then
                                                                        lvJob."Time Due" := lvJob."Time Due"::"1:30 PM"
                                                                    else
                                                                        if TimeDue = '2:00 PM' then
                                                                            lvJob."Time Due" := lvJob."Time Due"::"2:00 PM"
                                                                        else
                                                                            if TimeDue = '2:30 PM' then
                                                                                lvJob."Time Due" := lvJob."Time Due"::"2:30 PM"
                                                                            else
                                                                                if TimeDue = '3:00 PM' then
                                                                                    lvJob."Time Due" := lvJob."Time Due"::"3:00 PM"
                                                                                else
                                                                                    if TimeDue = '3:30PM' then
                                                                                        lvJob."Time Due" := lvJob."Time Due"::"3:30PM"
                                                                                    else
                                                                                        if TimeDue = 'EOD - 4PM' then
                                                                                            lvJob."Time Due" := lvJob."Time Due"::"EOD - 4PM"
                                                                                        else
                                                                                            if TimeDue = '4:30 PM' then
                                                                                                lvJob."Time Due" := lvJob."Time Due"::"4:30 PM"
                                                                                            else
                                                                                                if TimeDue = '5:00 PM' then
                                                                                                    lvJob."Time Due" := lvJob."Time Due"::"5:00 PM"
                                                                                                else
                                                                                                    if TimeDue = '5:30PM' then
                                                                                                        lvJob."Time Due" := lvJob."Time Due"::"5:30PM"
                                                                                                    else
                                                                                                        if TimeDue = '6:00 PM' then
                                                                                                            lvJob."Time Due" := lvJob."Time Due"::"6:00 PM"
                                                                                                        else
                                                                                                            if TimeDue = '7:00pm' then
                                                                                                                lvJob."Time Due" := lvJob."Time Due"::"7:00pm"
                                                                                                            else
                                                                                                                if TimeDue = '7:30pm' then
                                                                                                                    lvJob."Time Due" := lvJob."Time Due"::"7:30pm"
                                                                                                                else
                                                                                                                    if TimeDue = '8:00 PM' then
                                                                                                                        lvJob."Time Due" := lvJob."Time Due"::"8:00 PM"
                                                                                                                    else
                                                                                                                        if TimeDue = '10:00 PM' then
                                                                                                                            lvJob."Time Due" := lvJob."Time Due"::"10:00 PM"
                                                                                                                        else
                                                                                                                            if TimeDue = 'EON-11PM' then
                                                                                                                                lvJob."Time Due" := lvJob."Time Due"::"EON-11PM"
                                                                                                                            else
                                                                                                                                lvJob."Time Due" := lvJob."Time Due"::" ";


                        Evaluate(lvJob."Job Audit Complete", JobAuditComplete);
                        Evaluate(lvJob."Job Audit Complete Date", JobAuditCompleteDate);
                        Evaluate(lvJob."Amgen Release", AmgenRelease);
                        Evaluate(lvJob."May Exceed Qty", MayExceedQty);
                        Evaluate(lvJob."Lock Job", LockJob);
                        Evaluate(lvJob."Material Reserve Done", MaterialReserveDone);
                        Evaluate(lvJob."Material Reserve Date", MaterialReserveDate);
                        Evaluate(lvJob."Requisition Order Placed", ReqOrderPlaced);
                        Evaluate(lvJob."Requisition Order Placed Date", ReqOrderDate);
                        lvJob."User Id" := UserId;
                        lvJob."DMS Account Card (If Applies)" := DMAcc;
                        Evaluate(lvJob."PRF Time", PRFTime);
                        Evaluate(lvJob."Est Requested Time", EstRequestedTime);
                        Evaluate(lvJob."Est Returned Time", EstReturnTime);
                        Evaluate(lvJob."Quote Sent Time", QuoteSentTime);
                        Evaluate(lvJob."Quote Approved Time", QuoteApprovedTime);
                        Evaluate(lvJob."BOM Ready Time", BomReadyTime);
                        Evaluate(lvJob."Project Released Time", ProjectReleasedTime);
                        Evaluate(lvJob."Sample Approved Time", SampleApprovedTime);
                        Evaluate(lvJob."Req Order Placed Time", ReqOrderTime);
                        Evaluate(lvJob."Job Audit Complete Time", JobAuditTime);
                        Evaluate(lvJob."Quote Amount", QuoteAmount);
                        lvJob."Business Unit" := BusinessUnits;
                        lvJob.Brand := Brand;
                        Evaluate(lvJob."Completion Date", CompletionDate);
                        if JobType = 'Item' then
                            lvJob."Job Type" := lvJob."Job Type"::Item
                        else
                            if JobType = 'Resource' then
                                lvJob."Job Type" := lvJob."Job Type"::Resource
                            else
                                lvJob."Job Type" := lvJob."Job Type"::" ";

                        Evaluate(lvJob."Budget Start Dates By", BudgetStart);
                        Evaluate(lvJob."Work Days to Produce", WorkDaysToProduce);
                        Evaluate(lvJob."Calendar Days to Produce", CalendarDaysToProduce);
                        Evaluate(lvJob."Schedule at Step Level", ScheduleAtStepLevel);
                        Evaluate(lvJob."Calendar Days Edited", CalendarDaysEdit);
                        Evaluate(lvJob."Calculated Finish Date", CalculatedFinishDate);
                        Evaluate(lvJob."Est. Production Qty per Day", EstProductionQtyPerDay);
                        Evaluate(lvJob."JM Job Qty Remaining", JmJobQtyRem);
                        lvJob."JM Created By" := CreatedBy;
                        Evaluate(lvJob."JM Last Modified By", LastModifiedBy);
                        Evaluate(lvJob."On-time Status", OnTimeStatus);
                        Evaluate(lvJob."Days early/late", DaysEarlyLate);
                        lvJob."CCS Master Sort No." := MasterSortNo;
                        lvJob."CCS Master Job No." := MasterJobNo;
                        Evaluate(lvJob."CCS Is Master Job", IsMasterJob);
                        lvJob."CCS Sell-to Customer No." := SellToCustomerNo;
                        lvJob."CCS Quote No." := QuoteNo;
                        lvJob."CCS Sales Order No." := SalesOrderNo;
                        lvJob."CCS Sales Invoice No." := SalesInvNo;
                        lvJob."CCS Job Title" := JobTitle;
                        Evaluate(lvJob."CCS Quote Line No.", QuoteLineNo);
                        Evaluate(lvJob."CCS SO Line No.", SOLineNo);
                        Evaluate(lvJob."CCS Invoice Line No.", InvLinNo);
                        lvJob."CCS Sell-to Customer Name" := SellToCustName;
                        lvJob."CCS Job Project No." := JobProjectNo;
                        Evaluate(lvJob."CCS Job Qty Ordered", JobQtyOrdered);
                        lvJob."CCS Location Code" := LocationCode;
                        lvJob."CCS Variant Code" := VariantCode;
                        lvJob."CCS Customer PO No." := CustPoNo;
                        lvJob.Insert(false);
                        */
                    end;
                }

                trigger OnBeforeInsertRecord();
                var
                    gvJob: record Job;
                begin
                    if gvJob.get(gvJobNo) then
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
        ResourceGroupNo: Code[20];
        gvJobNo: code[20];
}

