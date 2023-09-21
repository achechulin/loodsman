// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit WConnect;

interface

uses
    SysUtils, MConnect, Ascon_Plm_ServerApi_TLB;

type
    TWCFConnection = class(TDispatchConnection)
    private
            FConnection: IConnection;
            FConnectionFactory: IConnectionFactory;
            FHost: String;
            FPort: Integer;
        class var
            FSharedConnection: IConnection;
            FSharedConnectionFactory: IConnectionFactory;
            FSharedConnectionFactoryWF: IConnectionFactory;
            FSharedConnectionWF: IConnection;
    protected
        procedure SetConnected(Value: Boolean); override;
    public
        class procedure CloseShared;
        property Host: String read FHost write FHost;
        property Port: Integer read FPort write FPort;
    end;


implementation

uses
    ComObj, Variants, Windows;

const
    CWorkflowAppServerGUID = '{3D7F4F8F-F8A2-4AC5-B9E7-48CBC7CD2749}';

{
******************************** TWCFConnection ********************************
}
class procedure TWCFConnection.CloseShared;
begin
    FSharedConnection := nil;
    FSharedConnectionFactory := nil;
    FSharedConnectionWF := nil;
    FSharedConnectionFactoryWF := nil;
end;

procedure TWCFConnection.SetConnected(Value: Boolean);
begin
    if Connected <> Value then
    begin
        if Value then
        begin
            // Используем два разных IConnectionFactory, так как внутри одного
            // выбор текущей БД связан между подключениями Лоцмана и Workflow
            if GetCurrentThreadID <> MainThreadID then
            begin
                FConnectionFactory := CreateComObject(CLASS_ConnectionFactory) as IConnectionFactory;
                FConnection := FConnectionFactory.CreateConnection(FHost, FPort);
            end
            else
            begin
                if ServerGUID = CWorkflowAppServerGUID then
                begin
                    // Используем общее подключение к серверу для экономии лицензий
                    if FSharedConnectionFactoryWF = nil then
                        FSharedConnectionFactoryWF := CreateComObject(CLASS_ConnectionFactory) as IConnectionFactory;
                    if FSharedConnectionWF = nil then
                        FSharedConnectionWF := FSharedConnectionFactoryWF.CreateConnection(FHost, FPort);
                    FConnectionFactory := FSharedConnectionFactoryWF;
                    FConnection := FSharedConnectionWF;
                end
                else
                begin
                    // Используем общее подключение к серверу для экономии лицензий
                    if FSharedConnectionFactory = nil then
                        FSharedConnectionFactory := CreateComObject(CLASS_ConnectionFactory) as IConnectionFactory;
                    if FSharedConnection = nil then
                        FSharedConnection := FSharedConnectionFactory.CreateConnection(FHost, FPort);
                    FConnectionFactory := FSharedConnectionFactory;
                    FConnection := FSharedConnection;
                end;
            end;
            if ServerGUID = CWorkflowAppServerGUID then
                SetAppServer(FConnection.WFSystem)
            else
                SetAppServer(FConnection.MainSystem);
        end
        else
        begin
            SetAppServer(Unassigned);
            FConnection := nil;
        end;
   end;
end;


end.
