unit ARMsWilayah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxEdLib, dxButton, dxCore, dxContainer, Buttons, dxTL,
  dxDBCtrl, dxDBGrid;

type
  TfmARMsWilayah = class(TfmStdLv3)
    dbgWilayah: TdxDBGrid;
    quMainWilayahID: TStringField;
    quMainWilayahName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgWilayahWilayahID: TdxDBGridColumn;
    dbgWilayahWilayahName: TdxDBGridColumn;
    dbgWilayahUpdDate: TdxDBGridColumn;
    dbgWilayahUpdUser: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CekStatus;
  public
    { Public declarations }
  end;

var
  fmARMsWilayah: TfmARMsWilayah;

implementation

uses UnitGeneral, ConMain, Search, StdLv1;

{$R *.dfm}

procedure TfmARMsWilayah.CekStatus;
Begin
 With quAct,SQL do
  Begin
    Close;Clear;
    Add('SELECT Top 1 CustID FROM ARMsCustomer WHERE City='''+quMainWilayahID.AsString+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('Data Wilayah ini sudah di pakai di Master Pelanggan');
      Abort;
    End;
  End;
End;

procedure TfmARMsWilayah.FormShow(Sender: TObject);
begin
  UsePeriod := FALSE;
  SettingDxGrid(dbgWilayah);
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmARMsWilayah.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainWilayahID.FocusControl;
end;

procedure TfmARMsWilayah.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainWilayahID.AsString)='' then
   Begin
     MsgInfo('Kode tidak boleh kosong');
     quMainWilayahID.FocusControl;
     Abort;
   End;

   if Trim(quMainWilayahName.AsString)='' then
   Begin
     MsgInfo('Wilayah belum diisi');
     quMainWilayahName.FocusControl;
     Abort;
   End;

   If quMain.State = dsInsert then
   begin
     With quAct,SQL do
     begin
       Close;Clear;
       add('SELECT WilayahID FROM ARMsWilayah WHERE WilayahID='''+quMainWilayahID.AsString+'''');
       Open;
       If Not IsEmpty then
       begin
         MsgInfo('Kode ini sudah dipakai');
         quMainWilayahID.FocusControl;
         Abort;
       end;
     End;
   end;

  quMainUpdDate.AsDateTime:= GetServerDateTime;
  quMainUpdUser.AsString:= dmMain.UserId;
end;

procedure TfmARMsWilayah.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    begin
      try
        Title := 'Master Wilayah';
        SQLString := 'SELECT WilayahID as Kode,WilayahName as Wilayah FROM ARMsWilayah ORDER BY WilayahName';
        if ShowModal = MrOk then
        begin
          quMain.Locate('WilayahID',Res[0],[]);
        end;
      finally
         free;
      end;
    end;
end;

procedure TfmARMsWilayah.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgWilayahWilayahID,quMain.State<>dsInsert);
  SetReadOnly(dbgWilayahUpdDate,TRUE);
  SetReadOnly(dbgWilayahUpdUser,TRUE);
end;

procedure TfmARMsWilayah.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

end.
