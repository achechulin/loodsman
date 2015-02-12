unit TestDataSet;

interface

uses
    SysUtils, TestFrameWork, Loodsman_TLB, Loodsman.Infrastructure.DataSet;

type
    TTestDataSet = class(TTestCase)
    protected
        procedure SetUp; override;
        procedure TearDown; override;
    published
        procedure TestCreateEmptyDataSet;
        procedure TestCreateWithFields;
        procedure TestCreateWithData;
        procedure TestCompatV11;
        procedure TestEdit;
        procedure TestMove;
        procedure TestBlob;
        procedure TestFieldValue;
        procedure TestLocate;
        procedure TestFilter;
        procedure TestIndex;
    end;

implementation

uses
    Classes, ComObj, Variants, DataProvider_TLB, Loodsman.Infrastructure.Types;

function GetFileAsVariant(const AFileName: String): Variant;
var
    LFileStream: TFileStream;
    LSize: Integer;
    P: Pointer;
begin
    LFileStream := TFileStream.Create(AFileName, fmOpenRead, fmShareDenyWrite);
    try
        LSize := LFileStream.Size;
        // Массив создается по следуюзей схеме:
        // ElementCount := HighBound - LowBound + 1;
        // Поэтому мы может в качестве размера передать [0, -1]
        // и у нас будет правильный массив нулевого размера
        Result := VarArrayCreate([0, LSize - 1], varByte);
        P := VarArrayLock(Result);
        try
            LFileStream.ReadBuffer(P^, LSize);
        finally
            VarArrayUnLock(Result);
        end;
    finally
        LFileStream.Free;
    end;
end;

procedure SetFileAsVariant(const AFileName: String; const AFileData: Variant);
var
    LFileStream: TFileStream;
    LSize: Integer;
    P: Pointer;
begin
    LFileStream := TFileStream.Create(AFileName, fmCreate, fmShareDenyWrite);
    try
        // В случае нулевого размера, HighBound будет -1,
        // и размер вычислится правильно
        LSize := VarArrayHighBound(AFileData, 1) - VarArrayLowBound(AFileData, 1) + 1;
        Assert(LSize >= 0);
        P := VarArrayLock(AFileData);
        try
            LFileStream.WriteBuffer(P^, LSize);
        finally
            VarArrayUnLock(AFileData);
        end;
    finally
        LFileStream.Free();
    end;
end;

{ TTestResources }

procedure TTestDataSet.SetUp;
begin
    inherited;
end;

procedure TTestDataSet.TearDown;
begin
    inherited;
end;

procedure TTestDataSet.TestCompatV11;
var
    LDataSet: IDataSet;
    LDataSetV11: IDataSetV11;
    LDataSetV13: IDataSetV13;
begin
    LDataSet := CreateDataSet();
    Check(LDataSet <> nil);

    Check(Supports(LDataSet, IDataSetV11, LDataSetV11));
    Check(LDataSetV11 <> nil);

    Check(Supports(LDataSet, IDataSetV13, LDataSetV13));
    Check(LDataSetV13 <> nil);
end;

procedure TTestDataSet.TestCreateEmptyDataSet;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet();
    Check(LDataSet <> nil);
    CheckEquals(True, LDataSet.Bof);
    CheckEquals(True, LDataSet.Eof);
    CheckEquals(0, LDataSet.FieldCount);
    CheckEquals(False, LDataSet.Filtered);
    CheckEquals('', LDataSet.Filter);
    CheckEquals('', LDataSet.IndexFieldNames);
    CheckEquals(True, LDataSet.IsEmpty);

    StartExpectingException(EOleException);
    LDataSet.First();
    StopExpectingException();
end;

procedure TTestDataSet.TestCreateWithFields;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet([
        '_DataBase',     Ord(ftString),  256,
        '_UserName',     Ord(ftString),  256,
        '_AccessMethod', Ord(ftInteger), 0,
        '_Password',     Ord(ftString),  256
        ]);
    Check(LDataSet <> nil);

    CheckEquals(4, LDataSet.FieldCount);
    CheckEquals('_DataBase', LDataSet.FieldName[0]);
    CheckEquals('_UserName', LDataSet.FieldName[1]);
    CheckEquals('_AccessMethod', LDataSet.FieldName[2]);
    CheckEquals('_Password', LDataSet.FieldName[3]);

    LDataSet.Append();
    LDataSet.FieldValue['_DataBase'] := 'Демо';
    LDataSet.FieldValue['_UserName'] := 'Пользователь';
    LDataSet.FieldValue['_AccessMethod'] := 42;
    LDataSet.FieldValue['_Password'] := 'Пароль';
    LDataSet.Post();

    LDataSet.Append();
    LDataSet.FieldValue['_DataBase'] := 'Демо Машиностроение';
    LDataSet.FieldValue['_UserName'] := 'Пользователь';
    LDataSet.FieldValue['_AccessMethod'] := 42;
    LDataSet.FieldValue['_Password'] := 'Пароль';
    LDataSet.Post();

    LDataSet.First();
    CheckEquals('Демо', LDataSet.FieldValue['_DataBase']);
    CheckEquals('Пользователь', LDataSet.FieldValue['_UserName']);
    CheckEquals(42, LDataSet.FieldValue['_AccessMethod']);
    CheckEquals('Пароль', LDataSet.FieldValue['_Password']);
    LDataSet.Next();
    CheckEquals('Демо Машиностроение', LDataSet.FieldValue['_DataBase']);
    CheckEquals('Пользователь', LDataSet.FieldValue['_UserName']);
    CheckEquals(42, LDataSet.FieldValue['_AccessMethod']);
    CheckEquals('Пароль', LDataSet.FieldValue['_Password']);
    LDataSet.Next();
    CheckEquals(True, LDataSet.Eof);
end;

procedure TTestDataSet.TestCreateWithData;
var
    LDataSet: IDataSet;
    LBytes: TBytes;
begin
    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_GetTree2.cds'));
    Check(LDataSet <> nil);

    CheckEquals(14, LDataSet.FieldCount);
    CheckEquals('_ID_LINK', LDataSet.FieldName[0]);
    CheckEquals('_ID_VERSION', LDataSet.FieldName[1]);
    CheckEquals('_ID_TYPE', LDataSet.FieldName[2]);
    CheckEquals('_PRODUCT', LDataSet.FieldName[3]);
    CheckEquals('_VERSION', LDataSet.FieldName[4]);
    CheckEquals('_ID_STATE', LDataSet.FieldName[5]);
    CheckEquals('_ID_LINKTYPE', LDataSet.FieldName[6]);
    CheckEquals('_HAS_LINK', LDataSet.FieldName[7]);
    CheckEquals('_ID_LOCK', LDataSet.FieldName[8]);
    CheckEquals('_ACCESSLEVEL', LDataSet.FieldName[9]);
    CheckEquals('_ID_LNK_1', LDataSet.FieldName[10]);
    CheckEquals('Наименование', LDataSet.FieldName[11]);
    CheckEquals('_S255', LDataSet.FieldName[12]);
    CheckEquals('_S245', LDataSet.FieldName[13]);

    CheckEquals(24, LDataSet.RecordCount);

    CheckEquals(23956, LDataSet.FieldValue['_ID_LINK']);
    CheckEquals(13079, LDataSet.FieldValue['_ID_VERSION']);
    CheckEquals(291, LDataSet.FieldValue['_ID_TYPE']);
    CheckEquals('078.505.9.0100.00123', LDataSet.FieldValue['_PRODUCT']);
    CheckEquals('1', LDataSet.FieldValue['_VERSION']);
    CheckEquals(36, LDataSet.FieldValue['_ID_STATE']);
    CheckEquals(30, LDataSet.FieldValue['_ID_LINKTYPE']);
    CheckEquals(0, LDataSet.FieldValue['_HAS_LINK']);
    CheckEquals(756, LDataSet.FieldValue['_ID_LOCK']);
    CheckEquals(3, LDataSet.FieldValue['_ACCESSLEVEL']);
    CheckEquals(23956, LDataSet.FieldValue['_ID_LNK_1']);
    Check(Null =  LDataSet.FieldValue['Наименование']);
    Check(Null = LDataSet.FieldValue['_S255']);
    Check(Null = LDataSet.FieldValue['_S245']);

    LDataSet.Next();

    CheckEquals(17442, LDataSet.FieldValue['_ID_LINK']);
    CheckEquals(10163, LDataSet.FieldValue['_ID_VERSION']);
    CheckEquals(291, LDataSet.FieldValue['_ID_TYPE']);
    CheckEquals('078.505.9.0100.00 ВОБ', LDataSet.FieldValue['_PRODUCT']);
    CheckEquals('1', LDataSet.FieldValue['_VERSION']);
    CheckEquals(40, LDataSet.FieldValue['_ID_STATE']);
    CheckEquals(30, LDataSet.FieldValue['_ID_LINKTYPE']);
    CheckEquals(0, LDataSet.FieldValue['_HAS_LINK']);
    Check(Null = LDataSet.FieldValue['_ID_LOCK']);
    CheckEquals(3, LDataSet.FieldValue['_ACCESSLEVEL']);
    CheckEquals(17442, LDataSet.FieldValue['_ID_LNK_1']);
    CheckEquals('Ведомость оснастки', LDataSet.FieldValue['Наименование']);
    Check(Null = LDataSet.FieldValue['_S255']);
    Check(Null = LDataSet.FieldValue['_S245']);

    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_GetStateList.cds'));
    Check(LDataSet <> nil);

    CheckEquals(3, LDataSet.FieldCount);
    CheckEquals('_ID', LDataSet.FieldName[0]);
    CheckEquals('_NAME', LDataSet.FieldName[1]);
    CheckEquals('_ICON', LDataSet.FieldName[2]);

    CheckEquals(20, LDataSet.RecordCount);

    CheckEquals(29, LDataSet.FieldValue['_ID']);
    CheckEquals('Аннулирован', LDataSet.FieldValue['_NAME']);
    LBytes := LDataSet.FieldValue['_ICON'];
    CheckEquals(578, Length(LBytes));

    LDataSet.Next();

    CheckEquals(30, LDataSet.FieldValue['_ID']);
    CheckEquals('Архив', LDataSet.FieldValue['_NAME']);
    LBytes := LDataSet.FieldValue['_ICON'];
    CheckEquals(1078, Length(LBytes));
end;

procedure TTestDataSet.TestEdit;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');

    CheckEquals('078.505.9.0100.00123', LDataSet.FieldValue['_PRODUCT']);
    LDataSet.Edit();
    LDataSet.FieldValue['_PRODUCT'] := 'Новый';
    LDataSet.Post();
    CheckEquals('Новый', LDataSet.FieldValue['_PRODUCT']);

    LDataSet.Edit();
    LDataSet.FieldValue['_PRODUCT'] := 'Тестовый';
    LDataSet.Cancel();
    CheckEquals('Новый', LDataSet.FieldValue['_PRODUCT']);

    LDataSet.Append();
    LDataSet.FieldValue['_PRODUCT'] := 'Пример';
    LDataSet.Post();
    CheckEquals('Пример', LDataSet.FieldValue['_PRODUCT']);

    CheckEquals(25, LDataSet.CurrentRecord);

    LDataSet.Delete();
    CheckEquals(24, LDataSet.RecordCount);

    LDataSet.Clear();
    CheckEquals(0, LDataSet.RecordCount);
end;

procedure TTestDataSet.TestMove;
var
    LDataSet: IDataSet;
    i: Integer;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');

    CheckEquals(True, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);
    CheckEquals(1, LDataSet.CurrentRecord);

    i := 0;
    while not LDataSet.Eof do
    begin
        Inc(i);
        LDataSet.Next();
    end;
    CheckEquals(24, i);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(True, LDataSet.Eof);

    LDataSet.First();
    CheckEquals(1, LDataSet.CurrentRecord);
    CheckEquals(True, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);

    LDataSet.Next();
    CheckEquals(2, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);

    LDataSet.MoveBy(11);
    CheckEquals(13, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);

    LDataSet.MoveBy(-1);
    CheckEquals(12, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);

    LDataSet.Prior();
    CheckEquals(11, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(False, LDataSet.Eof);

    LDataSet.Last();
    CheckEquals(24, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(True, LDataSet.Eof);

    LDataSet.Next();
    CheckEquals(24, LDataSet.CurrentRecord);
    CheckEquals(False, LDataSet.Bof);
    CheckEquals(True, LDataSet.Eof);
end;

procedure TTestDataSet.TestBlob;
var
    LDataSet: IDataSet;
    LDataSetBytes, LFileBytes: TBytes;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetStateList.cds');

    CheckEquals(True, LDataSet.Locate('_NAME', 'Архив', False, False));

    CheckEquals('Архив', LDataSet.FieldValue['_NAME']);
    LDataSetBytes := LDataSet.FieldValue['_ICON'];
    CheckEquals(1078, Length(LDataSetBytes));

    LFileBytes := GetFileAsVariant('SampleData_Archive.bmp');
    CheckEquals(1078, Length(LFileBytes));
    CheckEqualsMem(@LDataSetBytes[0], @LFileBytes[0], Length(LFileBytes));
end;

procedure TTestDataSet.TestFieldValue;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');
    LDataSet.Next();

    CheckEquals('078.505.9.0100.00 ВОБ', LDataSet.FieldValue['_PRODUCT']);
    CheckEquals('078.505.9.0100.00 ВОБ', LDataSet.FieldValue['_Product']);
    CheckEquals('078.505.9.0100.00 ВОБ', LDataSet.FieldValue['_product']);
    Check(Null = LDataSet.FieldValue['product']);

    CheckEquals('Ведомость оснастки', LDataSet.FieldValue['Наименование']);
    // Имена полей из не-ASCII символов чувствительны к регистру.
    // Так сделано только для ускорения поиска и потому, что имена
    // из не-ASCII символов могут быть получены только из свойства
    // FieldNames, в коде используются только имена из латинских букв
    Check(Null = LDataSet.FieldValue['наименование']);
end;

procedure TTestDataSet.TestLocate;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');

    CheckEquals(False, LDataSet.Locate('_PRODUCT', 'Новый', False, False));

    CheckEquals(True, LDataSet.Locate('_PRODUCT', '078.505.9.0100.00 ВОБ', False, False));
    CheckEquals(2, LDataSet.CurrentRecord);

    CheckEquals(False, LDataSet.Locate('_PRODUCT', '078.505.9.0100.00 воб', True, False));
    CheckEquals(True, LDataSet.Locate('_PRODUCT', '078.505.9.0100.00 воб', False, False));

    CheckEquals(True, LDataSet.Locate('_PRODUCT', '078.505.9.0100', False, True));
    CheckEquals(False, LDataSet.Locate('_PRODUCT', '078.505.9.0100', False, False));

    // Имена полей из не-ASCII символов не работают в методе Locate.
    // Видимо, из-за проблем с метаданными внутри midas.dll
    //CheckEquals(True, LDataSet.Locate('Наименование', 'Ведомость оснастки', False, False));
end;

procedure TTestDataSet.TestFilter;
var
    LDataSet: IDataSet;
    i: Integer;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');

    LDataSet.Filter := '_PRODUCT=' + QuotedStr('078.505.9.0100.00');

    LDataSet.Filtered := True;
    CheckEquals(4, LDataSet.RecordCount);
    i := 0;
    while not LDataSet.Eof do
    begin
        CheckEquals('078.505.9.0100.00', LDataSet.FieldValue['_PRODUCT']);
        Inc(i);
        LDataSet.Next();
    end;
    CheckEquals(4, i);

    LDataSet.Filtered := False;
    CheckEquals(24, LDataSet.RecordCount);
end;

procedure TTestDataSet.TestIndex;
var
    LDataSet: IDataSet;
    LPrev: Integer;
begin
    LDataSet := CreateDataSet();
    LDataSet.Data := GetFileAsVariant('SampleData_GetTree2.cds');

    LDataSet.IndexFieldNames := '_ID_STATE';

    LPrev := 0;
    while not LDataSet.Eof do
    begin
        Check(LPrev <= LDataSet.FieldValue['_ID_STATE']);
        LPrev := LDataSet.FieldValue['_ID_STATE'];
        LDataSet.Next();
    end;
end;

initialization
    TestFramework.RegisterTest(TTestDataSet.Suite);

    // При первом обращении к TClientDataSet будет выделена память, которую
    // тесты считают потеряной. Инициализируем TClientDataSet до запуска тестов
    CreateDataSet(['Row', Ord(ftString), 256]);

end.
