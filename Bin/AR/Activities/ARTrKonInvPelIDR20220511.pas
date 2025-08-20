unit ARTrKonInvPelIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls, DateUtils;

type
  TfmARTrKonInvPelIDR = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    dbgListKonInvPelID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListJatuhTempo: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    dbgListPelangganName: TdxDBGridLookupColumn;
    quMainKonInvPelID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quSales: TADOQuery;
    quMainCustName: TStringField;
    quMainSalesName: TStringField;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    DBText8: TDBText;
    RbCetak: TRadioGroup;
    dxButton1: TdxButton;
    RbHarga: TRadioGroup;
    Label4: TLabel;
    DBText5: TDBText;
    quMainCJthTempo: TDateTimeField;
    quMainDiscount: TBCDField;
    quMainCurrID: TStringField;
    quMainDP: TBCDField;
    quDetilItemID: TStringField;
    quItem: TADOQuery;
    quLokasi: TADOQuery;
    quDetilLItemName: TStringField;
    quMainNote: TStringField;
    quDetilKonInvPelID: TStringField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilKonTransBrgId: TStringField;
    quDetilCTotal: TCurrencyField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    Label23: TLabel;
    DBText2: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Konsinyasi: TdxDBGridButtonColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1ValueTotal: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    quMainTTLKJ: TBCDField;
    quMainSTKJ: TBCDField;
    Label22: TLabel;
    DBText9: TDBText;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quDetilKomisi: TBCDField;
    quDetilLKomisi: TCurrencyField;
    quMainRate: TBCDField;
    Label24: TLabel;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    quCalc: TADOQuery;
    quMainSOID: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    quMainFgTax: TStringField;
    Shape5: TShape;
    Label26: TLabel;
    DBText7: TDBText;
    DBText10: TDBText;
    ActPrint: TAction;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    quDetilLUserPrice: TCurrencyField;
    dxDBGrid1LUserPrice: TdxDBGridColumn;
    dxButton2: TdxButton;
    quMainFgCetak: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    quMainFgInvoice: TStringField;
    quMainFgTerm: TBCDField;
    quMainBankID: TStringField;
    Label34: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    DBText12: TDBText;
    quMainLRekPenjualan: TStringField;
    quMainLRekPPN: TStringField;
    quMainLRekDisc: TStringField;
    quMainLRekPiutangDagang: TStringField;
    dxButton3: TdxButton;
    Label35: TLabel;
    txtKonInvPelID: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    txtPelangganID: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    dxDBEdit2: TdxDBEdit;
    txtJatuhTempo: TdxDBMaskEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    DBText15: TDBText;
    quMainLFgTerm: TStringField;
    dxDBSpinEdit2: TdxDBSpinEdit;
    quMainLuPajak: TStringField;
    quMainPOCust: TStringField;
    dxDBEdit1: TdxDBEdit;
    Label36: TLabel;
    quDetilFgTax: TStringField;
    dxDBGrid1FgTax: TdxDBGridImageColumn;
    quDetilUOMID: TStringField;
    dxDBGrid1UserPrice: TdxDBGridColumn;
    dxDBPajak: TdxDBImageEdit;
    Label38: TLabel;
    RgCetak: TRadioGroup;
    Shape8: TShape;
    Label39: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    quMainOngkir: TBCDField;
    quMainRePack: TBCDField;
    quMainAdministrasi: TBCDField;
    quDetilItemName: TStringField;
    Shape7: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    quDetilQty: TBCDField;
    quDetilJumlah: TBCDField;
    quDetilDiscItem: TBCDField;
    dxDBGrid1Column12: TdxDBGridColumn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    dxButton6: TdxButton;
    quDetilNumAll: TAutoIncField;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    quMainRekeningA: TStringField;
    quMainRekeningO: TStringField;
    quMainRekeningR: TStringField;
    dxDBButtonEdit8: TdxDBButtonEdit;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBButtonEdit10: TdxDBButtonEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    quMainLOngkir: TStringField;
    quMainLAdmin: TStringField;
    quMainLRepak: TStringField;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    quMainModal: TBCDField;
    quMainRekeningHPP: TStringField;
    quMainRekeningPsd: TStringField;
    Label14: TLabel;
    dxDBButtonEdit11: TdxDBButtonEdit;
    DBText26: TDBText;
    quMainLRekHPP: TStringField;
    quMainWarehouseID: TStringField;
    quMainDivisiID: TStringField;
    quDetilNoUnit: TStringField;
    Label15: TLabel;
    DBText27: TDBText;
    dxDBButtonEdit12: TdxDBButtonEdit;
    Label16: TLabel;
    DBText28: TDBText;
    dxDBButtonEdit13: TdxDBButtonEdit;
    quMainLWarehouse: TStringField;
    quMainLdivisi: TStringField;
    quDetilLtypeunit: TStringField;
    dxDBGrid1Column14: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    quMainFgPPH23: TStringField;
    quDetilFgPPH23: TStringField;
    quDetilLNoUnit: TStringField;
    dxDBGrid1UOMID: TdxDBGridImageColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    quDetilATotal: TCurrencyField;
    quDetilFgJasa: TStringField;
    dxDBGrid1Column16: TdxDBGridImageColumn;
    dxDBGrid1Column17: TdxDBGridImageColumn;
    quMainRekJual: TStringField;
    Label17: TLabel;
    dxDBButtonEdit14: TdxDBButtonEdit;
    DBText29: TDBText;
    quMainLRekJual: TStringField;
    dxDBGrid1Column13: TdxDBGridButtonColumn;
    Shape13: TShape;
    Shape14: TShape;
    DBText30: TDBText;
    Label18: TLabel;
    DBText31: TDBText;
    Label19: TLabel;
    DBText32: TDBText;
    DBText33: TDBText;
    dxDBImageEdit1: TdxDBImageEdit;
    Label31: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    Label30: TLabel;
    dxDBButtonEdit7: TdxDBButtonEdit;
    Label32: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    quMainPPN: TBCDField;
    quTotalSubTotal: TBCDField;
    quTotalPPN: TBCDField;
    quTotalTotal: TBCDField;
    quTotalPPH23: TBCDField;
    quTotalNilai: TBCDField;
    quTotalModal: TIntegerField;
    quMainLCurr: TStringField;
    dxDBImageEdit2: TdxDBImageEdit;
    Label21: TLabel;
    quMainLperforma: TStringField;
    quMainFgPerforma: TStringField;
    quMainPPH: TBCDField;
    quMainNoKontrak: TStringField;
    quMainFPS: TStringField;
    quMainPeriodeCharge: TStringField;
    Label25: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label27: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label28: TLabel;
    dxDBEdit5: TdxDBEdit;
    RadioGroup2: TRadioGroup;
    quMainFgDN: TStringField;
    DBRadioGroup3: TDBRadioGroup;
    Label29: TLabel;
    dxDBButtonEdit15: TdxDBButtonEdit;
    quMainSiteID: TStringField;
    DBText11: TDBText;
    quMainLSites: TStringField;
    dxDBButtonEdit16: TdxDBButtonEdit;
    quCetak: TADOQuery;
    quMainNilaiPPh: TBCDField;
    dxDBMaskEdit2: TdxDBMaskEdit;
    Label33: TLabel;
    dxDBEdit9: TdxDBEdit;
    Label37: TLabel;
    quMainNilaiTax: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure txtSalesIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtKonInvPelIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtDiskonChange(Sender: TObject);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure quMainCustIDChange(Sender: TField);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainSOIDChange(Sender: TField);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure quDetilFgTaxChange(Sender: TField);
    procedure quDetilPriceChange(Sender: TField);
    procedure dxDBGrid1UOMIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCurrIDChange(Sender: TField);
    procedure dxDBButtonEdit14ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Column13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit15ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit16ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainFgPerformaChange(Sender: TField);
  private
    { Private declarations }
    procedure TTLKJ;
    procedure CeKStatus;
    procedure CekCetak;
    procedure CetakPPN;
    procedure CetakNonPPN;
  public
    { Public declarations }
    status,StLap,StForm : string;
    rek,nmrek,cabrek,bankrek,telpcomp : string;
  end;

var
  fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR;

implementation

uses Search, UnitGeneral, ConMain, MyUnit, InvoicePenjualan, ARChangeNoInv,
  ARQRRptSegel, ARQRRptInvPenjualan, ARQRRptSuratJalan, ARSN, RptMultiCetak,
  ARQrRptCetakAmplop, StdLv0, StdLv1, RptLv0, RptGLTrKMKK, StrUtils, ARQRInvoice,
  QRCtrls;

{$R *.dfm}

procedure TfmARTrKonInvPelIDR.CetakPPN;
Begin
  with TfmInvoicePenjualan.Create(Self) do
  try
    if quMainFgDN.ASString='Y' then
    qrlTitle.Caption := 'DEBIT NOTE'
    else
    qrlTitle.Caption := 'INVOICE';
    qrlPeriode.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
    QRLabel23.Caption := 'PPN '+quMainNilaiTax.AsString +'%';


    if StForm='RJS' then
    begin
    QRLabel15.Caption := 'Soerianto Soewardi';
    QRImage1.Enabled := True;
    QRImage8.Enabled := False;
    QRLabel35.Caption := 'PT RODA JAYA SAKTI';
    QRLabel36.Caption := 'Jl. Tupai No.73A Labuang Baji Mamajang Makassar ' + char(13) +
                         '90132 Indonesia. Phone: +62411 452 059 ';
    end else
    begin
    QRLabel15.Caption := 'William Lukisanto Gosal';
    QRImage1.Enabled := False;
    QRImage8.Enabled := True;
    QRLabel35.Caption := 'PT TRIDAYA INDOMINERAL';
    QRLabel36.Caption := 'Jl. Anuang No.86 Maricaya Selatan Mamajang Makassar '+ char(13) +
                         '90131 Indonesia. Phone: +62411-850-663 ';
    end;
    //tampilan rekening
    qrLabel4.Caption := 'If you have any questions concerning this invoice, call : '+telpcomp+' . THANK YOU FOR YOUR BUSINESS';
    qlbNamaRekening.Caption := nmrek;
    qlbBank.Caption := bankrek;
    qlbbank1.Caption := cabrek;
    QRLabel9.Caption := rek;

    qrLabel29.Caption := currtostr(quTotalSubTotal.AsCurrency);
    laPPN.Caption := currtostr(quTotalPPN.AsCurrency);
    laSubTotal.Caption := currtostr(quTotalTotal.AsCurrency);
    laongkir.Caption := currtostr(quTotalPPH23.AsCurrency);
    laGT.Caption := currtostr(quTotalNilai.AsCurrency);

    if quMainFgPPH23.ASString='T' then
    begin
      QRLabel20.Enabled := false; laongkir.Enabled := false;
      qrlabel3.Enabled := false; laGT.Enabled := false;
      qrlabel1.Enabled := false; QRShape4.Enabled := false;
      qlbCurr5.Enabled := false;
    end;

    //tampilan header
    qlbTempo.Caption := quMainJatuhTempo.AsString;
    qlbKet.Caption := FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));

    //terbilang
    qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalNilai.AsCurrency))+' #';


    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT A.KonInvPelID as SaleId,C.CustName,C.Address,C.CPerson,A.CURRID,A.Note,''Faktur : ''+A.FPS as FPS,A.PeriodeCharge,ISNULL(A.NoKontrak,'''') as NoKontrak '
         +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
         +'WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+'''');
      Open;
    End;

    if quMainCurrID.AsString='IDR' then
    ChildBand1.Enabled := False
    else
    ChildBand1.Enabled := TRUE;

    With qu002,SQL do
    Begin
      Close;Clear;
      add(' SELECT ISNULL(A.NoUnit+'' (''+B.Description+'') '','''')+A.ItemName as Description,'
         +' A.UOMId,ISNULL(A.Qty,0) as Qty,ISNULL(A.Price*C.Rate,0) as Price,ISNULL(ROUND(A.Qty*A.Price*C.Rate,0),0) as Total, '
         +' ISNULL(A.Price,0) as HargaKurs,C.Rate '
         +' FROM ARTrKonInvPelDt A '
         +' LEFT JOIN INMsNoUnit B ON A.NoUnit=B.NoUnit '
         +' INNER JOIN ARTrKonInvPelHd C on A.KonInvPelID=C.KonInvPelID '
         +' WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+''' '
         +' ORDER BY A.NoUnit,A.ItemName ');
      Open;
    End;

    if sCetak = '0' then
    MyReport.PreviewModal
    else
    MyReport.Print;

    finally
      free;
    end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrKonInvPelHd SET FgCetak=''Y'' WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' ');
    ExecSQL;
  end;
End;

procedure TfmARTrKonInvPelIDR.CetakNonPPN;
Begin
  with TfmARQRinvoice.Create(Self) do
  try
    if quMainFgDN.ASString='Y' then
    qrlTitle.Caption := 'DEBIT NOTE'
    else
    qrlTitle.Caption := 'INVOICE';
    qrlPeriode.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);

    //tampilan rekening
    qrLabel4.Caption := 'If you have any questions concerning this invoice, call : '+telpcomp+' . THANK YOU FOR YOUR BUSINESS';
    qlbNamaRekening.Caption := nmrek;
    qlbBank.Caption := bankrek;
    qlbbank1.Caption := cabrek;
    QRLabel9.Caption := rek;

    laSubTotal.Caption := currtostr(quTotalTotal.AsCurrency);
    laongkir.Caption := currtostr(quTotalPPH23.AsCurrency);
    laGT.Caption := currtostr(quTotalNilai.AsCurrency);
    
    if RadioGroup2.ItemIndex=1 then
    QRDbimage1.Enabled := False;

    if quMainFgPPH23.ASString='T' then
    begin
      QRLabel20.Enabled := false; laongkir.Enabled := false;
      qrlabel3.Enabled := false; laGT.Enabled := false;
      qrlabel1.Enabled := false; QRShape4.Enabled := false;
      qlbCurr5.Enabled := false;
    end;

    //tampilan header
    qlbTempo.Caption := quMainJatuhTempo.AsString;
    qlbKet.Caption := FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));

    //terbilang
    qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalNilai.AsCurrency))+' #';

    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT A.KonInvPelID as SaleId,C.CustName,C.Address,C.CPerson,A.CURRID,A.Note,A.PeriodeCharge,ISNULL(A.NoKontrak,'''') as NoKontrak, '
         +'X.ttd,ISNULL(X.namattd,'''') as namattd '
         +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
         +'INNER JOIN SAMsRekJual X on A.RekJual=X.RekJualID '
         +'WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+'''');
      Open;
    End;

    if quMainCurrID.AsString='IDR' then
    ChildBand1.Enabled := False
    else
    ChildBand1.Enabled := TRUE;

    With qu002,SQL do
    Begin
      Close;Clear;
      add(' SELECT ISNULL(A.NoUnit+'' (''+B.Description+'') '','''')+A.ItemName as Description,'
         +' A.UOMId,ISNULL(A.Qty,0) as Qty,ISNULL(A.Price*C.Rate,0) as Price,ISNULL(ROUND(A.Qty*A.Price*C.Rate,0),0) as Total, '
         +' ISNULL(A.Price,0) as HargaKurs,C.Rate '
         +' FROM ARTrKonInvPelDt A '
         +' LEFT JOIN INMsNoUnit B ON A.NoUnit=B.NoUnit '
         +' INNER JOIN ARTrKonInvPelHd C on A.KonInvPelID=C.KonInvPelID '
         +' WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+''' '
         +' ORDER BY A.NoUnit,A.ItemName ');
      Open;
    End;

    if sCetak = '0' then
    MyReport.PreviewModal
    else
    MyReport.Print;

    finally
      free;
    end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrKonInvPelHd SET FgCetak=''Y'' WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' ');
    ExecSQL;
  end;
End;

procedure TfmARTrKonInvPelIDR.CekCetak;
Begin
 { if GroupUser <> 'admin' then
  begin
    with quAct, SQL do
    begin
      Close;Clear;
      Add('SELECT FgCetak FROM ARTrKonInvPelHd WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('FgCetak').AsString = 'Y' then
    begin
      pesan('Data sudah pernah dicetak tidak bisa Hapus atau Ubah lagi');
      Abort;
    end;
  end;   }
End;

procedure TfmARTrKonInvPelIDR.CeKStatus;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 VoucherID PiutangID FROM CFTrKKBBDt WHERE Note='''+quMainKonInvPelID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
      //if (GroupUser<>'admin') AND (GroupUser<>'Spenjualan') then
      //begin
        MsgInfo('Sudah ada Pembayaran ['+quAct.fieldbyname('PiutangID').AsString+'], tidak bisa edit/Delete lagi');
        Abort;
      //end else
      //begin
      //  MsgInfo('Sudah ada Pembayaran ['+quAct.fieldbyname('PiutangID').AsString+'], Sebelum Edit diperhatikan');
      //end;
    end;
  end;
End;

procedure TfmARTrKonInvPelIDR.TTLKJ;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update ARTrKonInvPelHd SET TTLKJ='+CurrToStr(quTotalTotal.AsCurrency)+',PPN='+CurrToStr(quTotalPPN.AsCurrency)+','
       +' STKJ='+CurrToStr(quTotalSubTotal.AsCurrency)+',Modal='+CurrToStr(quTotalModal.AsCurrency)+','
       +' PPH='+CurrToStr(quTotalPPH23.AsCurrency)+' '
       +' WHERE KonInvpelID='''+quMainKonInvPelID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmARTrKonInvPelIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonInvPelID';
  FFieldTgl   := 'TransDate';
  FAfterWhere:=' AND ISNULL(BankID,''RJS'')='''+StForm+''' ';
  SettingDxGrid(dxDBGrid1);
  inherited;
  //FgPerforma R=Regular, P=Performa

  if StLap = 'R' then
  begin
    if StForm='RJS' then
    begin
      Caption := 'Invoice Penjualan RJS';
      Label33.Caption := StForm;
    end else
    begin
      Caption := 'Invoice Penjualan TIM';
      Label33.Caption := StForm;
    end;
  end else
  if StLap = 'T' then
  begin
    Caption := 'Invoice Penjualan Tambang';
  end else
  if StLap = 'H' then
  begin
   Caption := 'Invoice Penjualan Hauling';
  end else
  if StLap = 'A' then
  begin
   Caption := 'Invoice Penjualan Konsumsi';
  end else
  if StLap = 'O' then
  begin
   Caption := 'Invoice Penjualan Overtime';
  end else
  if StLap = 'M' then
  begin
   Caption := 'Invoice Penjualan Mess';
  end else
  begin
   Caption := 'Invoice Penjualan Solar';
  end;

  quMain.Active  := TRUE;
{  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM ARTrKonInvPelHD WHERE FgPerforma='''+Stlap+''' ');
    Open;
  end;    }

  quDetil.Active := TRUE;
  quTotal.Active := TRUE;

  dxDBButtonEdit4.Top := 25; dxDBButtonEdit4.left := 8;
  dxDBButtonEdit7.Top := 70; dxDBButtonEdit7.left := 8;
  dxDBButtonEdit5.Top := 115; dxDBButtonEdit5.left := 8;
end;

procedure TfmARTrKonInvPelIDR.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pelanggan';
     SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                 +' FROM ARMsCustomer '
                 +' ORDER BY CustName';
     if ShowModal = MrOK then
     begin
         if quMain.State = dsBrowse then quMain.Edit;
          quMainCustId.AsString := Res[1];
     end;
  finally
     Free;
  end;

end;

procedure TfmARTrKonInvPelIDR.txtSalesIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesId as Kode_Sales, SalesName as Nama_Sales'
                   +',Address '
                   +' FROM ARMsSales'
                   +' ORDER BY SalesId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforePost(DataSet: TDataSet);
var ST,buntut,tengah : String;
begin
  inherited;
 { if qumain.State = dsInsert then
  begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add(' SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelHd  '
       +' WHERE Koninvpelid='''+quMainKonInvPelID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
      MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonInvPelID').AsString+'], silahkan edit no invoice');
      Abort;
    end;
  end
  end;  }

  If TRIM(quMainsiteid.AsString)='' then
  Begin
    MsgInfo('Site tidak boleh kosong');
    quMainsiteid.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSites.AsString)='' then
  Begin
    MsgInfo('Site tidak ada dalam Master');
    quMainsiteid.FocusControl;
    Abort;
  End;
  
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainRekJual.AsString)='' then
  begin
    MsgInfo('Rekening Penerimaan tidak boleh kosong');
    quMainRekJual.FocusControl;
    Abort;
  End;

  if Trim(quMainLRekJual.AsString)='' then
  begin
    MsgInfo('Rekening Penerimaan tidak ada dalam Master');
    quMainRekJual.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.AsString)='' then
  begin
    MsgInfo('Kode Customer tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainCustName.AsString)='' then
  begin
    MsgInfo('Kode Customer tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

 { if quMainSalesID.AsString = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;   }

 { if TRIM(quMainSalesName.AsString) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;  }

  if Trim(quMainCurrID.AsString)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainFgPerforma.AsString)='' then
  begin
    MsgInfo('Jenis Invoice tidak boleh kosong');
    quMainFgPerforma.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.AsString)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainJatuhTempo.AsString)='' Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh kosong');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if quMainJatuhTempo.Value < 0  Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh lebih kecil dari 0');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;



  if quMain.State=dsInsert then
  begin
    if (MessageDlg('Transaksi ini adalah transaksi PPN ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      quMainFgTax.ASString := 'Y';
      tengah := StForm+'/'+quMainCustID.ASString;
    end else
    begin
      quMainFgTax.ASString := 'T';
      tengah := quMainCustID.AsString;
    end;

    if quMainFgPerforma.AsString='R' then
    buntut := '/'+tengah+'/RHE/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    if quMainFgPerforma.AsString='T' then
    buntut := '/'+tengah+'/MS/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    if quMainFgPerforma.AsString='A' then
    buntut := '/'+tengah+'/CON/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    if quMainFgPerforma.AsString='O' then
    buntut := '/'+tengah+'/OT/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    if quMainFgPerforma.AsString='S' then
    buntut := '/'+tengah+'/SO/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    if quMainFgPerforma.AsString='M' then
    buntut := '/'+tengah+'/AK/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime)
    else
    buntut := '/'+tengah+'/HO/'+PeriodeRomawi(quMainTransDate.AsDatetime)+FormatDateTime('/YYYY', quMainTransDate.AsDateTime);

    ST := FormatDateTime('YYYY', quMainTransDate.AsDateTime);

    if quMainFgTax.AsString='Y' then
    quMainWarehouseID.ASString := ST + FormatFloat('000', RunNumberGL(quAct, 'artrkoninvpelhd', 'warehouseID', ST, '0') + 1)   //ppn
    else
    quMainDivisiID.ASString := ST + FormatFloat('000', RunNumberGL(quAct, 'artrkoninvpelhd', 'DivisiID', ST, '0') + 1);  //non

    if quMainFgTax.ASString='Y' then
    quMainKonInvPelID.ASString := RIGHTSTR(quMainWarehouseID.AsString,3)+buntut
    else
    quMainKonInvPelID.ASString := RIGHTSTR(quMainDivisiID.AsString,3)+buntut;

  end;

  if quMainCurrID.AsString='IDR' then quMainRate.AsCurrency := 1;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;

end;

procedure TfmARTrKonInvPelIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBPajak,TRUE);
  SetReadOnly(txtKonInvPelID,TRUE);
  //SetReadOnly(txtPelangganID,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,qumain.state<>dsinsert);
  SetReadOnly(dxDBImageEdit2,qumain.state<>dsinsert);
  SetReadOnly(dxDBButtonEdit16,qumain.state<>dsinsert);
  SetReadOnly(dxDBButtonEdit12,TRUE);
  SetReadOnly(dxDBButtonEdit13,TRUE);
  SetReadOnly(dxDBButtonEdit1,TRUE);
  //if StLap='R' then SetReadOnly(dxDBPajak,TRUE);

  SetReadOnly(dxDBButtonEdit4,TRUE);
  SetReadOnly(dxDBButtonEdit5,TRUE);
  SetReadOnly(dxDBButtonEdit7,TRUE);
end;

procedure TfmARTrKonInvPelIDR.txtKonInvPelIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonInvPelIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID,TRUE);
  //SetReadOnly(dxDBGrid1ItemName,TRUE);
  //SetReadOnly(dxDBGrid1Qty,TRUE);
  //SetReadOnly(dxDBGrid1UOMID,TRUE);
  SetReadOnly(dxDBGrid1Column12,TRUE);
  //SetReadOnly(dxDBGrid1Column13,TRUE);
  SetReadOnly(dxDBGrid1Column14,TRUE);
  SetReadOnly(dxDBGrid1ValueTotal,TRUE);
  SetReadOnly(dxDBGrid1Column15,TRUE);
end;

procedure TfmARTrKonInvPelIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('Select Description FROM INMsNoUnit Where NOUnit='''+quDetilNoUnit.AsString+''' ');
    Open;
  End;
  quDetilLtypeunit.ASString := quAct.FieldByName('Description').AsString;

  quDetilCTotal.AsCurrency := ROUND((quDetilQty.AsCurrency-quDetilDiscItem.AsCurrency)*quDetilPrice.AsCurrency);

  quDetilATotal.AsCurrency := ROUND((quDetilQty.AsCurrency-quDetilDiscItem.AsCurrency)*quDetilPrice.AsCurrency*quMainRate.AsCurrency);
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := date;
  quMainCurrID.AsString      := 'IDR';
  quMainDiscount.AsCurrency  := 0;
  quMainDP.AsCurrency        := 0;
  quMainTransDate.FocusControl;
  quMainFgTax.AsString := 'Y';
  quMainFgPPH23.AsString := 'Y';
  quMainFgDN.AsString := 'T';
  quMainFgPerforma.AsString := 'R';
  quMainNilaiPPh.AsCurrency := 2;
  quMainRekeningU.AsString := sDGRPj;
  //if StLap='R' then
  //quMainRekeningK.AsString := sDRPj
  //else
  //if StLap='T' then
  //quMainRekeningK.AsString := sDRPjT
  //else
  //quMainRekeningK.AsString := sDRPjH;
  quMainRekeningD.AsString := ARDisc;
  quMainRekeningP.AsString := sCustC;
  quMainRekeningA.AsString := sDRARA;
  quMainRekeningO.AsString := sDRARO;
  quMainRekeningR.AsString := sDRARR;
  quMainRekeningPsd.ASString := sDGRBi;
  quMainRekJual.AsString := 'R01';
  quMainRekeningHPP.AsString := Hpp;
  quMainRate.AsCurrency := 1;
  quMainOngkir.AsCurrency := 0;
  quMainRePack.AsCurrency := 0;
  quMainBankID.AsString := StForm;
  quMainAdministrasi.AsCurrency := 0;
  if TRIM(quMainFgTax.AsString) = 'Y' then
    quMainJatuhTempo.AsInteger := 90
  else
    quMainJatuhTempo.AsInteger := 45;

  if StrToInt(FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime))>=20220401 then
  quMainNilaiTax.AsCurrency := 11
  else
  quMainNilaiTax.AsCurrency := 10;
end;

procedure TfmARTrKonInvPelIDR.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
  with quAct,SQL do
  begin
    Close; Clear;
    Add('SELECT ItemId FROM ARTrKonInvPeldt WHERE Koninvpelid='''+quMainKonInvPelID.AsString+''' ORDER BY ItemID DESC');
    Open;
    if IsEmpty then
      Result := 1
    else
      Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilKonTransBrgId.ASString := '-';
  quDetilItemID.AsString := INttoStr(GenerateNoUrut);
  quDetilQty.AsCurrency:=1;
  quDetilPrice.AsCurrency:=0;
  quDetilFgPPH23.AsString := 'Y';
  quDetilFgJasa.AsString := 'Y';
  quDetilUOMID.ASString := 'HM';
  quDetilNoUnit.FocusControl;
  quDetilfgtax.AsString := 'T';
end;

procedure TfmARTrKonInvPelIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Penjualan';
       SQLString := 'SELECT A.KonInvPelID as Nomor_Invoice,Convert(varchar(10),A.TransDate,103) as Tanggal,'
                   +'CASE WHEN A.FgPerforma=''R'' THEN ''RENTAL'' '
                   +'     WHEN A.FgPerforma=''H'' THEN ''HAULING ORE'' '
                   +'     WHEN A.FgPerforma=''T'' THEN ''MINING SERVICE'' '
                   +'     WHEN A.FgPerforma=''A'' THEN ''KONSUMSI'' '
                   +'     WHEN A.FgPerforma=''S'' THEN ''SOLAR'' '
                   +'     WHEN A.FgPerforma=''O'' THEN ''OVERTIME'' '
                   +'     WHEN A.FgPerforma=''M'' THEN ''MESS'' END as Jenis,'
                   +'B.CustName as Nama_Customer,CASE WHEN A.FgTax=''Y'' THEN ''PPN'' ELSE ''NON-PPN'' END as Status,'
                   +'A.CustID as Kode_Customer '
                   +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustID '
                   +'WHERE '+FSQLWhere
                   +' AND ISNULL(A.BankID,''RJS'')='''+StForm+''' '
                   +' ORDER BY A.Transdate';

       if ShowModal = MrOK then
       begin
         quMain.Locate('KonInvPelID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.txtDiskonChange(Sender: TObject);
begin
  inherited;
  {
  if txtDiskon.Text <> '' then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT SUM(Harga * Qty) - (Convert(Float, ' + txtDiskon.Text + ') / Convert(Float, 100) * SUM(Harga * Qty)) as Total FROM ARTrDPenjualan WHERE KonInvPelID=''' + quMainKonInvPelID.AsString + ''' GROUP BY KonInvPelID');
      Open;
    end;
    txtTotal.Caption := FormatCurr('Rp ,0.00;-Rp ,0.00', quAct.FieldByName('Total').AsFloat);
  end;
  }
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilLItemName.FocusControl;
  quDetilItemID.FocusControl;
  if StLap='P' then
  begin
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'select A.ItemID as kode_Barang,A.ItemName as Nama_Barang from INMsItem A '
                   +'ORDER BY A.ItemID';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[0];
          quDetilKonTransBrgID.Value := '-';
          //quDetilQty.AsString := Res[2];
       end;
    finally
       free;
    end;
  end else
  begin
    with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'select A.ItemID as Part_Number,A.ItemName as Nama_Barang,X.TypeUnit,A.NoUnit,'
                   //+'ISNULL((select SUM(F.Jumlah) from ARtrKonTransBrgDt F Inner join ARTrKonTransBrgHd G on F.KontransBrgId=G.Kontransbrgid '
                   //+'where G.soid=A.POID And F.ItemID=A.ItemID And F.NumAll=A.NumAll),0)-'
                   +'ISNULL(A.Jumlah,0)-'
                   +'ISNULL((select SUM(M.Qty) from ARTrKonInvPelDt M inner join ARTrKonInvPelHd N on M.KonInvPelID=N.KonInvPelID '
                   +' where N.SOID=A.POID And M.ItemID=A.ItemID And M.Jumlah=A.NumAll),0) as Jumlah,A.UOMID as Satuan,A.NumAll as IDTXN '
                   +'from ARTrPurchaseOrderDt A inner join inmsitem X on A.ItemID=X.ItemID '
                   +'WHERE A.POID='''+quMainSOID.AsString+''' AND A.NumAll NOT IN (Select ISNULL(B.Jumlah,0) FROM ArtrkoninvpelDt B inner join artrkoninvpelhd C '
                   +'on B.koninvpelId=C.koninvpelID Where C.SOID='''+quMainSOID.AsString+''') '
                   //+'AND A.ItemID IN (select F.ItemID from ARtrKonTransBrgDt F Inner join ARTrKonTransBrgHd G on F.KontransBrgId=G.Kontransbrgid where G.soid=A.POID) '
                   +'ORDER BY A.ItemID';
                   //showmessage(SQLString);
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[0];
          quDetilItemName.Value := Res[1];
          quDetilUOMID.Value := Res[5];
          quDetilNoUnit.AsString := Res[3];
          quDetilKonTransBrgID.Value := quMainSOID.AsString;
          quDetilQty.AsCurrency := StrtoCurr(Res[4]);
          quDetilPrice.AsCurrency := 0;
          quDetilDiscItem.AsCurrency := 0;
          quDetilJumlah.AsCurrency := StrtoCurr(Res[6]);
       end;
    finally
       free;
    end;
  end;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforePost(DataSet: TDataSet);
//var BottomPrice,UpPrice : currency;
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if (TRIM(quDetilNoUnit.AsString)='') AND (TRIM(quDetilItemName.AsString)='') then
  begin
     MsgInfo('Keterangan tidak boleh kosong !');
     quDetilItemName.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString) ='' then
  begin
     MsgInfo('Jumlah Tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  {if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;    }

  if TRIM(quDetilPrice.AsString) ='' then
  begin
     MsgInfo('Harga Tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  {if quDetilPrice.Value <=0 then
  begin
     MsgInfo('Harga Tidak boleh lebih kecil sama dengan 0');
     quDetilPrice.FocusControl;
     Abort;
  end;}

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrKonInvPelIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainLCurr.AsString := 'Rp';
  quMainCJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningK.AsString+''' ');
    Open;
  end;
  quMainLRekPenjualan.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningP.AsString+''' ');
    Open;
  end;
  quMainLRekPPN.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningD.AsString+''' ');
    Open;
  end;
  quMainLRekDisc.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningU.AsString+''' ');
    Open;
  end;
  quMainLRekPiutangDagang.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningHPP.AsString+''' ');
    Open;
  end;
  quMainLRekHPP.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningA.AsString+''' ');
    Open;
  end;
  quMainLAdmin.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningO.AsString+''' ');
    Open;
  end;
  quMainLOngkir.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningR.AsString+''' ');
    Open;
  end;
  quMainLRepak.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WarehouseName FROM INMsWarehouse WHERE WarehouseID='''+quMainWarehouseID.AsString+''' ');
    Open;
  end;
  quMainLWarehouse.AsString := quAct.FieldByName('WarehouseName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT DivisiName FROM INMsDivisi WHERE DivisiID='''+quMainDivisiID.AsString+''' ');
    Open;
  end;
  quMainLdivisi.AsString := quAct.FieldByName('DivisiName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT Bank+'' - ''+Rekening+'' - ''+Nama as Keterangan FROM SAMsRekJual WHERE RekJualID='''+quMainRekJual.AsString+''' ');
    Open;
  end;
  quMainLRekJual.AsString := quAct.FieldByName('Keterangan').AsString;

  if qumaincustid.AsString <> '' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT FgTERM FROM ARMsCustomer WHERE CUSTID='''+quMainCustID.AsString+''' ');
      Open;
    end;
    quMainLFgTerm.AsString := quAct.FieldByName('FgTerm').AsString;
  end else
  begin
    qumainLFgTerm.asString := '';
  end;

  if quMainFgTax.AsString = 'Y' then
  quMainLuPajak.AsString := 'Yes'
  else
  quMainLuPajak.AsString := 'No';

  with quAct,sql do
  begin
    Close;Clear;
    Add('SELECT A.POCust FROM ARTrPurchaseOrderHD A WHERE A.POID='''+qumainSOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount <> 0 then
    quMainPOCust.AsString := quAct.FieldByName('POCust').AsString
  else
    quMainPOCust.AsString := '-';

  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select SiteName From INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  End;
  quMainLsites.asString := quAct.FieldByName('SiteName').AsString ;

  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select NmJenis From ARMsJenisInvoice WHERE KdJenis='''+quMainFgPerforma.AsString+''' ');
    Open;
  End;
  quMainLperforma.asString := quAct.FieldByName('NmJenis').AsString ;

  //if quMainFgPerforma.ASString='R' then quMainLperforma.ASString := 'RENTAL';
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1KonsinyasiButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
        Title := 'Nota Konsinyasi';
       SQLString := ' SELECT Distinct A.KonTransBrgID as Nota_Konsinyasi_Penjualan' +
                    ' FROM ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B ON A.KonTransBrgId=B.KonTransBrgId' +
                    ' WHERE A.CustID = ''' + quMainCustID.Value + ''' And ItemId='''+quDetilItemID.Value+''' ' +
                    ' ORDER by A.KonTransBrgID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonTransBrgId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterPost(DataSet: TDataSet);
var i,Qty,Jum,Qtyy,Price : currency;
    PurchaseId : string;
begin
  inherited;
  quTotal.Requery();
  TTLKJ;

  with quAct,SQL do
   begin
     Close;Clear;
     Add('Select ISNULL(SUM(Qty),0) as Qty FROM ARTrKonInvPelCost WHERE KoninvPelid='''+quMainKonInvPelID.AsString+''' AND '
        +'Itemid='''+quDetilItemID.ASString+''' and NumAll='''+quDetilNumAll.AsString+''' ');
     Open;
   End;
   Qty := quAct.FieldByName('Qty').AsCurrency;
   Jum := quDetilQty.AsCurrency;
   i := 1;
   if quDetilQty.AsCurrency <> Qty then
   begin
     with quAct,SQL do
     begin
       Close;Clear;
       Add('delete FROM ARTrKonInvPelCost WHERE koninvpelid='''+quMainKonInvPelID.AsString+''' AND '
          +'Itemid='''+quDetilItemID.ASString+''' and NumAll='''+quDetilNumAll.AsString+''' ');
       ExecSQL;
     End;

     while (i = 1) do
     begin
       with quAct,SQL do
       begin
         Close;Clear;
         Add('Select TOP 1 K.* FROM ( '
            +'select A.VoucherNo,A.TransDate,A.ItemID,ISNULL(A.Qty-(Select ISNULL(SUM(B.Qty),0) FROM artrkoninvpelcost B '
            +'Where B.ItemID=A.ItemId AND B.NUmAll=A.SourceNo AND B.PurchaseID=A.VoucherNo),0) as Qty '
            +',(SELECT F.Price FROM ( '
            +'select X.KonsinyasiID,X.ItemID,Z.Price from APTrKonsinyasidt X '
            +'inner join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID  '
            +'inner join APTrPurchaseOrderDt Z on Y.POID=Z.POID and X.ItemID=Z.ItemID AND X.FgNum=Z.NumAll '
            +'UNION ALL '
            +'select X.TransID,X.ItemID,X.Price from INTrAdjustmentDt X ) as F '
            +'WHERE F.KonsinyasiID=A.VoucherNo AND F.Itemid=A.Itemid ) as price '
            +'from allitem A where A.FgTrans<50 and A.ItemID='''+quDetilItemID.ASString+''' AND A.SourceNo='''+quDetilNumAll.AsString+''' '
            +') as K WHERE K.Qty<>0 AND '
            +'CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' ');
          Open;
        End;
        Qtyy :=  quAct.FieldByName('Qty').AsCurrency;
        PurchaseId := quAct.FieldByName('VoucherNo').AsString;
        Price := quAct.FieldByName('price').AsCurrency;

        if (Qtyy <= Jum) AND (Qtyy <> 0) AND (Jum <> 0) then
        begin

          with quAct,SQL do
          begin
            Close;Clear;
            Add('Insert ARTrKonInvPelCost (KonInvPelid,KonTransBrgID,itemid,PurchaseID,Qty,Price,UpdDate,UpdUser,NumAll) '
               +'select '''+quMainKonInvPelID.AsString+''','''+quDetilKonTransBrgId.AsString+''','''+quDetilItemId.AsString+''','''+PurchaseId+''','''+CurrTostr(Qtyy)+''' '
               +','''+CurrtoStr(Price)+''',GetDate(),'''+dmMain.UserId+''','''+quDetilNumAll.AsString+''' ');
            ExecSQL;
          End;
          Jum := Jum - Qtyy;
          i := 1;
        end else
        begin
          if (jum<>0) then
          begin
            with quAct,SQL do
            begin
              Close;Clear;
              Add('Insert ARTrKonInvPelCost (KonInvPelid,KonTransBrgID,itemid,PurchaseID,Qty,Price,UpdDate,UpdUser,NumAll) '
                 +'select '''+quMainKonInvPelID.AsString+''','''+quDetilKonTransBrgId.AsString+''','''+quDetilItemId.AsString+''','''+PurchaseId+''','''+CurrTostr(Jum)+''' '
                 +','''+CurrtoStr(Price)+''',GetDate(),'''+dmMain.UserId+''','''+quDetilNumAll.AsString+''' ');
              ExecSQL;
            End;
          end;
          Jum := 0;
          i := 2;
        end;
     end;
   end;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
end;

procedure TfmARTrKonInvPelIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
{  with quAct,SQL do
  begin
    Close;Clear;
    Add('INSERT ARTrKonInvPelDt (KonInvPelID,KonTransBrgID,ItemID,Price,Qty,UpdUser,UpdDate,UOMID,ItemName) ');
    Add('SELECT '''+quMainKonInvPelID.AsString+''','''+quMainSOID.AsString+''',A.ItemID,A.Price,A.Qty,'''+dmMain.UserId+''',A.UpdDate,A.UOMID,A.ItemName '
       +'FROM ARtrpurchaseOrderdt A INNER JOIN ARtrpurchaseOrderhd B ON A.POID=B.POID '
       +'WHERE B.POID='''+quMainSOID.AsString+''' AND A.ItemID NOT IN (SELECT ItemID FROM ARTrKonInvPelDt '
       +'WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' AND KonTransBrgID='''+quMainSOID.AsString+''')'
       +'ORDER BY A.UpdDate');
    ExecSQL;
  end;
  quDetil.Requery();  }
  quTotal.Requery();
  TTLKJ;
  //quDetilPrice.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
  if quMain.IsEmpty then Abort;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
  
  if (dmMain.UserId <> quMainUpdUser.AsString) then
  begin
    if (FgEdit <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;
  end;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;

  if (dmMain.UserId <> quMainUpdUser.AsString) then
  begin
    if (FgDelete <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;
  end;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;

  if (dmMain.UserId <> quMainUpdUser.AsString) then
  begin
    if (FgDelete <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;
  end;

  with quCetak,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainKonInvPelID.ASString+''',''Delete'',''Hapus Sales Inv'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
  Status := 'Ubah';

  if (dmMain.UserId <> quMainUpdUser.AsString) then
  begin
    if (FgEdit <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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
  quMainNote.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.dxButton1Click(Sender: TObject);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;

  //ambil informasi rekening
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' Select bank,cabang,rekening,nama,(select phone from samscompany) as phone From SAMsRekJual Where RekJualID='''+quMainRekJual.ASString+''' ');
    Open;
  end;
  telpcomp := quAct.FieldByName('phone').AsString;
  bankrek := quAct.FieldByName('bank').AsString;
  rek := quAct.FieldByName('rekening').AsString;
  nmrek := quAct.FieldByName('nama').AsString;
  cabrek := quAct.FieldByName('cabang').AsString;

  if RadioGroup1.ItemIndex=0 then
  begin
    if quMainFgTax.AsString='Y' then
    CetakPPN
    else
    CetakNonPPN;
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    CetakPPN;
  end else
  begin
    CetakNonPPN;
  end;


end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Sales';
       SQLString := 'SELECT Salesname as Nama_Sales,SalesID as Kode_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0'
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSalesID.Value := Res[1];
       end;
    finally
       free;
    end;
   quMainCurrID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonInvPelIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonInvPelIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrKonInvPelIDR.quMainCustIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesID FROM ARTrKonTransBrgHd WHERE KonTransBrgID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  quMainSalesID.AsString := quAct.FieldByName('SalesID').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT term FROM ARMsCustomer WHERE CustID='''+quMainCUSTID.AsString+''' ');
    Open;
  end;
  quMainJatuhTempo.AsInteger := quAct.FieldByName('Term').AsInteger;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Data Peminjaman';
       SQLString := 'SELECT A.POID as No_Peminjaman,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal, '
                   +'A.WarehouseID as Company,A.CustID as Site,A.DivisiID as Divisi,A.SalesID as Request_By '
                   +'FROM ARTrPurchaseOrderHd A '
                   +'WHERE A.POID NOT IN (SELECT ISNULL(C.SOID,''-'') FROM ARTrKonInvPelHd C) '
                   +'ORDER BY A.transDate';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSOID.AsString := Res[0];
             quMainWarehouseID.AsString := Res[2];
             quMainCustID.AsString := Res[3];
             quMainDivisiID.AsString := Res[4];
             quMainSalesID.AsString := Res[5];
             quMainCurrID.AsString := 'IDR';
       end;
  finally
       free;
  end;
  quMainCustID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quMainSOIDChange(Sender: TField);
var FgTax,invoiceid : string;
    Disc,ongkir,administrasi,repack : Currency;
begin
  inherited;

  if StLap = 'R' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT A.FgTax,A.Discount,A.InvoiceID,A.Ongkir,A.Administrasi,A.Repacking FROM ArtrpurchaseOrderHd A WHERE POID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  Disc := quAct.FieldByName('Discount').AsCurrency;
  ongkir := quAct.FieldByName('Ongkir').AsCurrency;
  administrasi := quAct.FieldByName('Administrasi').AsCurrency;
  repack := quAct.FieldByName('Repacking').AsCurrency;
  fgtax := quAct.FieldByName('FgTax').AsString;
  invoiceid := quAct.FieldByName('InvoiceId').AsString;
  quMainFgTax.AsString := fgtax;
  quMainDiscount.AsCurrency := Disc;
  quMainKonInvPelID.AsString := invoiceid;
  quMainOngkir.AsCurrency := ongkir;
  quMainAdministrasi.AsCurrency := administrasi;
  quMainRePack.AsCurrency := repack;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton4Click(Sender: TObject);
var KeyField : string;
begin
  inherited;
  if quMain.IsEmpty then Abort;
  with TfmARSN.Create (Application) do
  try
    Voucher := Self.quMainKonInvPelID.AsString;
    Tanggal := FormatDateTime('yyyyMM',quMainTransDate.AsDateTime)+'01';
    sampai  := FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime);
    Flag := 'INV';
    if ShowModal = MrOk then
      KeyField := cbNomer.Text;
  finally
    Self.quMain.Requery();
    quMain.Locate('KonInvPelID',KeyField,[]);
    Free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton5Click(Sender: TObject);
begin
  inherited;
  with TfmRptMultiCetak.Create (Application) do
    try
       FlagKKBB := 'INV';
       ShowModal;
  finally
    Free;
  end;

end;

procedure TfmARTrKonInvPelIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
   with TfmARQrRptAmplop.Create(Self) do
   try
     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT CustName,Address FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
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

procedure TfmARTrKonInvPelIDR.quDetilFgTaxChange(Sender: TField);
begin
  inherited;
{  if qudetilfgtax.asString = 'Y' then
  quDetilPrice.asCurrency := qudetilPrice.asCurrency / 1.1 ;        }
end;

procedure TfmARTrKonInvPelIDR.quDetilPriceChange(Sender: TField);
begin
  inherited;
//  qudetilfgtax.asString := 'T';
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1UOMIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT K.UOMID FROM ('
                   +'SELECT ItemID,UOMID From InMsItem UNION ALL SELECT ItemId,UOMID2 FROM InMsItem ) as K '
                   +'WHERE K.ItemID='''+qudetilItemID.AsString+''' order by K.UOMID ';
       if ShowModal = MrOk then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             qudetilUOMID.Value := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmARTrKonInvPelIDR.CheckBox3Click(Sender: TObject);
begin
  inherited;
  if CheckBox3.Checked then
  begin
    CheckBox1.Checked := FALSE;
    CheckBox2.Checked := FALSE;
  end;

end;

procedure TfmARTrKonInvPelIDR.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    CheckBox3.Checked := FALSE;
    CheckBox2.Checked := FALSE;
  end;
end;

procedure TfmARTrKonInvPelIDR.CheckBox2Click(Sender: TObject);
begin
  inherited;
  if CheckBox2.Checked then
  begin
    CheckBox3.Checked := FALSE;
    CheckBox1.Checked := FALSE;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton6Click(Sender: TObject);
begin
  inherited;
  With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PENJUALAN';
      qlbTTerBayar.Caption := 'Pelanggan';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainKonInvPelID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainCustName.AsString;
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+' #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Kepada ';
      if quTotalTotal.AsCurrency >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, quTotalTotal.AsCurrency)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(quTotalTotal.AsCurrency)) + ')';
      With qu001,SQL do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,L.RekeningName+'' Atas Invoice ''+K.KonInvPelID as Note,K.Jenis FROM ('
           +'SELECT KonInvPelID,RekeningU as RekeningID,ISNULL(TTLKj,0) as Amount,''D'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningD,ISNULL((STKJ*Discount*0.01),0) as Amount,''D'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningPsd,ISNULL(Modal,0) as Amount,''K'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningHpp,ISNULL(Modal,0) as Amount,''D'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningO,ISNULL(Ongkir,0) as Amount,''K'' as Jenis,2 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningA,ISNULL(Administrasi,0) as Amount,''K'' as Jenis,2 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningR,ISNULL(Repack,0) as Amount,''K'' as Jenis,2 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningP,ISNULL(PPN,0),''K'',2  FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningK,ISNULL(StKj,0),''K'',2 FROM ARTrKonInvPelHd) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE K.KonInvPelID='''+quMainKonInvPelID.AsString+''' '
           +'ORDER BY K.Urut,K.RekeningID');
        Open;
      End;
      MyReport.Previewmodal
    Finally
      Free;
    End;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningK.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningP.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningD.Value := Res[1];
           quMainRekeningU.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningU.Value := Res[1];
           quMainRekeningD.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningO.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningR.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningA.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningHPP.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonInvPelIDR.quMainCurrIDChange(Sender: TField);
begin
  inherited;
  if quMainCurrID.AsString='IDR' then
  begin
    dxDBGrid1ValueTotal.Caption := 'Total';
    dxDBGrid1Column15.Visible := False;
  end else
  begin
    dxDBGrid1ValueTotal.Caption := 'Total '+quMainCurrID.ASString;
    dxDBGrid1Column15.Visible := TRUE;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit14ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := ' SELECT RekJualID as ID, Rekening, Bank, Cabang, Nama '
                   +' FROM SAMsRekJual WHERE FgActive=''Y'' '
                   +' ORDER BY RekJualID';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekJual.ASString := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1Column13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pilih Nomor Unit';
    SQLString := 'SELECT NoUnit, Description FROM INMsNoUnit WHERE ISNULL(FgActive,''Y'')=''Y'' ORDER BY NoUnit';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilNoUnit.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit15ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Site';
     SQLString := 'select SiteID,SiteName from INMsSites Order by SiteName ';
     if ShowModal = MrOK then
     begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainsiteid.AsString := Res[0];
     end;
  finally
     Free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit16ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Jenis Invoice';
       SQLString := 'Select KdJenis as Kode,NmJenis as Keterangan,A.RekeningID as Kode_Ledger,B.RekeningName as Nama_Ledger '
               +' FROM ARMsJenisInvoice A inner join CFMsRekening B on A.RekeningID=B.RekeningID '
               +' ORDER BY KdJenis';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainFgPerforma.Value := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmARTrKonInvPelIDR.quMainFgPerformaChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select RekeningID from armsjenisinvoice where kdjenis='''+quMainFgPerforma.AsString+''' ');
    Open;
  end;
  quMainRekeningK.AsString := quAct.FieldByName('RekeningID').AsString;
end;

end.
