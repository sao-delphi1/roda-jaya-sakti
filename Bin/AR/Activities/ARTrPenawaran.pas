unit ARTrPenawaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, dxTL, dxDBCtrl, dxDBGrid, DBCtrls, dxDBTLCl, dxGrClms,StrUtils;

type
  TfmARTrPenawaran = class(TfmStdLv31)
    Shape5: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    Label15: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    Label23: TLabel;
    DBText6: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    Label30: TLabel;
    Label33: TLabel;
    Label18: TLabel;
    Label27: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dxDBEdit1: TdxDBEdit;
    dbgPenawaran: TdxDBGrid;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    Label5: TLabel;
    Label32: TLabel;
    quMainGBUID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainCurrID: TStringField;
    quMainCustomer: TStringField;
    quMainUP: TStringField;
    quMainSalesID: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilGBUID: TStringField;
    quDetilProduk: TStringField;
    quDetilDescription: TStringField;
    quDetilQty: TIntegerField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainTTLGBU: TBCDField;
    quMainFgTax: TStringField;
    quMainDisc: TBCDField;
    quSales: TADOQuery;
    quValuta: TADOQuery;
    quMainLSalesName: TStringField;
    quMainLValuta: TStringField;
    dbgPenawaranGBUID: TdxDBGridMaskColumn;
    dbgPenawaranUrut: TdxDBGridColumn;
    dbgPenawaranProduk: TdxDBGridColumn;
    dbgPenawaranQty: TdxDBGridColumn;
    dbgPenawaranPrice: TdxDBGridColumn;
    dbgPenawaranUpdDate: TdxDBGridDateColumn;
    dbgPenawaranUpdUser: TdxDBGridMaskColumn;
    quDetilCTotal: TCurrencyField;
    dbgPenawaranTotal: TdxDBGridColumn;
    dbgPenawaranDescription: TdxDBGridBlobColumn;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quDetilUrut: TIntegerField;
    quTotalSubTotal: TBCDField;
    quTotalGT: TBCDField;
    quTotalTax: TBCDField;
    dxButton1: TdxButton;
    Label6: TLabel;
    rbTerm: TRadioGroup;
    Label7: TLabel;
    quMainCustID: TStringField;
    Label9: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    quMainFlag: TStringField;
    rgKoma: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgPenawaranEnter(Sender: TObject);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure UpdateTotal;
  public
    { Public declarations }
    Flag : string;
  end;

var
  fmARTrPenawaran: TfmARTrPenawaran;

implementation

uses MyUnit, Search, ConMain, UnitGeneral, StdLv1, StdLv3, ARQRRptPenawaran,
  StdLv2;

{$R *.dfm}

Procedure TfmARTrPenawaran.UpdateTotal;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add('UPDATE ARTrPenawaranHd SET TTLGBU='''+FormatCurr('0.00',quTotalGT.AsCurrency)+''' '
       +'WHERE GBUID='''+quMainGBUID.AsString+''' ');
    ExecSQL;
  End;
End;


procedure TfmARTrPenawaran.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), GBUID';
  FFieldTgl   := 'TransDate';
  if Flag='A' then
    FAfterWhere:=' AND Flag=''A'' '
  else
    FAfterWhere:=' AND Flag=''B'' ';
  SettingDxGrid(dbgPenawaran);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active:= TRUE;
  quTotal.Active:= TRUE;
  if GroupUser <> 'admin' then bbDelete.Enabled := False;
  rbTerm.Top := 360;
  rbTerm.Left := 10;
  if Flag = 'A' then
  begin
    Label9.Caption := 'FORM PENAWARAN CUSTOMER';
    rbTerm.ItemIndex := 0;
    rgKoma.Top := 393; rgKoma.Left := 151;
  end else
  begin
    Label9.Caption := 'FORM PURCHASE ORDER';
    Label1.Caption := 'No PO :';
    Label7.Caption := 'Kode Supplier :';
    Label3.Caption := 'Supplier :';
    Label4.Caption := 'Purchasing';
    rbTerm.ItemIndex := 2;
    rgKoma.Top := 393;
    rgKoma.Left := 151;
  end;
end;

procedure TfmARTrPenawaran.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsinsert);
  SetReadOnly(dxDBEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit7,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit8,quMain.State<>dsInsert);
end;

procedure TfmARTrPenawaran.dbgPenawaranEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPenawaran.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPenawaran.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.FocusControl;
  quMainTransdate.AsDateTime := Date;
  quMainCurrID.AsString := 'IDR';
  quMainFgTax.AsString := 'T';
  quMainDisc.AsCurrency := 0;
  quMainUP.AsString:= '';
  quMainFlag.AsString := Flag;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesID as Kode_Sales, Salesname as Nama_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0 '
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSalesID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if TRIM(quMainCustomer.AsString) = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustomer.FocusControl;
    Abort;
  End;

  if quMainSalesID.Value = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLSalesName.Value) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.Value) = '' then
  Begin
    MsgInfo('Valuta belum diisi');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLValuta.Value) = '' then
  Begin
    MsgInfo('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainDisc.AsString)= '' then
  Begin
    MsgInfo('Diskon tidak boleh kosong, Kalau tidak ada kasih nilai nol(0)');
    quMainDisc.FocusControl;
    Abort;
  End;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+dxDBEdit3.Text+''' ');
    try
      Open;
    Except
      on E :Exception do
      begin
        ShowMessage('Field Nama Tidak boleh mengandung character petik tunggal');
        quMainCustomer.FocusControl;
        Abort;
      end;
    end;
  end;

  if quMain.State=dsInsert then
  Begin
    if Flag = 'A' then
    begin
      ST := PT+'-GBU.'+ FormatDateTime('YYMM', quMainTransDate.AsDateTime);
      quMainGBUID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenawaranHd', 'GBUId', ST, '0') + 1);
    end else
    begin
      ST := PT+'-PO.'+ FormatDateTime('YYMM', quMainTransDate.AsDateTime);
      quMainGBUID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenawaranHd', 'GBUId', ST, '0') + 1);
    end;
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenawaran.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenawaranUrut,quDetil.State <> dsInsert);
  SetReadOnly(dbgPenawaranProduk,quDetil.State <> dsInsert);
  SetReadOnly(dbgPenawaranTotal,TRUE);
end;

procedure TfmARTrPenawaran.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM (quDetilProduk.AsString) = '' then
  begin
     MsgInfo('Produk tidak boleh kosong');
     quDetilProduk.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)= '' then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPrice.AsString)= '' then
  begin
     MsgInfo('Price tidak boleh kosong');
     quDetilPrice.FocusControl;
     Abort;
  end;

  if quDetilPrice.AsCurrency < 0 then
  begin
     MsgInfo('Price tidak boleh lebih kecil dari 0');
     quDetilPrice.FocusControl;
     Abort;
  end;

  if TRIM(quDetilUrut.AsString) = '' then
  begin
     MsgInfo('Urut tidak boleh lebih kecil dari 0');
     quDetilUrut.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT Urut FROM ARTrPenawaranDt WHERE Urut='''+quDetilUrut.AsString+''' '
         +'AND GBUID='''+quMainGBUID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        ShowMessage('No Urut sudah terpakai');
        quDetilUrut.FocusControl;
        Abort;
      end;
    end;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenawaran.quDetilCalcFields(DataSet: TDataSet);
var SubTotal : currency;
begin
  inherited;
  SubTotal := (quDetilPrice.Value * quDetilQty.Value);
  quDetilCTotal.AsCurrency :=  SubTotal;
end;

procedure TfmARTrPenawaran.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
   with quAct,SQL do
   begin
      Close; Clear;
      Add('SELECT Urut FROM ARTrPenawaranDt WHERE GBUID='''+quMainGBUID.AsString+''' ORDER BY Urut DESC');
      Open;
      if IsEmpty then
        Result := 1
      else
        Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilQty.AsFloat :=1;
  quDetilUrut.AsInteger := GenerateNoUrut;
  quDetilProduk.FocusControl;
end;

procedure TfmARTrPenawaran.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
  quDetil.Append;
end;

procedure TfmARTrPenawaran.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
  quDetil.Append;
end;

procedure TfmARTrPenawaran.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
end;

procedure TfmARTrPenawaran.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrPenawaran.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPenawaran.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPenawaran.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmARTrPenawaran.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       if Flag = 'A' then
         Title := 'Penawaran'
       else
         Title := 'Purchae Order';
       SQLString := 'SELECT A.GBUID as No,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.CurrID,A.Customer,A.UP,A.Phone,A.Fax,A.Email,'
                   +'B.SalesName as Sales FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
                   +'WHERE '+FSQLWhere;
       if Flag='A' then
         SQLString:=SQLString+' AND Flag=''A'' ORDER BY A.GBUID '
       else
         SQLString:=SQLString+' AND Flag=''B'' ORDER BY A.GBUID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('GBUID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.dxButton1Click(Sender: TObject);
var sTotal : currency;
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(TTLGBU,0) as Total FROM ARTrPenawaranHd Where GBUID='''+quMainGBUID.AsString+'''');
    Open;
  end;
  if quAct.FieldByName('Total').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('Total').AsCurrency;

  with TfmARQRRptPenawaran.Create(Self) do
  try
    if Flag = 'B' then
    begin
      QRLabel18.Caption := 'PURCHASE ORDER';
      QRLabel17.Enabled := False; QRLabel20.Enabled := False; QRLabel39.Enabled := False; QRLabel35.Enabled := False;
      QRLabel38.Top := 37; QRLabel32.Enabled := False; QRLabel33.Enabled := False; QRLabel34.Enabled := False;
      QRLabel19.Caption := 'Mohon dikirimkan barang - barang yang terlampir dibawah :';
      QRLabel40.Enabled := True; QRLabel41.Enabled := True; QRLabel42.Enabled := True;
      QRLabel31.Caption := 'Purchasing Dept'; QRLabel30.Caption := 'Prepared By'; QRLabel38.Height := 34;
      qlbNote.Enabled := True;
      if TRIM(quMainNote.AsString) = '' then qlbNote.Caption := '' else qlbNote.Caption := '* Note : '+quMainNote.AsString;
      if rbTerm.ItemIndex = 0 then
        QRLabel38.Caption := '* Pembayaran COD (Cash on Delivery)'
      else
        if rbTerm.ItemIndex = 1 then
          QRLabel38.Caption := '* Pembayaran 7 (Tujuh) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Satu Anugrah Solusindo'
        else
          if rbTerm.ItemIndex = 2 then
            QRLabel38.Caption := '* Pembayaran 14 (Empat Belas) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Satu Anugrah Solusindo'
          else
            QRLabel38.Caption := '* Pembayaran 30 (Tiga Puluh) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Satu Anugrah Solusindo';
    end else
    begin
      if rgKoma.ItemIndex = 0 then
        Koma := 'Y'
      else
        Koma := 'T';
      QRLabel43.Enabled := False;
      if TRIM(quMainSalesID.AsString) = 'S004' then
        QRLabel31.Caption := 'Sales Manager'
      else
        QRLabel31.Caption := 'Business Representative';
      if rbTerm.ItemIndex = 0 then
        QRLabel38.Caption := '* Pembayaran COD (Cash on Delivery)'
      else
        if rbTerm.ItemIndex = 1 then
          QRLabel38.Caption := '* Pembayaran 7 (Tujuh) Hari Kerja, terhitung sejak tanggal pengiriman'
        else
        if rbTerm.ItemIndex = 2 then
          QRLabel38.Caption := '* Pembayaran 14 (Empat Belas) Hari Kerja, terhitung sejak tanggal pengiriman'
        else
          QRLabel38.Caption := '* Pembayaran 30 (Tiga Puluh) Hari Kerja, terhitung sejak tanggal pengiriman';
    end;
    if UpperCase(quMainCurrId.Value) ='IDR' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
       qlbCurr1.Caption := 'Rp ';
       qlbCurr2.Caption := 'Rp ';
       qlbCurr3.Caption := 'Rp ';
       qlbCurr4.Caption := 'Rp ';
    end;
    if UpperCase(quMainCurrId.Value) ='USD' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
       qlbCurr1.Caption := 'US ';
       qlbCurr2.Caption := 'US ';
       qlbCurr3.Caption := 'US ';
       qlbCurr4.Caption := 'US ';
    end;

    LaDiskon.Caption := quMainDisc.AsString;laSC.Caption := quTotalTax.AsString;laGT.Caption := quTotalGT.AsString;
    qlbSales.Caption := quMainLSalesName.AsString;
    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.Customer,A.UP,A.Phone,A.Fax,A.SalesID+''/''+A.GBUID as Reff,'
         +'A.GBUID,B.SalesName,A.CurrID+'' - ''+C.CurrName as Valuta FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
         +'INNER JOIN SAMsValuta C ON A.CurrID=C.CurrID WHERE A.GBUID='''+quMainGBUID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('SELECT Urut,Produk as ItemName,ISNULL(Qty,0) as Qty,ISNULL(Price,0) as Price,Description as Note,'
         +'ISNULL(Qty*Price,0) as Total FROM ARTrPenawaranDt WHERE GBUID=:GBUID ');
      Open;
    End;
     if sCetak = '0' then
    MyReport.PreviewModal
  else
    MyReport.Print;
  finally
    free;
  end;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
      if Flag = 'A' then
      begin
        Title := 'Pelanggan';
        SQLString := 'SELECT CustName as Pelanggan,CustID as Kode_Pelanggan,Address, Phone, Fax FROM ARMsCustomer ORDER BY CustID';
      end else
      begin
        Title := 'Supplier';
        SQLString := 'SELECT SuppName as Supplier,SuppID,Address,Phone, Fax FROM APMsSupplier ORDER BY SuppID';
      end;
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainCustID.Value := Res[1];
          quMainCustomer.Value := Res[0];
          quMainPhone.Value := Res[3];
          quMainFax.Value := Res[4];
       end;
    finally
       free;
    end;
end;

end.
