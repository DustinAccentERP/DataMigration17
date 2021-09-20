xmlport 90065 "ASI Bin Contents"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';

    schema
    {
        textelement(Root)
        {
            tableelement("Bin Content"; "Bin Content")
            {
                XmlName = 'BinContent';
                textelement(BCLocationCode)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        BinContentLocationCode := BCLocationCode;
                    end;
                }
                textelement(BCZoneCode)
                {
                }
                textelement(BCBinCode)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        BinContentBinCode := BCBinCode;
                    end;
                }
                textelement(BCItemNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        BinContentItemNo := BCItemNo;
                    end;
                }
                textelement(BCBinTypeCode)
                {
                }
                textelement(BCWarehouseClassCode)
                {
                }
                textelement(BCBlockmovement)
                {
                }
                textelement(BCMinQty)
                {
                }
                textelement(BCMaxQty)
                {
                }
                textelement(BCBinRanking)
                {
                }
                textelement(BCQty)
                {
                }
                textelement(BCPickQty)
                {
                }
                textelement(BCNegadjQty)
                {
                }
                textelement(BCPutAwayQty)
                {
                }
                textelement(BCPosAdjQty)
                {
                }
                textelement(BCFixed)
                {
                }
                textelement(BCCrossdockBin)
                {
                }
                textelement(BCDefault)
                {
                }
                textelement(BCQtyBase)
                {
                }
                textelement(BCPickQtyBase)
                {
                }
                textelement(BCNegadjQtyBase)
                {
                }
                textelement(BCPutawayQtyBase)
                {
                }
                textelement(BCPosadjuQtyBase)
                {
                }
                textelement(BCVariantCode)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        BinContentVariantCode := BCVariantCode;
                    end;
                }
                textelement(BCqtyPer)
                {
                }
                textelement(BCUoM)
                {

                    trigger OnAfterAssignVariable()
                    var
                        lvBinContent: Record "Bin Content";
                    begin
                        BinContentUomCode := BCUoM;

                        if lvBinContent.get(BinContentLocationCode, BinContentBinCode, BinContentItemNo, BinContentVariantCode, BinContentUomCode) then begin
                            lvBinContent."Zone Code" := BCZoneCode;
                            lvBinContent."Warehouse Class Code" := BCWarehouseClassCode;
                            Evaluate(lvBinContent."Block Movement", BCBlockmovement);
                            Evaluate(lvBinContent."Min. Qty.", BCMinQty);
                            Evaluate(lvBinContent."Max. Qty.", BCMaxQty);
                            Evaluate(lvBinContent."Bin Ranking", BCBinRanking);
                            Evaluate(lvBinContent.Quantity, BCQty);
                            Evaluate(lvBinContent."Pick Qty.", BCPickQty);
                            Evaluate(lvBinContent."Neg. Adjmt. Qty.", BCNegadjQty);
                            Evaluate(lvBinContent."Put-away Qty.", BCPutAwayQty);
                            Evaluate(lvBinContent."Pos. Adjmt. Qty.", BCPosAdjQty);
                            Evaluate(lvBinContent.Fixed, BCFixed);
                            Evaluate(lvBinContent."Cross-Dock Bin", BCCrossdockBin);
                            Evaluate(lvBinContent.Default, BCDefault);
                            Evaluate(lvBinContent."Quantity (Base)", BCQtyBase);
                            Evaluate(lvBinContent."Pick Quantity (Base)", BCPickQtyBase);
                            Evaluate(lvBinContent."Negative Adjmt. Qty. (Base)", BCNegadjQtyBase);
                            Evaluate(lvBinContent."Put-away Quantity (Base)", BCPutawayQtyBase);
                            Evaluate(lvBinContent."Positive Adjmt. Qty. (Base)", BCPosadjuQtyBase);
                            Evaluate(lvBinContent."Qty. per Unit of Measure", BCqtyPer);
                            lvBinContent.Modify();
                        end else begin
                            clear(lvBinContent);
                            lvBinContent.Init();
                            lvBinContent."Location Code" := BCLocationCode;
                            lvBinContent."Zone Code" := BCZoneCode;
                            lvBinContent."Bin Code" := BCBinCode;
                            lvBinContent."Item No." := BCItemNo;
                            lvBinContent."Bin Type Code" := BCBinTypeCode;
                            lvBinContent."Warehouse Class Code" := BCWarehouseClassCode;
                            Evaluate(lvBinContent."Block Movement", BCBlockmovement);
                            Evaluate(lvBinContent."Min. Qty.", BCMinQty);
                            Evaluate(lvBinContent."Max. Qty.", BCMaxQty);
                            Evaluate(lvBinContent."Bin Ranking", BCBinRanking);
                            Evaluate(lvBinContent.Quantity, BCQty);
                            Evaluate(lvBinContent."Pick Qty.", BCPickQty);
                            Evaluate(lvBinContent."Neg. Adjmt. Qty.", BCNegadjQty);
                            Evaluate(lvBinContent."Put-away Qty.", BCPutAwayQty);
                            Evaluate(lvBinContent."Pos. Adjmt. Qty.", BCPosAdjQty);
                            Evaluate(lvBinContent.Fixed, BCFixed);
                            Evaluate(lvBinContent."Cross-Dock Bin", BCCrossdockBin);
                            Evaluate(lvBinContent.Default, BCDefault);
                            Evaluate(lvBinContent."Quantity (Base)", BCQtyBase);
                            Evaluate(lvBinContent."Pick Quantity (Base)", BCPickQtyBase);
                            Evaluate(lvBinContent."Negative Adjmt. Qty. (Base)", BCNegadjQtyBase);
                            Evaluate(lvBinContent."Put-away Quantity (Base)", BCPutawayQtyBase);
                            Evaluate(lvBinContent."Positive Adjmt. Qty. (Base)", BCPosadjuQtyBase);
                            lvBinContent."Variant Code" := BCVariantCode;
                            Evaluate(lvBinContent."Qty. per Unit of Measure", BCqtyPer);
                            lvBinContent."Unit of Measure Code" := BCUoM;
                            lvBinContent.Insert();
                        end;
                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvBinContent: record "Bin Content";
                begin
                    // Location Code,Bin Code,Item No.,Variant Code,Unit of Measure Code
                    if lvBinContent.get(BinContentLocationCode, BinContentBinCode, BinContentItemNo, BinContentVariantCode, BinContentUomCode) then
                        currXMLport.Skip;
                end;
            }
        }
    }

    var
        BinContentLocationCode: Code[20];
        BinContentBinCode: Code[20];
        BinContentItemNo: Code[20];
        BinContentVariantCode: Code[20];
        BinContentUomCode: Code[20];
}