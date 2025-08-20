unit CFMsGroupRek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxEdLib,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms;

type
  TfmCFMsGroupRek = class(TfmStdLv3)
    dbgList: TdxDBGrid;
    quMainGroupRekId: TStringField;
    quMainGroupRekName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListGroupRekName: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridColumn;
    dbgListUpdUser: TdxDBGridColumn;
    dbgListGroupRekId: TdxDBGridColumn;
    dbgListKomponen: TdxDBGridImageColumn;
    quMainComponen: TStringField;
    quMainUrut: TIntegerField;
    dbgListColumn6: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFMsGroupRek: TfmCFMsGroupRek;

implementation

uses UnitGeneral, ConMain, Search, StdLv0;

{$R *.dfm}

procedure TfmCFMsGroupRek.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
end;

procedure TfmCFMsGroupRek.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmCFMsGroupRek.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(quMainGroupRekId.AsString)='') then
  begin
    MsgInfo('Kode Group Rekening tidak boleh kosong');
    quMainGroupRekId.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select GroupRekID from CFMsGroupRek Where GroupRekId='''+quMainGroupRekId.AsString+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Group Rekening sudah dipakai Kode Group Rekening lain');
        quMainGroupRekId.FocusControl;
        Abort;
      End;
    End;
  End;

  if Trim(quMainGroupRekName.Value)='' then
  begin
    MsgInfo('Deskripsi Group Rekening tidak boleh kosong');
    quMainGroupRekName.FocusControl;
    Abort;
  end;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmCFMsGroupRek.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgListGroupRekId,quMain.State<>dsInsert);
  SetReadOnly(dbgListUpdDate,TRUE);
  SetReadOnly(dbgListUpdUser,TRUE);
end;

procedure TfmCFMsGroupRek.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Group Rekening';
         SQLString := ' Select GroupRekName as Nama_Group,GroupRekID as Kode_Group '
                     +' FROM CFMsGroupRek '
                     +' ORDER BY GroupRekName';
         if ShowModal = MrOk then
         begin
           qumain.Locate('GroupRekID',Res[1],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsGroupRek.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainGroupRekId.FocusControl;
end;

procedure TfmCFMsGroupRek.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT GroupRekID FROM CFMsRekening WHERE GroupRekID='''+quMainGroupRekId.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Data sedang digunakan di master rekening. Tidak bisa hapus');
      Abort;
    end;
  end;
end;

end.
