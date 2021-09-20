xmlport 90066 "ASI Item Unit of Measure"
{
    Format = VariableText;
    FieldSeparator = '<TAB>';

    schema
    {
        textelement(Root)
        {
            tableelement("Item Unit of Measure"; "Item Unit of Measure")
            {
                XmlName = 'ItemUoM';
                textelement(iuomItemNo)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        ItemUoMItemNo := iuomItemNo;
                    end;
                }
                textelement(iuomCode)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        ItemUoMCode := iuomCode;
                    end;
                }
                textelement(QtyPer)
                {
                }
                textelement(Length)
                {
                }
                textelement(Width)
                {
                }
                textelement(Height)
                {
                }
                textelement(Cubage)
                {
                }
                textelement(Weight)
                {
                    trigger OnAfterAssignVariable()
                    var
                        lvUoM: Record "Item Unit of Measure";
                    begin
                        if lvUoM.get(ItemUoMItemNo, ItemUoMCode) then begin
                            Evaluate(lvUoM."Qty. per Unit of Measure", QtyPer);
                            Evaluate(lvUoM.Length, Length);
                            Evaluate(lvUoM.Width, Width);
                            Evaluate(lvUoM.Height, Height);
                            Evaluate(lvUoM.Cubage, Cubage);
                            Evaluate(lvUoM.Weight, Weight);
                            lvUoM.Modify();
                        end else begin
                            lvUoM.Init();
                            lvUoM."Item No." := iuomItemNo;
                            lvUoM.Code := iuomCode;
                            Evaluate(lvUoM."Qty. per Unit of Measure", QtyPer);
                            Evaluate(lvUoM.Length, Length);
                            Evaluate(lvUoM.Width, Width);
                            Evaluate(lvUoM.Height, Height);
                            Evaluate(lvUoM.Cubage, Cubage);
                            Evaluate(lvUoM.Weight, Weight);
                            lvUoM.Insert();
                        end;

                    end;
                }
                trigger OnBeforeInsertRecord();
                var
                    lvIUoM: record "Item Unit of Measure";
                begin
                    if lvIUoM.get(ItemUoMItemNo, ItemUoMCode) then
                        currXMLport.Skip;
                end;
            }
        }
    }

    var
        ItemUoMCode: Code[20];
        ItemUoMItemNo: code[20];

}