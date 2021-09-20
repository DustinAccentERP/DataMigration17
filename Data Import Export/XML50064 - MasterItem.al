xmlport 90064 "ASI Master Item"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';

    schema
    {
        textelement(Root)
        {
            tableelement(Item; Item)
            {
                XmlName = 'Item';
                textelement(No)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        Evaluate(ItemNo, No);
                    end;
                }
                textelement(No2)
                {
                }
                textelement(Description)
                {
                }
                textelement(SearchDesc)
                {
                }
                textelement(Description2)
                {
                }
                textelement(BOM)
                {
                }
                textelement(BaseUom)
                {
                }
                textelement(PriceUnitConversion)
                {
                }
                textelement(InvPostingGroup)
                {
                }
                textelement(ShelfNo)
                {
                }
                textelement(ItemDescGroup)
                {
                }
                textelement(AllowInvDisc)
                {
                }
                textelement(StatisticsGroup)
                {
                }
                textelement(CommissionGroup)
                {
                }
                textelement(UnitPrice)
                {
                }
                textelement(PriceProfitCalculation)
                {
                }
                textelement(Profitpercent)
                {
                }
                textelement(CostingMethod)
                {
                }
                textelement(UnitCost)
                {
                }
                textelement(StandCost)
                {
                }
                textelement(LastDirectCost)
                {
                }
                textelement(IndirectCostPer)
                {
                }
                //textelement(CostIsAdjusted)
                //{
                //}
                //textelement(AllowOnlineAdj)
                //{
                //}
                textelement(VendorNo)
                {
                }
                textelement(VendorItemNo)
                {
                }
                textelement(LeadTimeCalc)
                {
                }
                textelement(ReorderPoint)
                {
                }
                textelement(MaximumInventory)
                {
                }
                textelement(ReorderQty)
                {
                }
                textelement(AlternativeItemNo)
                {
                }
                textelement(UnitListPrice)
                {
                }
                textelement(DutyDuePercent)
                {
                }
                textelement(DutyCode)
                {
                }
                textelement(GrossWeight)
                {
                }
                textelement(NetWeight)
                {
                }
                textelement(UnitsPerParcel)
                {
                }
                textelement(UnitVolume)
                {
                }
                textelement(Durability)
                {
                }
                textelement(FreightType)
                {
                }
                textelement(TariffNo)
                {
                }
                textelement(DutyUnitConversion)
                {
                }
                textelement(CountryRegionPurchasedC)
                {
                }
                textelement(BudgetQty)
                {
                }
                textelement(BudgetAmt)
                {
                }
                textelement(BudgetProfit)
                {
                }
                textelement(Blocked)
                {
                }
                textelement(LastDateModified)
                {
                }
                textelement(PriceIncVat)
                {
                }
                textelement(VatBusPostingGroup)
                {
                }
                textelement(GenProdPostingGroup)
                {
                }
                textelement(CountryRegionOriginCode)
                {
                }
                textelement(AutomaticExtText)
                {
                }
                textelement(NoSeries)
                {
                }
                textelement(TaxGroupCode)
                {
                }
                textelement(VATProdPostGroup)
                {
                }
                textelement(Reserve)
                {
                }
                textelement(GlobalDimensionCode1)
                {
                }
                textelement(GlobalDimensionCode2)
                {
                }
                textelement(LowLevelCode)
                {
                }
                textelement(LotSize)
                {
                }
                textelement(SerialNos)
                {
                }
                textelement(LastUnitCostCalcDate)
                {
                }
                textelement(RolledUpMaterialCost)
                {
                }
                textelement(RolledUpCapacityCost)
                {
                }
                textelement(ScrapPercent)
                {
                }
                textelement(InventoryValueZero)
                {
                }
                textelement(DiscreteOrderQuantity)
                {
                }
                textelement(MinOrderQuantity)
                {
                }
                textelement(MaxOrderQuantity)
                {
                }
                textelement(SafetyStockQuantity)
                {
                }
                textelement(OrderMulti)
                {
                }
                textelement(SafetyLeadTime)
                {
                }
                textelement(FlushingMethod)
                {
                }
                textelement(ReplenishmentSystem)
                {
                }
                textelement(RoundingPrecision)
                {
                }
                textelement(SalesUnitOfMeasure)
                {
                }
                textelement(PurchUnitOfMeasure)
                {
                }
                textelement(ReorderingPolicy)
                {
                }
                textelement(IncludeInventory)
                {
                }
                textelement(ManufacturingPolicy)
                {
                }
                textelement(ManufactCode)
                {
                }
                textelement(ItemCatCode)
                {
                }
                textelement(CreatedFromNonstockItem)
                {
                }
                textelement(ProductGroupCode)
                {
                }
                textelement(ServItemGroup)
                {
                }
                textelement(ItemTrackingCode)
                {
                }
                textelement(LotNos)
                {
                }
                textelement(ExpirationCalc)
                {
                }
                textelement(SpecialEquipCode)
                {
                }
                textelement(PutAwayTemplateCode)
                {
                }
                textelement(PutAwayUoMCode)
                {
                }
                textelement(PhysInvCountPeriodCode)
                {
                }
                textelement(LastCountingPeriodUpdate)
                {
                }
                textelement(UseCrossDocking)
                {
                }
                textelement(RoutingNo)
                {
                }
                textelement(ProductionBomNo)
                {
                }
                textelement(SLMaterialCost)
                {
                }
                textelement(SLCapacityCost)
                {
                }
                textelement(SLSubContractCost)
                {
                }
                textelement(SLCapOvhdCost)
                {
                }
                textelement(SLMfgOvhdCost)
                {
                }
                textelement(OverheadRate)
                {
                }
                textelement(RolledSubContractCost)
                {
                }
                textelement(RolledMfgCOvhdCost)
                {
                }
                textelement(RolledCapOvhdCost)
                {
                }
                textelement(OrderTrackingPolicy)
                {
                }
                textelement(Critical)
                {
                }
                textelement(CommonItemNo)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvItem: Record Item;
                    begin
                        if not lvItem.Get(ItemNo) then begin
                            lvItem.Init();
                            lvItem."No." := No;
                            lvItem.Insert();
                        end;

                        lvItem."No. 2" := No2;
                        lvItem.Description := Description;
                        lvItem."Search Description" := SearchDesc;
                        lvItem."Description 2" := Description2;
                        lvItem."Base Unit of Measure" := BaseUom;
                        Evaluate(lvItem."Price Unit Conversion", PriceUnitConversion);
                        lvItem."Inventory Posting Group" := InvPostingGroup;
                        lvItem."Shelf No." := ShelfNo;
                        lvItem."Item Disc. Group" := ItemDescGroup;
                        Evaluate(lvItem."Allow Invoice Disc.", AllowInvDisc);
                        Evaluate(lvItem."Statistics Group", StatisticsGroup);
                        Evaluate(lvItem."Commission Group", CommissionGroup);
                        Evaluate(lvItem."Unit Price", UnitPrice);
                        Evaluate(lvItem."Price/Profit Calculation", PriceProfitCalculation);
                        Evaluate(lvItem."Profit %", Profitpercent);
                        Evaluate(lvItem."Costing Method", CostingMethod);
                        Evaluate(lvItem."Unit Cost", UnitCost);
                        Evaluate(lvItem."Standard Cost", StandCost);
                        Evaluate(lvItem."Last Direct Cost", LastDirectCost);
                        Evaluate(lvItem."Indirect Cost %", IndirectCostPer);
                        //Evaluate(lvItem."Cost is Adjusted", CostIsAdjusted);
                        // Evaluate(lvItem."Allow Online Adjustment", AllowOnlineAdj);
                        lvItem."Vendor No." := VendorNo;
                        lvItem."Vendor Item No." := VendorItemNo;
                        Evaluate(lvItem."Lead Time Calculation", LeadTimeCalc);
                        Evaluate(lvItem."Reorder Point", ReorderPoint);
                        Evaluate(lvItem."Maximum Inventory", MaximumInventory);
                        Evaluate(lvItem."Reorder Quantity", ReorderQty);
                        lvItem."Alternative Item No." := AlternativeItemNo;
                        Evaluate(lvItem."Unit List Price", UnitListPrice);
                        Evaluate(lvItem."Duty Due %", DutyDuePercent);
                        lvItem."Duty Code" := DutyCode;
                        Evaluate(lvItem."Gross Weight", GrossWeight);
                        Evaluate(lvItem."Net Weight", NetWeight);
                        Evaluate(lvItem."Units per Parcel", UnitsPerParcel);
                        Evaluate(lvItem."Unit Volume", UnitVolume);
                        lvItem.Durability := Durability;
                        lvItem."Freight Type" := FreightType;
                        lvItem."Tariff No." := TariffNo;
                        Evaluate(lvItem."Duty Unit Conversion", DutyUnitConversion);
                        lvItem."Country/Region Purchased Code" := CountryRegionPurchasedC;
                        Evaluate(lvItem."Budget Quantity", BudgetQty);
                        Evaluate(lvItem."Budgeted Amount", BudgetAmt);
                        Evaluate(lvItem."Budget Profit", BudgetProfit);
                        Evaluate(lvItem.Blocked, Blocked);
                        Evaluate(lvItem."Last Date Modified", LastDateModified);
                        Evaluate(lvItem."Price Includes VAT", PriceIncVat);
                        lvItem."VAT Prod. Posting Group" := VatBusPostingGroup;
                        lvItem."Gen. Prod. Posting Group" := GenProdPostingGroup;
                        lvItem."Country/Region of Origin Code" := CountryRegionOriginCode;
                        Evaluate(lvItem."Automatic Ext. Texts", AutomaticExtText);
                        lvItem."No. Series" := NoSeries;
                        lvItem."Tax Group Code" := TaxGroupCode;
                        lvItem."VAT Prod. Posting Group" := VATProdPostGroup;
                        Evaluate(lvItem.Reserve, Reserve);
                        lvItem."Global Dimension 1 Code" := GlobalDimensionCode1;
                        lvItem."Global Dimension 2 Code" := GlobalDimensionCode2;
                        Evaluate(lvItem."Low-Level Code", LowLevelCode);
                        Evaluate(lvItem."Lot Size", LotSize);
                        lvItem."Serial Nos." := SerialNos;
                        Evaluate(lvItem."Last Unit Cost Calc. Date", LastUnitCostCalcDate);
                        Evaluate(lvItem."Rolled-up Material Cost", RolledUpMaterialCost);
                        Evaluate(lvItem."Rolled-up Capacity Cost", RolledUpCapacityCost);
                        Evaluate(lvItem."Scrap %", ScrapPercent);
                        Evaluate(lvItem."Inventory Value Zero", InventoryValueZero);
                        Evaluate(lvItem."Discrete Order Quantity", DiscreteOrderQuantity);
                        Evaluate(lvItem."Minimum Order Quantity", MinOrderQuantity);
                        Evaluate(lvItem."Maximum Order Quantity", MaxOrderQuantity);
                        Evaluate(lvItem."Safety Stock Quantity", SafetyStockQuantity);
                        Evaluate(lvItem."Order Multiple", OrderMulti);
                        Evaluate(lvItem."Safety Lead Time", SafetyLeadTime);
                        Evaluate(lvItem."Flushing Method", FlushingMethod);
                        Evaluate(lvItem."Replenishment System", ReplenishmentSystem);
                        Evaluate(lvItem."Rounding Precision", RoundingPrecision);
                        lvItem."Sales Unit of Measure" := SalesUnitOfMeasure;
                        lvItem."Purch. Unit of Measure" := PurchUnitOfMeasure;
                        Evaluate(lvItem."Reordering Policy", ReorderingPolicy);
                        Evaluate(lvItem."Include Inventory", IncludeInventory);
                        Evaluate(lvItem."Manufacturing Policy", ManufacturingPolicy);
                        lvItem."Manufacturer Code" := ManufactCode;
                        lvItem."Item Category Code" := ItemCatCode;
                        Evaluate(lvItem."Created From Nonstock Item", CreatedFromNonstockItem);
                        //lvItem.  prod     := ProductGroupCode;
                        lvItem."Service Item Group" := ServItemGroup;
                        lvItem."Item Tracking Code" := ItemTrackingCode;
                        lvItem."Lot Nos." := LotNos;
                        Evaluate(lvItem."Expiration Calculation", ExpirationCalc);
                        lvItem."Special Equipment Code" := SpecialEquipCode;
                        lvItem."Put-away Template Code" := PutAwayTemplateCode;
                        lvItem."Put-away Unit of Measure Code" := PutAwayUoMCode;
                        lvItem."Phys Invt Counting Period Code" := PhysInvCountPeriodCode;
                        Evaluate(lvItem."Last Counting Period Update", LastCountingPeriodUpdate);
                        Evaluate(lvItem."Use Cross-Docking", UseCrossDocking);
                        lvItem."Routing No." := RoutingNo;
                        lvItem."Production BOM No." := ProductionBomNo;
                        Evaluate(lvItem."Single-Level Material Cost", SLMaterialCost);
                        Evaluate(lvItem."Single-Level Capacity Cost", SLCapacityCost);
                        Evaluate(lvItem."Single-Level Subcontrd. Cost", SLSubContractCost);
                        Evaluate(lvItem."Single-Level Cap. Ovhd Cost", SLCapOvhdCost);
                        Evaluate(lvItem."Rolled-up Mfg. Ovhd Cost", SLMfgOvhdCost);
                        Evaluate(lvItem."Overhead Rate", OverheadRate);
                        Evaluate(lvItem."Rolled-up Subcontracted Cost", RolledSubContractCost);
                        Evaluate(lvItem."Rolled-up Mfg. Ovhd Cost", RolledMfgCOvhdCost);
                        Evaluate(lvItem."Rolled-up Cap. Overhead Cost", RolledCapOvhdCost);
                        Evaluate(lvItem."Order Tracking Policy", OrderTrackingPolicy);
                        Evaluate(lvItem.Critical, Critical);
                        lvItem."Common Item No." := CommonItemNo;

                        lvItem.Modify();
                        Commit();
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvItem: record Item;
                begin
                    if lvItem.get(ItemNo) then
                        currXMLport.Skip;
                end;
            }
        }
    }

    var
        ItemNo: Code[20];
        UoMCode: Code[20];
        ItemUoMCode: Code[20];
        ItemUoMItemNo: code[20];
        BinContentLocationCode: Code[20];
        BinContentBinCode: Code[20];
        BinContentItemNo: Code[20];
        BinContentVariantCode: Code[20];
        BinContentUomCode: Code[20];
}

