unit MTMsService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ActnList,
  DB, ADODB, StdCtrls, ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore,
  dxContainer, Buttons;

type
  TfmMTMsService = class(TfmStdLv31)
    dbgUOM: TdxDBGrid;
    dbgUOMUOMId: TdxDBGridColumn;
    dbgUOMUpdDate: TdxDBGridColumn;
    dbgUOMUpdUser: TdxDBGridColumn;
    quMainServiceId: TStringField;
    quMainServiceName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainKdService: TStringField;
    dbgUOMColumn4: TdxDBGridColumn;
    dbgUOMColumn5: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMTMsService: TfmMTMsService;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, UnitDate, Search, ConMain;

procedure TfmMTMsService.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmMTMsService.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmMTMsService.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUOMUOMId,TRUE);
  SetReadOnly(dbgUOMUpdDate,TRUE);
  SetReadOnly(dbgUOMUpdUser,TRUE);
end;

procedure TfmMTMsService.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    begin
      try
        Title := 'Master Service';
        SQLString := 'SELECT ServiceName as Nama_Perbaikan,KdService as Kode,ServiceID from MTMsService order by ServiceName';
        if ShowModal = MrOk then
        begin
          qumain.Locate('ServiceID',Res[2],[]);
        end;
      finally
        free;
      end;
    end;
end;

procedure TfmMTMsService.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;

  if TRIM(quMainKdService.ASString)='' then
  Begin
    MsgInfo('Kode Service tidak boleh kosong');
    quMainKdService.FocusControl;
    Abort;
  End;

  if TRIM(quMainServiceName.ASString)='' then
  Begin
    MsgInfo('Nama Service/Perbaikan tidak boleh kosong');
    quMainServiceName.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  Begin
    ST := 'U';
    quMainServiceId.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'MTMsService', 'ServiceID', ST, '0') + 1);
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

end.
