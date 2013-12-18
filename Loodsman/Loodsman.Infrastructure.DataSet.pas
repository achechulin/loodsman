// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit Loodsman.Infrastructure.DataSet;

interface

uses
    SysUtils, Loodsman_TLB;

///  <summary>Создает набор данных и возвращает интерфейс IDataSet для управления им.</summary>
function CreateDataSet: IDataSet; overload;

///  <summary>Создает набор данных и возвращает интерфейс IDataSet для управления им.</summary>
///  <param name="AData">Пакет данных, из которого будет создан набор данных.</param>
function CreateDataSet(const AData: OleVariant): IDataSet; overload;

///  <summary>Создает набор данных и возвращает интерфейс IDataSet для управления им.</summary>
///  <param name="AFieldDefs">Описание полей набора данных.</param>
///  <remarks>Метод создает набор данных с указанными полями. Поля задаются
///  тремя идущими подряд значениями Имя, Тип
///  (<see cref="Loodsman.Infrastructure.Types|TFieldType">TFieldType</see>),
///  Длина (только для типов, которым она нужна, для остальных <c>0</c>).</remarks>
function CreateDataSet(const AFieldDefs: array of const): IDataSet; overload;

implementation

uses
    Classes, ComObj, Variants, DB, DBCommon, DBClient, DSIntf,
    Loodsman.Infrastructure.Resources;

type
    TFieldIndex = class(TStringList)
    protected
        function CompareStrings(const S1, S2: String): Integer; override;
    public
        constructor Create;
    end;

    TCompatDataSet = class(TCustomClientDataSet)
    protected
        procedure AddFieldDesc(FieldDescs: TFieldDescList; var DescNo, FieldID:
            Integer; FieldDefs: TFieldDefs);
        procedure InternalInitFieldDefs; override;
    end;

    TDataSetObject = class(TAutoIntfObject, IDataSet)
    private
        FDataSet: TCompatDataSet;
        FIndex: TFieldIndex;
        function FindField(const AName: String): TField;
    public
        constructor Create; overload;
        constructor Create(const AFieldDefs: array of const); overload;
        destructor Destroy; override;
        procedure Append; safecall;
        procedure Cancel; safecall;
        procedure Clear; safecall;
        procedure Delete; safecall;
        procedure Edit; safecall;
        procedure First; safecall;
        function Get_Bof: WordBool; safecall;
        function Get_CurrentRecord: Integer; safecall;
        function Get_DATA: OLEVariant; safecall;
        function Get_Eof: WordBool; safecall;
        function Get_FieldCount: Integer; safecall;
        function Get_FieldName(Index: Integer): WideString; safecall;
        function Get_FieldValue(const Name: WideString): OLEVariant; safecall;
        function Get_Filter: WideString; safecall;
        function Get_Filtered: WordBool; safecall;
        function Get_IndexFieldNames: WideString; safecall;
        function Get_RecordCount: Integer; safecall;
        procedure Insert; safecall;
        function IsEmpty: WordBool; safecall;
        procedure Last; safecall;
        function Locate(const KeyFields: WideString; KeyValues: OleVariant;
            CaseSensitive: WordBool; PartialKey: WordBool): WordBool; safecall;
        function MoveBy(Distance: Integer): Integer; safecall;
        procedure Next; safecall;
        procedure Post; safecall;
        procedure Prior; safecall;
        procedure Set_CurrentRecord(Value: Integer); safecall;
        procedure Set_DATA(Value: OleVariant); safecall;
        procedure Set_FieldValue(const Name: WideString; Value: OleVariant);
            safecall;
        procedure Set_Filter(const Value: WideString); safecall;
        procedure Set_Filtered(Value: WordBool); safecall;
        procedure Set_IndexFieldNames(const Value: WideString); safecall;
    end;


function CreateDataSet: IDataSet;
begin
    Result := TDataSetObject.Create() as IDataSet;
end;

function CreateDataSet(const AData: OleVariant): IDataSet;
begin
    Result := TDataSetObject.Create() as IDataSet;
    Result.Data := AData;
end;

function CreateDataSet(const AFieldDefs: array of const): IDataSet;
begin
    Result := TDataSetObject.Create(AFieldDefs) as IDataSet;
end;

{
********************************* TFieldIndex **********************************
}
constructor TFieldIndex.Create;
begin
    inherited Create;
    Sorted := True;
end;

function TFieldIndex.CompareStrings(const S1, S2: String): Integer;
begin
    Result := CompareStr(S1, S2);
end;

{
******************************** TCompatDataSet ********************************
}
procedure TCompatDataSet.AddFieldDesc(FieldDescs: TFieldDescList; var DescNo,
    FieldID: Integer; FieldDefs: TFieldDefs);
var
  FPrecision, I: Integer;
  FType: TFieldType;
  FSize: Integer;
  FName: string;
  FieldDesc: DSFLDDesc;
  V: Variant;
begin
  FieldDesc := FieldDescs[DescNo];
  Inc(DescNo);
  with FieldDesc do
  begin
    if ((fldAttrLINK and iFldAttr) <> 0) then
    begin
      Inc(FieldID);
      Exit;
    end;
    //if FCompatMetaData then
        FName := String(szName);
    //else
    //    FName := MetaDataToUnicode(szName);
    if strlen(szName) = SizeOf(MIDASNAME) - 1 then
    begin
      V := InternalGetOptionalParam(szFIELDNAME, FieldID);
      if not VarIsNull(V) and not VarIsClear(V) then
        FName := VarToStr(V);
    end;
    I := 0;
    while FieldDefs.IndexOf(FName) >= 0 do
    begin
      Inc(I);
      //if FCompatMetaData then
          FName := Format('%s_%d', [String(szName), I]);
      //else
      //    FName := Format('%s_%d', [MetaDataToUnicode(szName), I]);
    end;
    if iFldType < MAXLOGFLDTYPES then
      FType := DataTypeMap[iFldType] else
    if iFldType = fldUNICODE then
      FType := ftWideString
    else if iFldType = fldDATETIMEOFFSET then
      FType := ftTimeStampOffset
    else if iFldType = fldINT8 then
      FType := ftShortint
    else if iFldType = fldUINT8 then
      FType := ftByte
    else if iFldType = fldSINGLE then
      FType := TFieldType.ftSingle
    else
      FType := ftUnknown;
    FSize := 0;
    FPrecision := 0;
    case iFldType of
      fldZSTRING, fldBYTES, fldVARBYTES, fldADT, fldArray:
      begin
        FSize := iUnits1;
        if iFldSubType = fldstGuid then
          FType := ftGuid;
      end;
      fldUNICODE:
        FSize := iUnits1 div 2;
      fldINT16, fldUINT16:
        if iFldLen <> 2 then FType := ftUnknown;
      fldINT32:
        if iFldSubType = fldstAUTOINC then FType := ftAutoInc;
      fldFLOAT:
        if iFldSubType = fldstMONEY then FType := ftCurrency;
      fldFMTBCD, fldBCD:
        begin
          FSize := Abs(iUnits2);
          FPrecision := iUnits1;
          if iFldType = fldFMTBCD then
            FType := ftFMTBcd;
        end;
      fldBLOB:
        begin
          FSize := iUnits1;
          if ( (iFldSubType >= fldstMEMO) and (iFldSubType <= fldstTYPEDBINARY))
              or (iFldSubType = fldstWIDEMEMO)
              or (iFldSubType = fldstHMEMO)
              or (iFldSubType = fldstHBINARY) then
            FType := BlobTypeMap[iFldSubType];
        end;
      fldTABLE:
        if iFldSubType = fldstREFERENCE then FType := ftReference;
    end;
    if FType <> ftUnknown then
      with FieldDefs.AddFieldDef do
      begin
        FieldNo := FieldID;
        Inc(FieldID);
        Name := FName;
        DataType := FType;
        Size := FSize;
        Precision := FPrecision;
        Attributes := TFieldAttributes(Byte(iFldAttr));
        if iFldSubType = fldstFIXED then
          Attributes := Attributes + [faFixed];
        InternalCalcField := bCalculated;
        case FType of
          ftADT:
            for I := 0 to iUnits1 - 1 do
              AddFieldDesc(FieldDescs, DescNo, FieldID, ChildDefs);
          ftArray:
            begin
              I := FieldID;
              AddFieldDesc(FieldDescs, DescNo, I, ChildDefs);
              Inc(FieldID, iUnits2);
            end;
        end;
      end;
  end;
end;

procedure TCompatDataSet.InternalInitFieldDefs;
var
    FieldID, I: Integer;
    FieldDescs: TFieldDescList;
    CursorProps: DSProps;
begin
    DSBase.SetProp(dspropCOMPRESSARRAYS, Integer(True));
    Check(DSBase.GetProps(CursorProps));
    SetLength(FieldDescs, CursorProps.iFields);
    Check(DSBase.GetFieldDescs(PDSFldDesc(FieldDescs)));
    FieldDefs.Clear();
    I := 0;
    FieldID := 1;
    while I < CursorProps.iFields do
        AddFieldDesc(FieldDescs, I, FieldID, FieldDefs);
end;

{
******************************** TDataSetObject ********************************
}
constructor TDataSetObject.Create;
begin
    inherited Create(GetLoodsmanTypeLib(), IID_IDataSet);
    FDataSet := TCompatDataSet.Create(nil);
    FIndex := TFieldIndex.Create();
end;

constructor TDataSetObject.Create(const AFieldDefs: array of const);
var
    i: Integer;
    LFieldDef: TFieldDef;
begin
    Create();

    Assert((High(AFieldDefs) + 1) mod 3 = 0);
    for i := 0 to High(AFieldDefs) div 3 do
    begin
        LFieldDef := FDataSet.FieldDefs.AddFieldDef;
        Assert(AFieldDefs[i * 3].VType = vtUnicodeString);
        LFieldDef.Name := String(AFieldDefs[i * 3].VUnicodeString);
        Assert(AFieldDefs[i * 3 + 1].VType = vtInteger);
        LFieldDef.DataType := TFieldType(AFieldDefs[i * 3 + 1].VInteger);
        Assert(AFieldDefs[i * 3 + 2].VType = vtInteger);
        LFieldDef.Size := AFieldDefs[i * 3 + 2].VInteger;
    end;
    FDataSet.CreateDataSet();
end;

destructor TDataSetObject.Destroy;
begin
    FreeAndNil(FIndex);
    FreeAndNil(FDataSet);
    inherited Destroy;
end;

procedure TDataSetObject.Append;
begin
    FDataSet.Append();
end;

procedure TDataSetObject.Cancel;
begin
    FDataSet.Cancel();
end;

procedure TDataSetObject.Clear;
begin
    FDataSet.EmptyDataSet();
end;

procedure TDataSetObject.Delete;
begin
    FDataSet.Delete();
end;

procedure TDataSetObject.Edit;
begin
    FDataSet.Edit();
end;

function TDataSetObject.FindField(const AName: String): TField;
var
    LFieldIndex: Integer;
    LFields: TFields;
    i: Integer;
begin
    LFieldIndex := FIndex.IndexOf(AName);
    if LFieldIndex = -1 then
    begin
        Result := nil;
        LFields := FDataSet.Fields;
        for i := 0 to LFields.Count - 1 do
        begin
           if CompareText(LFields[i].FieldName, AName) = 0 then
           begin
               Result := LFields[i];
               break;
           end;
        end;
        FIndex.AddObject(AName, Result);
    end
    else
        Result := TField(FIndex.Objects[LFieldIndex]);
end;

procedure TDataSetObject.First;
begin
    FDataSet.First();
end;

function TDataSetObject.Get_Bof: WordBool;
begin
    Result := FDataSet.Bof;
end;

function TDataSetObject.Get_CurrentRecord: Integer;
begin
    Result := FDataSet.RecNo;
end;

function TDataSetObject.Get_DATA: OLEVariant;
begin
    Result := FDataSet.Data;
end;

function TDataSetObject.Get_Eof: WordBool;
begin
    Result := FDataSet.Eof;
end;

function TDataSetObject.Get_FieldCount: Integer;
begin
    Result := FDataSet.Fields.Count;
end;

function TDataSetObject.Get_FieldName(Index: Integer): WideString;
begin
    Result := FDataSet.Fields[Index].FieldName;
end;

function TDataSetObject.Get_FieldValue(const Name: WideString): OLEVariant;
var
    LField: TField;
begin
    LField := FindField(Name);
    if LField <> nil then
        Result := LField.AsVariant
    else
        Result := Null;
end;

function TDataSetObject.Get_Filter: WideString;
begin
    Result := FDataSet.Filter;
end;

function TDataSetObject.Get_Filtered: WordBool;
begin
    Result := FDataSet.Filtered;
end;

function TDataSetObject.Get_IndexFieldNames: WideString;
begin
    Result := FDataSet.IndexFieldNames;
end;

function TDataSetObject.Get_RecordCount: Integer;
begin
    Result := FDataSet.RecordCount;
end;

procedure TDataSetObject.Insert;
begin
    FDataSet.Insert();
end;

function TDataSetObject.IsEmpty: WordBool;
begin
    Result := FDataSet.IsEmpty;
end;

procedure TDataSetObject.Last;
begin
    FDataSet.Last();
end;

function TDataSetObject.Locate(const KeyFields: WideString; KeyValues:
    OleVariant; CaseSensitive: WordBool; PartialKey: WordBool): WordBool;
var
    LOptions: TLocateOptions;
begin
    LOptions := [];
    if not CaseSensitive then Include(LOptions, loCaseInsensitive);
    if PartialKey then Include(LOptions, loPartialKey);
    Result := FDataSet.Locate(KeyFields, KeyValues, LOptions);
end;

function TDataSetObject.MoveBy(Distance: Integer): Integer;
begin
    Result := FDataSet.MoveBy(Distance);
end;

procedure TDataSetObject.Next;
begin
    FDataSet.Next();
end;

procedure TDataSetObject.Post;
begin
    FDataSet.Post();
end;

procedure TDataSetObject.Prior;
begin
    FDataSet.Prior();
end;

procedure TDataSetObject.Set_CurrentRecord(Value: Integer);
begin
    FDataSet.RecNo := Value;
end;

procedure TDataSetObject.Set_DATA(Value: OleVariant);
begin
    FIndex.Clear();
    FDataSet.Data := Value;
end;

procedure TDataSetObject.Set_FieldValue(const Name: WideString; Value:
    OleVariant);
var
    LField: TField;
begin
    LField := FindField(Name);
    if LField <> nil then
        LField.AsVariant := Value;
end;

procedure TDataSetObject.Set_Filter(const Value: WideString);
begin
    FDataSet.Filter := Value;
end;

procedure TDataSetObject.Set_Filtered(Value: WordBool);
begin
    FDataSet.Filtered := Value;
end;

procedure TDataSetObject.Set_IndexFieldNames(const Value: WideString);
begin
    FDataSet.IndexFieldNames := Value;
end;


end.
