unit INRptUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmRptUnit = class(TfmRptDlg)
    dbgItem: TdxDBGrid;
    dxDBGridItemID: TdxDBGridColumn;
    dxDBGridItemName: TdxDBGridColumn;
    bbCari: TdxButton;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    quActNoUnit: TStringField;
    quActDescription: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    quActFgGroup: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    quSite: TADOQuery;
    dsSite: TDataSource;
    dxButton1: TdxButton;
    quSiteWarehouseID: TStringField;
    quSiteWarehouseName: TStringField;
    quSiteAddress: TStringField;
    quSiteCity: TStringField;
    quSiteContactPerson: TStringField;
    quSitePhone: TStringField;
    quSiteFax: TStringField;
    quSiteUpdDate: TDateTimeField;
    quSiteUpdUser: TStringField;
    quSitelogo: TBlobField;
    quSiteFgOtoJkt: TStringField;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    CheckBox7: TCheckBox;
    RadioGroup1: TRadioGroup;
    CheckBox8: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure bbCariClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptUnit: TfmRptUnit;

implementation

{$R *.dfm}
uses UnitDate, QRRptUnit, RptLv0, Search,UnitGeneral,INRptUnitTgl, MyUnit, DateUtils;

procedure TfmRptUnit.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := Date;
  
  QuAct.Open;
  quSite.Open;
end;

procedure TfmRptUnit.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgItem.FocusedNode <> nil then
       dbgItem.FocusedNode.Selected := True;
  end;
end;

procedure TfmRptUnit.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgItem.FocusedNode <> nil then
       dbgItem.FocusedNode.Selected := True;
  end;
end;

procedure TfmRptUnit.bbCariClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari No Unit';
       SQLString := ' SELECT NoUnit,Description From INMsNoUnit';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('NoUnit',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmRptUnit.bbPreviewClick(Sender: TObject);
var FlagIN,combobox : string;
begin
  inherited;

  if CheckBox4.Checked then
  begin

  FlagIN := '''ASDJKL''';
  if checkbox1.Checked then
  FlagIN := FlagIN + ',''PG''';
  if checkbox2.Checked then
  FlagIN := FlagIN + ',''TB''';
  if checkbox5.Checked then
  FlagIN := FlagIN + ',''PO''';
  if checkbox6.Checked then
  FlagIN := FlagIN + ',''KAN''';
  if checkbox3.Checked then
  FlagIN := FlagIN + ',''TS'',''PS''';

  with TfmINRptUnitTgl.Create(Self) do
   try
     qrlTitle.Caption := 'Laporan Pengeluaran Per Unit';

     if KdCab<>'HO' then
     begin
       QRLaBel31.Enabled := False;
       QRLaBel32.Enabled := False;
       QRLaBel33.Enabled := False;
       QRDBText2.Enabled := False;
       QRLaBel35.Enabled := False;
       GroupFooterBand1.Enabled := False;
       QRDbText2.Enabled := False;
     end;


     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT DISTINCT K.Tgl,Transdate as Tanggal,CONVERT(VARCHAR(10),K.Transdate,112) as Transdatee FROM ( '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal as KM,B.WArehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal,B.WArehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'CASE WHEN A.FgStatus=''K'' THEN ''Pasang'' WHEN A.FgStatus=''L'' THEN ''Spare'' END as Status, '
          +'A.Alasan as Note,A.Statusban+'' (''+A.nomorban+'')'',A.KMawal,B.WArehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'',''T'',''S'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
          +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
          +''''', '
          +'A.KMawal,B.WArehouseID '
          +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
          +'UNION ALL '
          +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
          +'A.Qty,C.UOMID2,''Kanibal Unit'','''','''',B.KM,B.WarehouseID '
          +'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
          +'inner join INMsItem C on A.ItemID=C.ItemID '
          +') as K LEFT JOIN INMsNoUnit L on K.NoUnit=L.NoUnit '
          +'WHERE K.FlagIN IN ('+FlagIN+') AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
       if TRIM(KodeDari.Text)<>'' then
       Add('AND L.GroupID IN ('''+KodeDari.Text+''') ');
       //pg sparepart,ts solar,ps pakai solar,tb terima ban
       if rbSelect.Checked then
       Add(' AND K.NoUnit IN '+SelGrid(quAct,dbgItem,'NoUnit'));
       if RadioButton2.Checked then
       Add(' AND K.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
       //showmessage(sql.text);
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
     End;

     with qu002,SQL do
     Begin
       Close;Clear;
       add('SELECT DISTINCT K.NoUnit,convert(varchar(10),Transdate,112) as Transdatee FROM ( '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal as KM,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'CASE WHEN A.FgStatus=''K'' THEN ''Pasang'' WHEN A.FgStatus=''L'' THEN ''Spare'' END as Status, '
          +'A.Alasan as Note,A.Statusban+'' (''+A.nomorban+'')'',A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'',''T'',''S'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
          +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
          +''''', '
          +'A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
          +'UNION ALL '
          +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
          +'A.Qty,C.UOMID2,''Kanibal Unit'','''','''',B.KM,B.WarehouseID '
          +'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
          +'inner join INMsItem C on A.ItemID=C.ItemID '
          +') as K LEFT JOIN INMsNoUnit L on K.NoUnit=L.NoUnit '
          +'WHERE K.FlagIN IN ('+FlagIN+') AND K.Transdate=:Transdatee ');
       if TRIM(KodeDari.Text)<>'' then
       Add('AND L.GroupID IN ('''+KodeDari.Text+''') ');
       //pg sparepart,ts solar,ps pakai solar,tb terima ban
       if rbSelect.Checked then
       Add(' AND K.NoUnit IN '+SelGrid(quAct,dbgItem,'NoUnit'));
       if RadioButton2.Checked then
       Add(' AND K.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
       Parameters.ParamByName('Transdatee').DataType := ftString;
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
     End;

     with qu003,SQL do
     Begin
       Close;Clear;
       add('SELECT K.*,');
       if RadioGroup1.ItemIndex=0 then
       begin
       add('ISNULL(ISNULL((select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
          +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate AND B.SiteID=L.City ORDER BY B.Transdate DESC,A.Price DESC),'
          +'(select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
          +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate ORDER BY B.Transdate DESC,A.Price DESC)),');
       if CheckBox8.Checked then
       add('K.UserPrice) as Price,')
       else
       add('0) as Price,');
       end;
       if RadioGroup1.ItemIndex=1 then
       add('ISNULL(K.UserPrice,0) as Price,');
       if RadioGroup1.ItemIndex=2 then
       add('ISNULL(K.DealerPrice,0) as Price,');
       add('K.WarehouseID as Lokasi FROM ( '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty as Jumlah,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.nomorban,A.KMawal as KM,C.UserPrice,B.WarehouseID,C.DealerPrice,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,'
          +'CASE WHEN A.keperluan=''H'' THEN ''Hauling'' '
          +'     WHEN A.keperluan=''P'' THEN ''Produksi'' '
          +'     WHEN A.keperluan=''J'' THEN ''Jetty'' '
          +'     WHEN A.keperluan=''B'' THEN ''Alat Bantu'' '
          +'     WHEN A.keperluan=''R'' THEN ''Alat Rental'' '
          +'     WHEN A.keperluan=''M'' THEN ''Peminjaman'' ELSE ''Operasional'' END as Keperluan,A.nomorban,A.KMAwal,C.UserPrice,B.WarehouseID,C.DealerPrice,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'CASE WHEN A.FgStatus=''L'' THEN ''Spare'' WHEN A.FgStatus=''K'' THEN ''Pasang'' END as Status,A.Alasan as Note, '
          +'(CASE WHEN A.statusban=''BR'' THEN ''Baru'' ELSE ''Bekas'' END),A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'',''T'',''S'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
          +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
          +''''', '
          +'A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,C.Layout '
          +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
          +'UNION ALL '
          +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
          +'A.Qty,C.UOMID2,''Kanibal Unit dari ''+B.NoUnitSrc,'''','''','''',B.KM,C.UserPrice,B.WarehouseID,C.DealerPrice,C.Layout '
          +'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
          +'inner join INMsItem C on A.ItemID=C.ItemID '
          +') as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID LEFT JOIN INMsNoUnit M on K.NoUnit=M.NoUnit '
          +'WHERE K.FlagIN IN ('+FlagIN+') AND CONVERT(VARCHAR(8),K.Transdate,112) =:Transdatee '
          +'AND K.NoUnit=:NoUnit ');
       if TRIM(KodeDari.Text)<>'' then
       Add('AND M.GroupID IN ('''+KodeDari.Text+''') ');
       if RadioButton2.Checked then
       Add(' AND K.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
       Add(' order BY K.Transdate ');
       Parameters.ParamByName('NoUnit').DataType := ftString;
       Parameters.ParamByName('Transdatee').DataType := ftString;
       //showmessage(sql.text);
       Open;
     End;

     if Sender=bbPrint then
       MyReport.Print
     else
       MyReport.PreviewModal;

    finally
      free;
   end;

   end else
   begin

   FlagIN := '''ASDJKL''';
  if checkbox1.Checked then
  FlagIN := FlagIN + ',''PG''';
  if checkbox2.Checked then
  FlagIN := FlagIN + ',''TB''';
  if checkbox5.Checked then
  FlagIN := FlagIN + ',''PO''';
  if checkbox6.Checked then
  FlagIN := FlagIN + ',''KAN''';
  if checkbox3.Checked then
  FlagIN := FlagIN + ',''TS'',''PS''';

  with TfmQRRptUnit.Create(Self) do
   try
     qrlTitle.Caption := 'Laporan Pemakaian Per Unit';
     qrlPeriode.Caption := 'Periode : '+FormatDatetime('d/M/yyyy',dt1.Date)+' s/d '+FormatDatetime('d/M/yyyy',dt2.date);

     if KdCab<>'HO' then
     begin
       QRLaBel31.Enabled := False;
       QRLaBel32.Enabled := False;
       QRLaBel33.Enabled := False;
       QRDBText2.Enabled := False;
       QRLaBel15.Enabled := False;
       GroupFooterBand1.Enabled := False;
       //QRDbText14.Enabled := False;
     end;

     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT DISTINCT K.NoUnit FROM ( '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal as KM,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'CASE WHEN A.FgStatus=''L'' THEN ''Spare'' WHEN A.FgStatus=''K'' THEN ''Pasang'' END as Status,A.Alasan as Note,'
          +'A.Statusban+'' (''+A.nomorban+'')'',A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'',''T'',''S'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
          +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
          +''''', '
          +'A.KMawal,B.WarehouseID '
          +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') UNION ALL '
          +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
          +'A.Qty,C.UOMID2,''Kanibal Unit'','''','''',B.KM,B.WarehouseID '
          +'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
          +'inner join INMsItem C on A.ItemID=C.ItemID '
          +') as K LEFT JOIN INMsNoUnit L on K.NoUnit=L.NoUnit '
          +'WHERE K.FlagIN IN ('+FlagIN+') AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
       if TRIM(KodeDari.Text)<>'' then
       Add('AND L.GroupID IN ('''+KodeDari.Text+''') ');
       if rbSelect.Checked then
       Add(' AND K.NoUnit IN '+SelGrid(quAct,dbgItem,'NoUnit'));
       if RadioButton2.Checked then
       Add(' AND K.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
       //pg sparepart,ts solar,ps pakai solar,tb terima ban
       if rbSelect.Checked then
       Add(' AND K.NoUnit IN '+SelGrid(quAct,dbgItem,'NoUnit'));
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
     End;

     with qu002,SQL do
     Begin
       Close;Clear;
       add('SELECT K.*,');
     {  if RadioGroup1.ItemIndex=0 then
       begin
       add('ISNULL((select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
          +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate AND B.SiteID=L.City ORDER BY B.Transdate DESC,');
       if CheckBox8.Checked then
       add('A.Price DESC),K.UserPrice) as Price,')
       else
       add('A.Price DESC),0) as Price,');
       end;  }
       if RadioGroup1.ItemIndex=0 then
       begin
       add('ISNULL(ISNULL((select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
          +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate AND B.SiteID=L.City ORDER BY B.Transdate DESC,A.Price DESC),'
          +'(select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
          +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate ORDER BY B.Transdate DESC,A.Price DESC)),');
       if CheckBox8.Checked then
       add('K.UserPrice) as Price,')
       else
       add('0) as Price,');
       end;
       if RadioGroup1.ItemIndex=1 then
       add('ISNULL(K.UserPrice,0) as Price,');
       if RadioGroup1.ItemIndex=2 then
       add('ISNULL(K.DealerPrice,0) as Price,');
       add('K.WarehouseID as Lokasi FROM ( '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty as Jumlah,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.nomorban,A.KMawal as KM,C.UserPrice,B.WarehouseID,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'''Pakai'' as Status,A.Alasan as Note,'
          +'CASE WHEN A.keperluan=''H'' THEN ''Hauling'' '
          +'     WHEN A.keperluan=''P'' THEN ''Produksi'' '
          +'     WHEN A.keperluan=''J'' THEN ''Jetty'' '
          +'     WHEN A.keperluan=''B'' THEN ''Alat Bantu'' '
          +'     WHEN A.keperluan=''R'' THEN ''Alat Rental'' '
          +'     WHEN A.keperluan=''M'' THEN ''Peminjaman'' ELSE ''Operasional'' END as Keperluan,A.nomorban,A.KMAwal,C.UserPrice,B.WarehouseID,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
          +'CASE WHEN A.FgStatus=''L'' THEN ''Spare'' WHEN A.FgStatus=''K'' THEN ''Pasang'' END as Status,A.Alasan as Note, '
          +'(CASE WHEN A.statusban=''BR'' THEN ''Baru'' ELSE ''Bekas'' END),A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId '
          +'Where A.FgStatus IN (''K'',''T'',''S'') '
          +'UNION ALL '
          +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
          +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
          +''''', '
          +'A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.Layout '
          +'from INTrAdjustmentDt A '
          +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
          +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
          +'UNION ALL '
          +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
          +'A.Qty,C.UOMID2,''Kanibal Unit dari ''+B.NoUnitSrc,'''','''','''',B.KM,C.UserPrice,B.WarehouseID,C.Layout '
          +'from INTrKanibalDt A '
          +'inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
          +'inner join INMsItem C on A.ItemID=C.ItemID '
          +') as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID LEFT JOIN INMsNoUnit M on K.NoUnit=M.NoUnit '
          +'WHERE K.FlagIN IN ('+FlagIN+') AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
          +'AND K.NoUnit=:NoUnit ');
       if TRIM(KodeDari.Text)<>'' then
       Add('AND M.GroupID IN ('''+KodeDari.Text+''') ');
       if RadioButton2.Checked then
       Add(' AND K.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
       Add(' order BY K.Transdate ');
       Parameters.ParamByName('NoUnit').DataType := ftString;
       //showmessage(sql.text);
       Open;
     End;

     if Sender=bbPrint then
       MyReport.Print
     else
       MyReport.PreviewModal;

    finally
      free;
   end;

   end;
end;

procedure TfmRptUnit.dxButton1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Gudang';
       SQLString := ' SELECT WarehouseID as Kode_Gudang,WareHouseName as Nama_Gudang From INMsWarehouse';
       if ShowModal = MrOK then
       begin
         Self.quSite.Locate('WarehouseID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmRptUnit.RadioButton1Click(Sender: TObject);
begin
  inherited;
  if Sender=RadioButton1 then
  begin
     dxDBGrid1.OptionsBehavior := dxDBGrid1.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=RadioButton2 then
  begin
     dxDBGrid1.OptionsBehavior := dxDBGrid1.OptionsBehavior + [edgoMultiSelect];
     if dxDBGrid1.FocusedNode <> nil then
       dxDBGrid1.FocusedNode.Selected := True;
  end;
end;

procedure TfmRptUnit.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Unit';
       SQLString := 'SELECT K.* FROM ( '
                   +'SELECT ''SEMUA UNIT'' as Nama_Group,'''' as Kode_Group UNION ALL '
                   +'SELECT NmMaster as Nama_Group,KdMaster as Kode_Group FROM AllMaster WHERE FgMaster=''U'' ) as K ORDER BY Nama_Group';
       if ShowModal = MrOK then
       begin
         KodeDari.Text := Res[1];
         dxButtonEdit1.Text := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmRptUnit.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then
  CheckBox8.Visible := TRUE
  else
  CheckBox8.Visible := False;
end;

end.
