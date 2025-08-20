unit INMsUOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ActnList,
  DB, ADODB, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore,
  dxContainer;

type
  TfmINMsUOM = class(TfmStdLv3)
    dbgUOM: TdxDBGrid;
    quMainUOMId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgUOMUOMId: TdxDBGridColumn;
    dbgUOMUpdUser: TdxDBGridColumn;
    dbgUOMUpdDate: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    StForm : string;
  end;

var
  fmINMsUOM: TfmINMsUOM;

implementation

uses UnitGeneral, ConMain, Search;

{$R *.dfm}

procedure TfmINMsUOM.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgUOM);
end;

procedure TfmINMsUOM.FormShow(Sender: TObject);
begin
  inherited;
  qumain.Active := TRUE;

  if StForm='S' then
  begin
    Caption := 'Master Satuan';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT UOMID,Upddate,UpdUser FROM INMsUOM');
      Open;
    end;
  end else
  if StForm='K' then
  begin
    Caption := 'Master Jabatan';
    dbgUOMUOMId.Caption := 'Jabatan';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT Jabatan as UOMID,Upddate,UpdUser FROM ARmsJabatan');
      Open;
    end;
  end else
  begin
    Caption := 'Master Point of Hire';
    dbgUOMUOMId.Caption := 'Lokasi';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT Lokasi as UOMID,Upddate,UpdUser FROM ARMsHire');
      Open;
    end;
  end;

  quMain.Last;
end;

procedure TfmINMsUOM.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainUOMId.FocusControl;
end;

procedure TfmINMsUOM.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if StForm='S' then
   begin
     if Trim(quMainUOMId.AsString)='' then
     Begin
       MsgInfo('Satuan tidak boleh kosong');
       quMainUOMId.FocusControl;
       Abort;
     End;

     If quMain.State = dsInsert then
     begin
       With quAct,Sql do
       begin
         Close;Clear;
         add('Select UOMID FROM INMsUOM WHERE UOMID='''+quMainUOMId.AsString+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Satuan ini sudah dipakai');
           quMainUOMId.FocusControl;
           Abort;
         end;
       End;
     end;
   end else
   if StForm='J' then
   begin
     if Trim(quMainUOMId.AsString)='' then
     Begin
       MsgInfo('Jabatan tidak boleh kosong');
       quMainUOMId.FocusControl;
       Abort;
     End;

     If quMain.State = dsInsert then
     begin
       With quAct,Sql do
       begin
         Close;Clear;
         add('Select Jabatan FROM ARMsJabatan WHERE Jabatan='''+quMainUOMId.AsString+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Jabatan ini sudah ada');
           quMainUOMId.FocusControl;
           Abort;
         end;
       End;
     end;
   end else
   begin
     if Trim(quMainUOMId.AsString)='' then
     Begin
       MsgInfo('Lokasi tidak boleh kosong');
       quMainUOMId.FocusControl;
       Abort;
     End;

     If quMain.State = dsInsert then
     begin
       With quAct,Sql do
       begin
         Close;Clear;
         add('Select Lokasi FROM ARMsHire WHERE Lokasi='''+quMainUOMId.AsString+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Lokasi ini sudah ada');
           quMainUOMId.FocusControl;
           Abort;
         end;
       End;
     end;
   end;

  quMainUpdDate.Value:= GetServerDateTime;
  quMainUpdUser.Value:= dmMain.UserId;    
end;

procedure TfmINMsUOM.bbFindClick(Sender: TObject);
begin
  inherited;
  if StForm='S' then
  begin
    with TfmSearch.Create(Self) do
    begin
      try
        Title := 'Master Satuan';
        ClientWidth := 500;
        ClientHeight := 600;
        SQLString := 'SELECT UOMId as Satuan from INMsUOM';
        if ShowModal = MrOk then
        begin
          qumain.Locate('UOMId',Res[0],[]);
        end;
      finally
        free;
      end;
    end;
  end else
  if StForm='J' then
  begin
    with TfmSearch.Create(Self) do
    begin
      try
        Title := 'Master Jabatan';
        ClientWidth := 500;
        ClientHeight := 600;
        SQLString := 'SELECT Jabatan from ArMsJabatan';
        if ShowModal = MrOk then
        begin
          qumain.Locate('UOMId',Res[0],[]);
        end;
      finally
        free;
      end;
    end;
  end else
  begin
    with TfmSearch.Create(Self) do
    begin
      try
        Title := 'Master Point of Hire';
        ClientWidth := 500;
        ClientHeight := 600;
        SQLString := 'SELECT Lokasi from ARMsHire';
        if ShowModal = MrOk then
        begin
          qumain.Locate('UOMId',Res[0],[]);
        end;
      finally
        free;
      end;
    end;
  end;
end;

procedure TfmINMsUOM.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUOMUOMId,quMain.State<>dsInsert);
  SetReadOnly(dbgUOMUpdUser,TRUE);
  SetReadOnly(dbgUOMUpdDate,TRUE);
end;

procedure TfmINMsUOM.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if StForm='S' then
  begin
  With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 UOMId FROM INMsItem WHERE UOMId='''+quMainUOMId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Satuan ini sudah di pakai di Master Barang');
      Abort;
    End;
  End;
  end else
  if StForm='S' then
  begin
  With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 Jabatan FROM ARMsSales WHERE Jabatan='''+quMainUOMId.AsString+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Jabatan ini sudah di pakai di Master Karyawan');
      Abort;
    End;
  End;
  end else
  begin
  With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 Pointhire FROM ARMsSales WHERE pointhire='''+quMainUOMId.AsString+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Lokasi ini sudah di pakai di Master Karyawan');
      Abort;
    End;
  End;
  end;
end;

end.
