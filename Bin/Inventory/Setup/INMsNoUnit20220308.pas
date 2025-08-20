unit INMsNoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxDBELib;

type
  TfmINMsNoUnit = class(TfmStdLv31)
    dbgProduct: TdxDBGrid;
    dbgProductProductID: TdxDBGridColumn;
    dbgProductName: TdxDBGridColumn;
    dbgProductUpdDate: TdxDBGridColumn;
    dbgProductUser: TdxDBGridColumn;
    quMainNoUnit: TStringField;
    quMainDescription: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFgGroup: TStringField;
    quMaingroupid: TStringField;
    quMainjenis: TStringField;
    dbgProductColumn6: TdxDBGridImageColumn;
    Panel1: TPanel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    dbgProductColumn5: TdxDBGridButtonColumn;
    quMainLGroup: TStringField;
    quMainPayload: TBCDField;
    dbgProductColumn7: TdxDBGridColumn;
    quMainFgActive: TStringField;
    dbgProductColumn8: TdxDBGridImageColumn;
    Label3: TLabel;
    dbgTypeClassUnit: TdxDBGridButtonColumn;
    quMainTypeClassUnit: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgProductColumn5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgTypeClassUnitButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINMsNoUnit: TfmINMsNoUnit;

implementation

uses ConMain, MyUnit, UnitGeneral, Search, StdLv1;

{$R *.dfm}

procedure TfmINMsNoUnit.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmINMsNoUnit.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;

  panel1.Top := 10;Panel1.Left := 5;
  dxDBButtonEdit6.Top := 30; dxDBButtonEdit6.Left := 10;
  Edit1.Top := 80; Edit1.Left := 10;

  Button2.Top := 105; Button2.Left := 10;
  Button1.Top := 105; Button1.Left := 85;



  if (GroupUser<>'admin') AND (LowerCase(dmMain.UserId)<>'ronny') AND (LowerCase(dmMain.UserId)<>'shoen') AND (LowerCase(dmMain.UserId)<>'super')
  AND (LowerCase(dmMain.UserId)<>'andy') then
  Panel1.Visible := False;
end;

procedure TfmINMsNoUnit.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainNoUnit.value)='' then
   Begin
     ShowMessage('No Unit tidak boleh kosong');
     quMainGroupId.FocusControl;
     Abort;
   End;

   if Trim(quMaingroupid.value)='' then
   Begin
     ShowMessage('Group Unit tidak boleh kosong');
     quMainLGroup.FocusControl;
     Abort;
   End;

   if Trim(quMainLGroup.value)='' then
   Begin
     ShowMessage('Group Unit tidak ada dalam master');
     quMainLGroup.FocusControl;
     Abort;
   End;

   If (quMain.State = dsInsert) then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select NoUnit FROM INMsNoUnit WHERE NOUnit='''+quMainNoUnit.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('No Unit ini sudah dipakai');
           quMainNoUnit.FocusControl;
           Abort;
         end;
      End;
   end;
  quMainUpdDate.AsDateTime:= GetServerDateTime;
  quMainUpdUser.AsString:= dmMain.UserId;
end;

procedure TfmINMsNoUnit.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgProductProductID,quMain.State<>dsInsert);
  SetReadOnly(dbgProductUpdDate,TRUE);
  SetReadOnly(dbgProductUser,TRUE);
  if (GroupUser<>'admin') and (LowerCase(dmMain.UserId)<>'andy') then
  SetReadOnly(dbgProductColumn8,TRUE);
end;

procedure TfmINMsNoUnit.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMaingroupid.AsString := 'R';
  quMainjenis.ASString := 'K';
  quMainPayload.AsCurrency := 0;
  quMainFgActive.AsString := 'Y';
end;

procedure TfmINMsNoUnit.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 Nounit FROM ApTrPurchaseRequestDt where nounit='''+quMainNoUnit.ASString+''' ');
    Open;
  end;
  if quAct.RecordCount<>0 then
  begin
    ShowMessage('NoUnit Sudah Dipakai');
    Abort;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainNoUnit.ASString+''',''Delete'',''Hapus Nomor Unit'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

procedure TfmINMsNoUnit.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    begin
    try
      Title := 'Master Nomor Unit';
      SQLString := 'SELECT NoUnit as NoUnit,Description as Description from INMsNoUnit';

      if ShowModal = MrOk then
      begin
        qumain.Locate('NoUnit',Res[0],[]);
      end;

      finally
        free;
      end;
    end;
end;

procedure TfmINMsNoUnit.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    begin
    try
      Title := 'Master Nomor Unit';
      SQLString := 'SELECT NoUnit as NoUnit,Description as Description from INMsNoUnit';

      if ShowModal = MrOk then
      begin
        qumain.Locate('NoUnit',Res[0],[]);
      end;

      finally
        free;
      end;
    end;
end;

procedure TfmINMsNoUnit.Button1Click(Sender: TObject);
begin
  inherited;
  if (TRIM(Edit1.Text)='') then
  begin
    ShowMessage('Kode Baru Belum Diisi');
    Edit1.SetFocus;
    Abort;
  end;

  With quAct,sql do
  Begin
    Close;Clear;
    Add(' SELECT TOP 1 NoUnit FROM INMsNoUnit WHERE NOUnit='''+Edit1.Text+''' ');
    Open;
  End;
  if quAct.RecordCount<>0 then
  begin
    ShowMessage('No Unit Baru Sudah Ada. Proses Batal');
    Abort;
  end;

  if (MessageDlg('Ganti Nomor Unit '''+quMainNoUnit.ASString+''' menjadi '''+Edit1.Text+''' ? Tidak bisa dikembalikan !', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    With quAct,sql do
    Begin
      Close;Clear;
      Add(' update APTrPurchaseOrderDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update APTrPurchaseRequestDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update APTrKonsinyasiDt set nounit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrAdjustmentDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update ARTrPurchaseOrderDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrKanibalhd set NoUnitSrc='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrKanibalhd set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INMsNoUnit set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      //showmessage(sql.text);
      ExecSQL;
    End;
  end;

 with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainNoUnit.ASString+''',''Ubah'',''Ubah Nomor Unit menjadi '''+Edit1.Text+',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
  ShowMessage('Data Nomor Unit Sudah Diubah. Keluar Master Nomor Unit untuk refresh');
end;

procedure TfmINMsNoUnit.Button2Click(Sender: TObject);
begin
  inherited;
  if (TRIM(Edit1.Text)='') then
  begin
    ShowMessage('Kode Baru Belum Diisi');
    Edit1.SetFocus;
    Abort;
  end;

  With quAct,sql do
  Begin
    Close;Clear;
    Add(' SELECT TOP 1 NoUnit FROM INMsNoUnit WHERE NOUnit='''+Edit1.Text+''' ');
    Open;
  End;
  if quAct.RecordCount=0 then
  begin
    ShowMessage('No Unit untuk digabung Tidak ditemukan. Proses Batal');
    Abort;
  end;

  if (MessageDlg('Ganti Nomor Unit '''+quMainNoUnit.ASString+''' menjadi '''+Edit1.Text+''' ? Tidak bisa dikembalikan !', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    With quAct,sql do
    Begin
      Close;Clear;
      Add(' update APTrPurchaseOrderDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update APTrPurchaseRequestDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update APTrKonsinyasiDt set nounit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrAdjustmentDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update ARTrPurchaseOrderDt set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrKanibalhd set NoUnitSrc='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' update INTrKanibalhd set NoUnit='''+Edit1.Text+''' where NoUnit='''+quMainNoUnit.AsString+''' ');
      Add(' delete from INMsNoUnit where NoUnit='''+quMainNoUnit.AsString+''' ');
      //showmessage(sql.text);
      ExecSQL;
    End;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainNoUnit.ASString+''',''Gabung'',''Gabung No Unit menjadi '''+Edit1.Text+',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
  ShowMessage('Data Nomor Unit Sudah Digabung. Keluar Master Nomor Unit untuk refresh');
end;

procedure TfmINMsNoUnit.dbgProductColumn5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Unit';
       SQLString := 'SELECT NmMaster as Nama_Group,KdMaster as Kode_Group FROM AllMaster WHERE FgMaster=''U'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMaingroupid.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmINMsNoUnit.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT NmMaster FROM AllMaster Where FgMaster=''U'' AND KdMaster='''+quMaingroupid.ASString+''' ');
    Open;
  end;
  quMainLGroup.ASString := quAct.FieldByName('NmMaster').AsString;

end;

procedure TfmINMsNoUnit.dbgTypeClassUnitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Type Class Unit';
       SQLString := 'SELECT TypeClassUnit,Description from INMSTypeClassUnit';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainTypeClassUnit.Value := Res[0];
       end;
    finally
       free;
    end;
end;

end.
