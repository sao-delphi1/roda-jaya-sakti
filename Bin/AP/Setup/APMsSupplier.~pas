unit APMsSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPMsSupplier = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListKdSupplier: TdxDBGridColumn;
    dbgListNmSupplier: TdxDBGridColumn;
    dbgListContactPerson: TdxDBGridColumn;
    dbgListPhone: TdxDBGridColumn;
    dbgListAlamat: TdxDBGridColumn;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    dbgListNote: TdxDBGridColumn;
    quCek: TADOQuery;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label29: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    Label30: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText6: TDBText;
    quMainLRekeningName: TStringField;
    dxDBEdit11: TdxDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    dxDBEdit12: TdxDBEdit;
    quMainSuppID: TStringField;
    quMainSuppName: TStringField;
    quMainAddress: TStringField;
    quMainCity: TStringField;
    quMainContactPerson: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainNPWP: TStringField;
    quMainPKP: TStringField;
    quMainFgSupplier: TStringField;
    quMainNegara: TStringField;
    quMainRekeningID: TStringField;
    quMainTelp1: TStringField;
    quMainTelp2: TStringField;
    Pricelist: TdxTabSheet;
    ts03: TdxTabSheet;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton1: TdxButton;
    dbgHarga: TdxDBGrid;
    dbgHargaSuppID: TdxDBGridMaskColumn;
    dbgHargaItemID: TdxDBGridButtonColumn;
    dbgHargaLItemName: TdxDBGridColumn;
    dbgHargaPriceK: TdxDBGridColumn;
    dbgHargaUpdDate: TdxDBGridDateColumn;
    dbgHargaPriceB: TdxDBGridColumn;
    dbgHargaUpdUser: TdxDBGridMaskColumn;
    quDetilSuppID: TStringField;
    quDetilItemID: TStringField;
    quDetilPriceB: TBCDField;
    quDetilPriceK: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilTypeUnit: TStringField;
    dbgHargaColumn8: TdxDBGridColumn;
    quDetilLItemName: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridButtonColumn1: TdxDBGridButtonColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    quMainTerm: TIntegerField;
    Label9: TLabel;
    dxDBImageEdit2: TdxDBImageEdit;
    dxButton7: TdxButton;
    quMainbankname: TStringField;
    quMainnorek: TStringField;
    quMainatasnama: TStringField;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    quMainnokontrak: TStringField;
    Label19: TLabel;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    quMainFgCompany: TStringField;
    quMainFgNPWP: TStringField;
    dbgListColumn7: TdxDBGridColumn;
    dbgListColumn8: TdxDBGridColumn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    Panel1: TPanel;
    bbExcel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure ActDeleteExecute(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgHargaItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dsDetilDataChange(Sender: TObject; Field: TField);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallAnotherForm : Boolean;
    TempSupp : string;
  end;

var
  fmAPMsSupplier: TfmAPMsSupplier;

implementation

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, Search, MyUnit, ApRptSupplier, UnitDate;

{$R *.dfm}
Procedure TfmAPMsSupplier.Status;
Begin
  with quAct,sql do
  Begin
    Close;Clear;
    Add('SELECT SuppId FROM APTrKonsinyasiHd WHERE SuppId='''+quMainSuppID.AsString+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Supplier sudah di pakai');
       Abort;
    End;
 End;
End;
procedure TfmAPMsSupplier.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
end;

procedure TfmAPMsSupplier.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  ts01.TabVisible := True;
  ts03.TabVisible := False;

  bbExcel.Top := 14;
  bbExcel.Left := 32;
end;

procedure TfmAPMsSupplier.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);

end;

procedure TfmAPMsSupplier.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPMsSupplier.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;

 { if Trim(quMainSuppID.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  end;     }

 { if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('SELECT SuppId FROM APMsSupplier Where SuppId='''+quMainSuppID.AsString+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Supplier sudah dipakai Kode Supplier lain');
        quMainSuppID.FocusControl;
        Abort;
      End;
    End;
  End;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('SELECT Top 1 RekeningId FROM CfMsRekening Where RekeningId='''+quMainRekeningID.AsString+''' ');
      Open;
      If IsEmpty then
      Begin
        MsgInfo('Kode Rekening Tidak Ada Dalam Master Rekening');
        quMainRekeningId.FocusControl;
        Abort;
      End;
    End;
  End;       }

  If Trim(quMainSuppName.Value)='' then
  begin
    MsgInfo('Nama Supplier tidak boleh kosong');
    quMainSuppName.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  begin
    ST := 'S';
    quMainSuppID.AsString := ST+ FormatFloat('0000', RunNumberGL(quAct, 'APMsSupplier','SuppID',ST,'0') + 1);
  end;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmAPMsSupplier.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Supplier';
         SQLString := 'SELECT SuppId as Kode_Supplier,SuppName as Nama_Supplier,Address as Alamat,'
                     +'City as Kota,Phone as Telepon,ContactPerson as Kontak_Person,'
                     +'CASE WHEN FgSupplier=''D'' THEN ''Dalam Negri'' ELSE ''Luar Negri'' END as Jenis_Supplier,'
                     +'Fax,Email,NPWP,PKP FROM APMsSupplier WHERE SuppID <> ''N/A'' ORDER BY SuppName';
         if ShowModal = MrOk then
         begin
            qumain.Locate('SuppId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmAPMsSupplier.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
//  quMainSuppID.FocusControl;
  quMainFgSupplier.AsString := 'D';
  quMainFgCompany.AsString := 'P';
  quMainFgNPWP.AsString := 'Y';
  quMainTerm.AsInteger := 30;
  quMainRekeningID.asString := sDRPb;
end;

procedure TfmAPMsSupplier.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmAPMsSupplier.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening Supplier';
       SQLString := 'SELECT RekeningID, RekeningName, GroupRekID FROM CFMsRekening';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainRekeningID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPMsSupplier.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  if quMainRekeningID.asString = '' then
  begin
        quMainLRekeningName.AsString := 'Rekening Belum Dipilih';
        DBText6.Font.Color := clRed;
  end else
  begin
  With quAct,Sql do
    Begin
      Close;Clear;
      add('SELECT RekeningName FROM CFMsRekening Where RekeningId='''+quMainRekeningID.AsString+''' ');
      Open;
    End;
    quMainLRekeningName.AsString := quAct.FieldByName('RekeningName').asString;
  End;
end;

procedure TfmAPMsSupplier.dbgHargaItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Permintaan Barang';
    SQLString := 'SELECT ItemID as PartNumber,ItemName as Nama_Barang,TypeUnit FROM INMsItem '
                +'WHERE FgActive=''Y'' AND ItemID NOT IN (SELECT ItemID FROM APMsSupplierPrice WHERE SuppID='''+quMainSuppID.AsString+''') ORDER BY ItemID';
    if ShowModal = MrOK then
    begin
      if quDetil.State = dsBrowse then quDetil.Edit;
      quDetilItemID.Value   := Res[0];
      quDetilTypeUnit.Value   := Res[2];
    end;
  finally
    free;
  end;
end;

procedure TfmAPMsSupplier.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilLItemName.AsString := quAct.FieldByName('ItemName').AsString;
end;

procedure TfmAPMsSupplier.dsDetilDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SetReadOnly(dbgHargaItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgHargaLItemName,TRUE);
  SetReadOnly(dbgHargaColumn8,TRUE);
end;

procedure TfmAPMsSupplier.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilItemID.FocusControl;
  quDetilPriceB.AsCurrency := 0;
  quDetilPriceK.AsCurrency := 0;
end;

procedure TfmAPMsSupplier.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.AsString) = '' then
  begin
    pesan('Field Kode Barang tidak boleh kosong');
    quDetilItemID.FocusControl;
    Abort;
  end;
  if TRIM(quDetilLItemName.AsString) = '' then
  begin
    pesan('Nama Barang tidak terdaftar dalam Master Bahan Baku');
    quDetilItemID.FocusControl;
    Abort;
  end;
  if TRIM(quDetilPriceK.AsVariant) = '' then quDetilPriceK.AsCurrency := 0;
  if TRIM(quDetilPriceB.AsVariant) = '' then quDetilPriceB.AsCurrency := 0;

  if quDetilPriceK.AsCurrency <= 0 then
  begin
    pesan('Field Harga Kecil harus lebih besar dari 0 (NOL)');
    quDetilPriceK.FocusControl;
    Abort;
  end;
  if quDetilPriceB.AsCurrency <= 0 then
  begin
    pesan('Field Harga Besar harus lebih besar dari 0 (NOL)');
    quDetilPriceB.FocusControl;
    Abort;
  end;
  if quDetil.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROM APMsSupplierPrice WHERE SuppID='''+quMainSuppID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        pesan('Kode Barang sudah ada dalam list');
        quDetilItemID.FocusControl;
        Abort;
      end;
    end;
  end;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmAPMsSupplier.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quact,SQL do
  Begin
    Close;Clear;
    Add('select distinct top 1 Suppid from APTrPurchaseOrderHD where SuppID='''+quMainSuppID.AsString+''' ');
    Open;
  End;
  if quAct.RecordCount = 1 then
  begin
    MsgInfo('Kode SuppID sudah dipakai tidak bisa dihapus');
    Abort;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainSuppID.ASString+''',''Delete'',''Hapus Supplier'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

procedure TfmAPMsSupplier.dxButton2Click(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmAPMsSupplier.dxButton5Click(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPMsSupplier.dxButton3Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then
  begin
    ShowMessage('Data sudah kosong');
    Abort;
  end;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPMsSupplier.dxButton4Click(Sender: TObject);
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

procedure TfmAPMsSupplier.dxButton6Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Barang';
         SQLString := 'SELECT B.ItemName as Nama_Barang,B.UOMID as Sat_Besar,B.UOMID2 as Sat_Kecil,ISNULL(B.Konversi,0) as Konversi,'
                     +'ISNULL(A.PriceB,0) as Harga_Sat_Besar,ISNULL(A.PriceK,0) as Harga_Sat_Kecil,C.ProductDesc as Product_Barang,'
                     +'D.GroupDesc as Group_Barang,A.ItemID as Kode_Barang FROM APMsSupplierPrice A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                     +'INNER JOIN INMsProduct C ON B.ProductID=C.ProductID INNER JOIN INMsGroup D ON B.GroupID=D.GroupID '
                     +'WHERE A.SuppID='''+quMainSuppID.AsString+''' ORDER BY B.ItemName ';
         if ShowModal = MrOk then
         begin
            quDetil.Locate('ItemID',Res[8],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmAPMsSupplier.dxButton7Click(Sender: TObject);
begin
  inherited;
  with TfmAPRptSupplier.Create(Self) do
   try
     qrlTitle.Caption := 'DATA SUPPLIER';
     qrlabel38.Caption := 'Makassar, ' + FormatDateTime('d MMMM yyyy',Date) ;

     with qu001,SQL do
     Begin
       Close;Clear;
       add(' Select ''A'' as Kode ');
       Open;
     End;

     with qu002,SQL do
     Begin
       Close;Clear;
       add(' Select K.* FROM ( '
          +' SELECT ''A'' as Kode,SuppID,SuppName,Address,ContactPerson,Phone,Email,Note,'
          +' NPWP,Telp1,Term,BankName,Norek,AtasNama,NoKontrak, '
          +'          CASE WHEN Term=''0'' THEN ''CASH/COD'' '
          +'               WHEN Term=''1'' THEN ''1 Minggu'' '
          +'               WHEN Term=''2'' THEN ''1 Bulan'' '
          +'               WHEN Term=''3'' THEN ''2 Bulan'' '
          +'               WHEN Term=''4'' THEN ''3 Bulan'' '
          +'               WHEN Term=''5'' THEN ''4 Bulan'' '
          +'               WHEN Term=''6'' THEN ''5 Bulan'' '
          +'               WHEN Term=''7'' THEN ''6 Bulan'' '
          +'               WHEN Term=''8'' THEN ''7 Bulan'' '
          +'               WHEN Term=''9'' THEN ''8 Bulan'' '
          +'               WHEN Term=''10'' THEN ''9 Bulan'' '
          +'               WHEN Term=''11'' THEN ''10 Bulan'' '
          +'               WHEN Term=''12'' THEN ''11 Bulan'' '
          +'               WHEN Term=''13'' THEN ''1 Tahun'' END as Termin '
          +' FROM APMsSupplier Where SuppID='''+quMainSuppID.ASString+''' ) as K Where Kode=:Kode ');
          Parameters.ParamByName('kode').DataType := ftString;
       Open;
     End;

     MyReport.PreviewModal;

   finally
      free;
   end;
end;

procedure TfmAPMsSupplier.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dbgList.SaveToXLS(saveDlg.FileName, true)
      else
        dbgList.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

end.
