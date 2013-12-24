unit TestTypes;

interface

uses
    SysUtils, DB, TestFrameWork, Loodsman.Infrastructure.Types;

type
    TTestTypes = class(TTestCase)
    protected
        procedure SetUp; override;
        procedure TearDown; override;
    published
        procedure TestEnums;
        procedure TestRecords;
        procedure TestGetValue;
    end;

implementation

{ TTestTypes }

procedure TTestTypes.SetUp;
begin
    inherited;
end;

procedure TTestTypes.TearDown;
begin
    inherited;
end;

procedure TTestTypes.TestEnums;
begin
    // TAccessLevel = (alNoAccess, alRead, alReadWrite, alAdministration);
    // Уровень доступа к объекту (1 – Чтение, 2 – Чтение и запись, 3 – Администрирование)
    CheckEquals(0, Ord(alNoAccess));
    CheckEquals(1, Ord(alRead));
    CheckEquals(2, Ord(alReadWrite));
    CheckEquals(3, Ord(alAdministration));

    // TAccessMethod = (amIntegrated, amPassword, amPassword2, amNone, amUnknown);
    // Не документирован

    // TAttributeType = (atString, atInteger, atFloat, atDateTime, atText = 5, atImage = 6);
    // Тип атрибута: 0 – Строка; 1 – Целое число; 2 – Действительное число;
    // 3 – Дата и время; 5 – Текст; 6 – Изображение;
    CheckEquals(0, Ord(atString));
    CheckEquals(1, Ord(atInteger));
    CheckEquals(2, Ord(atFloat));
    CheckEquals(3, Ord(atDateTime));
    CheckEquals(5, Ord(atText));
    CheckEquals(6, Ord(atImage));

    // TCardControlType = (cctEdit, cctNumEdit, cctNumMeasuredEdit, cctDate, cctTime,
    //    cctText, cctImage, cctLabel, cctBevel);
    // Не документирован

    // TConnectionType = (ctDCOM, ctSocket, ctWeb);
    // Не документирован

    // TLinkDirection = (ldAny, ldForwardOnly, ldBackwardOnly = -1);
    // Направление, может быть связан c типом: <-1> – только в обратном направлении;
    // <1> – только в прямом направлении; <0> – в прямом и обратном направлении
    CheckEquals(0, Ord(ldAny));
    CheckEquals(1, Ord(ldForwardOnly));
    CheckEquals(-1, Ord(ldBackwardOnly));

    // TLinkKind = (lkVertical, lkHorizontal);
    // Вид связи (<1> – горизонтальная, <0> – вертикальная)
    CheckEquals(0, Ord(lkVertical));
    CheckEquals(1, Ord(lkHorizontal));

    // TLinkQuantity = (lqNone, lqParent, lqChild, lqAlways);
    // Признак количественной связи: <0> – в любом направлении связь неколичественная;
    // <1> – если возвращенный тип выступает в роли вышестоящего для заданного типа;
    // <2> – если возвращенный тип выступает в роли нижестоящего для заданного типа;
    // <3> – в любом направлении связь количественная
    CheckEquals(0, Ord(lqNone));
    CheckEquals(1, Ord(lqParent));
    CheckEquals(2, Ord(lqChild));
    CheckEquals(3, Ord(lqAlways));

    // TLockLevel = (llNone, llLockOwner, llLocked);
    // Уровень блокировки объекта (0 – не блокирован,
    // 1 – блокирован текущим пользователем,
    // 2 – блокирован другим пользователем)
    CheckEquals(0, Ord(llNone));
    CheckEquals(1, Ord(llLockOwner));
    CheckEquals(2, Ord(llLocked));

    // TRoleType = (rtUser, rtRole, rtDepartment, rtOrganization);
    // Тип узла дерева: 0 – пользователь;
    // 1 – роль; 2 – подразделение; 3 – организация
    CheckEquals(0, Ord(rtUser));
    CheckEquals(1, Ord(rtRole));
    CheckEquals(2, Ord(rtDepartment));
    CheckEquals(3, Ord(rtOrganization));

    // TRouteItemState = (risNone, risReceived = 2, risAccepted, risExecuted,
    //     risQuestion, risRefuse, risRefuseStop = 8, risWait, risQuestionStop);
    // Состояния стадии и подпроцесса: 0 – неопределенное (задание еще не пришло);
    // 2 – задание поступило к исполнителю; 3 – задание принято к исполнению;
    // 4 – задание выполнено; 5 – у исполнителя есть вопросы;
    // 6 – исполнитель отказался выполнять задание;
    // 8 – исполнитель отказался выполнять задание, бизнес-процесс остановлен;
    // 10 – у исполнителя есть вопросы, бизнес-процесс остановлен.
    // Состояния автоматической операции ожидания:
    // 0 – неопределенное; автооперация еще не выполнялась;
    // 4 – автооперация выполнена с положительным результатом;
    // 9 – автооперация выполнена с отрицательным результатом и находится в состоянии ожидания.
    CheckEquals(0, Ord(risNone));
    CheckEquals(2, Ord(risReceived));
    CheckEquals(3, Ord(risAccepted));
    CheckEquals(4, Ord(risExecuted));
    CheckEquals(5, Ord(risQuestion));
    CheckEquals(6, Ord(risRefuse));
    CheckEquals(8, Ord(risRefuseStop));
    CheckEquals(9, Ord(risWait));
    CheckEquals(10, Ord(risQuestionStop));

    // TRouteItemType = (ritStage = 1, ritSubFlow, ritCondition = 4, ritAutoOperation, ritWaitOperation);
    // Расширенная кодировка типов элементов маршрута: 1 – стадия;
    // 2 – подпроцесс; 4 – условие перехода; 5 – автоматическая операция;
    // 6 – автоматическая операция ожидания.
    CheckEquals(1, Ord(ritStage));
    CheckEquals(2, Ord(ritSubFlow));
    CheckEquals(4, Ord(ritCondition));
    CheckEquals(5, Ord(ritAutoOperation));
    CheckEquals(6, Ord(ritWaitOperation));

    // TRouteSeqType = (rstForward, rstReturn, rstYes, rstNo, rstTimeLimit);
    // Кодировка типов связей между элементами маршрута: 0 – прямая связь;
    // 1 – обратная связь; 2 – условие выполнено;
    // 3 – условие не выполнено; 4 – связь по нарушению лимита времени.
    CheckEquals(0, Ord(rstForward));
    CheckEquals(1, Ord(rstReturn));
    CheckEquals(2, Ord(rstYes));
    CheckEquals(3, Ord(rstNo));
    CheckEquals(4, Ord(rstTimeLimit));

    // TRouteState = (rsNone, rsActive, rsStopped, rsFinished);
    // Кодировка состояний рабочего бизнес-процесса: 0 – новый;
    // 1 – активный (запущенный); 2 – остановленный для редактирования;
    // 3 – завершенный.
    CheckEquals(0, Ord(rsNone));
    CheckEquals(1, Ord(rsActive));
    CheckEquals(2, Ord(rsStopped));
    CheckEquals(3, Ord(rsFinished));

    // TFieldType = (ftUnknown, ftString, ftSmallint, ftInteger, ftWord, ftBoolean,
    //     ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, ftBytes, ftVarBytes,
    //     ftAutoInc, ftBlob, ftMemo);
    CheckEquals(Ord(DB.ftUnknown), Ord(ftUnknown));
    CheckEquals(Ord(DB.ftString), Ord(ftString));
    CheckEquals(Ord(DB.ftSmallint), Ord(ftSmallint));
    CheckEquals(Ord(DB.ftInteger), Ord(ftInteger));
    CheckEquals(Ord(DB.ftWord), Ord(ftWord));
    CheckEquals(Ord(DB.ftBoolean), Ord(ftBoolean));
    CheckEquals(Ord(DB.ftFloat), Ord(ftFloat));
    CheckEquals(Ord(DB.ftCurrency), Ord(ftCurrency));
    CheckEquals(Ord(DB.ftBCD), Ord(ftBCD));
    CheckEquals(Ord(DB.ftDate), Ord(ftDate));
    CheckEquals(Ord(DB.ftTime), Ord(ftTime));
    CheckEquals(Ord(DB.ftDateTime), Ord(ftDateTime));
    CheckEquals(Ord(DB.ftBytes), Ord(ftBytes));
    CheckEquals(Ord(DB.ftVarBytes), Ord(ftVarBytes));
    CheckEquals(Ord(DB.ftAutoInc), Ord(ftAutoInc));
    CheckEquals(Ord(DB.ftBlob), Ord(ftBlob));
    CheckEquals(Ord(DB.ftMemo), Ord(ftMemo));
end;

procedure TTestTypes.TestGetValue;
begin
    // GetValue()
end;

procedure TTestTypes.TestRecords;
begin
    // struct MenuItem
    // {
    //     char stMenu[255];
    //     char stFunction[255];
    // };
    CheckEquals(510, SizeOf(TLoodsmanAddMenuCom));
    CheckEquals(0,   Integer(@TLoodsmanAddMenuCom(nil^).stMenu));
    CheckEquals(255, SizeOf(TLoodsmanAddMenuCom(nil^).stMenu));
    CheckEquals(255, Integer(@TLoodsmanAddMenuCom(nil^).stFunction));
    CheckEquals(255, SizeOf(TLoodsmanAddMenuCom(nil^).stFunction));
end;

initialization
    TestFramework.RegisterTest(TTestTypes.Suite);

end.
