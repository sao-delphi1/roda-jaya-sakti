unit ARRptSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton, dxEditor, dxEdLib;

type
  TfmARRptSales = class(TfmRptDlg)
    GBPeriode: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    bbCancel: TdxButton;
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    quMain: TADOQuery;
    dsMain: TDataSource;
    CheckBox1: TCheckBox;
    quActcustid: TStringField;
    quActcustname: TStringField;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure dbgListClick(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
    Query : String;
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARRptSales: TfmARRptSales;

implementation

uses ARQRRptSales, UnitGeneral, StdLv0, Search, UnitDate, Myunit, ConMain;
{$R *.dfm}


procedure TfmARRptSales.RefreshData;
begin
  Query := 'SELECT DISTINCT K.POID,K.Lokasi,CONVERT(VARCHAR(10),K.TglKirim,112) as Tgl FROM ('
          +'SELECT B.Status,B.Lokasi,B.CustID,B.POID,B.Transdate,B.TglKirim,ISNULL(A.Qty,0)-'
          +'(SELECT ISNULL(SUM(D.Qty),0) FROM ARTrKonTransBrgDT D WHERE A.POID=D.POID AND A.ItemID=D.ItemID) as Sisa '
          +'FROM ARTrPurchaseOrderDT A INNER JOIN ARTrPurchaseOrderHD B ON A.POID=B.POID WHERE B.Status<>2 UNION ALL '
          +'SELECT 0,B.Lokasi,B.CustID,B.DIID,B.Transdate,B.TglKirim,ISNULL(A.Jumlah,0)-(SELECT ISNULL(SUM(D.Jumlah),0) '
          +'FROM ARTrKonTransBrgDT D WHERE A.DIID=D.POID AND A.ItemID=D.ItemID) as Sisa FROM ARTrDeliveryIDt A '
          +'INNER JOIN ARTrDeliveryIHD B ON A.DIID=B.DIID) as K '
          +'WHERE K.CustID='''+quAct.FieldByName('CustID').AsString+''' AND K.Sisa <> 0 AND CONVERT(VARCHAR(8),K.TglKirim,112) '
          +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND K.Status<>2 ';
  with quMain do
    begin
      if active then close;
      SQL.Text := Query;
      Open;
    end;
end;

procedure TfmARRptSales.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
  With quAct,SQL do
  Begin
    Close;Clear;
    Add('SELECT SiteName as CustName,SiteID as CustID FROM INMsSites ORDER BY SiteName ');
    Open;
  End;
end;

procedure TfmARRptSales.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Site Peminjam';
       SQLString := ' SELECT SiteName as CustName,SiteID as CustID FROM INMsSites ORDER BY SiteName ';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptSales.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptSales.Create(Self) do
     try
       if KodeDari.Text<>'' then
       QRLabel28.Caption := 'Group : '+dxButtonEdit1.Text
       else
       QRLabel28.Caption := '';

       if (KdCab<>'HO') AND (UpperCase(dmmain.userid)<>'WANDRI') then
       begin
         QRLabel19.Enabled := False;
         QRLabel20.Enabled := False;
         GroupFooterBand1.Enabled := false;
         GroupFooterBand2.Enabled := false;
         SummaryBand1.Enabled := false;
         QRDBText6.Enabled := False;
         QRLabel8.Enabled := False;
       end;

       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT K.CustID,(K.CustID+''-''+L.SiteName) as Pelanggan FROM ( '
              +'SELECT A.Site2 as CustID, A.TglKirim, A.TransDate '
              +'FROM ARTrPurchaseOrderHd A '
              +'INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
              +'WHERE A.FGCetak=''Y'' '
              +') as K INNER JOIN INMsSites L ON K.CustID=L.SiteID ');
           if CheckBox1.Checked then
           add(' WHERE CONVERT(VARCHAR(8),K.TglKirim,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''')
           else
           add(' WHERE CONVERT(VARCHAR(8),K.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
           add('AND K.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           add(' ORDER by K.CustID ');
           Open;
           if IsEmpty then
           begin
             MsgInfo('No Data !');
             Abort;
           end;
         end;

       with qu002,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT K.CustID,K.Kepada,(K.Kepada+''-''+L.SiteName) as Pelanggan FROM ( '
              +'SELECT A.Site2 as CustID,A.CustID as Kepada,A.TglKirim,A.TransDate '
              +'FROM ARTrPurchaseOrderHd A '
              +'INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
              +'WHERE A.FgCetak=''Y'' '
              +') as K INNER JOIN INMsSites L ON K.Kepada=L.SiteID '
              +'Where K.CustID=:CustID ');
           if CheckBox1.Checked then
           add(' AND CONVERT(VARCHAR(8),K.TglKirim,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''')
           else
           add(' AND CONVERT(VARCHAR(8),K.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           add(' ORDER by K.CustID ');
           Parameters.ParamByName('CustId').DataType := ftString;
           Open;
         end;

       with qu003,sql do
       begin
          Close;Clear;
          add('SELECT K.POID,K.ItemID,K.CustId,K.NoUnit,L.Description,K.TglSO,K.UOMID,K.ItemName,K.TglKirim,K.CurrId,'
             +'K.TTLSO,K.Qty,K.UserPrice as Harga,K.Qty*K.UserPrice as Total,Transdate, '
             +'ISNULL(ISNULL((select TOP 1 Price from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
             +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate AND B.SiteID=K.CustID ORDER BY B.Transdate DESC,A.Price DESC),'
             +'(select TOP 1 Price from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
             +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate ORDER BY B.Transdate DESC,A.Price DESC)),K.UserPrice) as Price,K.Note FROM ('
             +'SELECT A.POID,B.ItemID,B.Note,C.ItemName,Convert(VARCHAR(10),Transdate,103) as TglSO,Convert(VARCHAR(10),Tglkirim,103) as TglKirim,A.TransDate, '
             +'A.CurrID,A.TTLSO,A.Site2 as CustID,A.CustID as Kepada,B.NoUnit,B.Qty,C.UserPrice,B.UOMID '

             //,(SELECT isnull(D.Qty,0) FROM ARTrKonTransBrgDT D '
             //+'inner join artrkontransbrghd E on D.KonTransBrgID=E.KonTransBrgID WHERE D.ItemId=B.ItemId AND E.SOID=A.POID) as QtyK '

             +'FROM ArTrPurchaseOrderDt B '
             +'inner join ARTrPurchaseOrderHd A on A.POID=B.POID '
             +'inner join inmsitem C on C.itemid=B.ItemID '
             +'WHERE A.FgCetak=''Y'' ');
             if CheckBox1.Checked then
             add(' AND CONVERT(VARCHAR(8),A.TglKirim,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ')
             else
             add(' AND CONVERT(VARCHAR(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
             Add('AND A.Site2=:CustID AND A.CustID=:Kepada '
             +') as K INNER JOIN INMsNoUnit L on K.NoUnit=L.NoUnit ');
          if TRIM(KodeDari.Text)<>'' then
          Add('AND L.GroupID IN ('''+KodeDari.Text+''') ');
          Add('ORDER BY K.Transdate,K.CustID ');
          Parameters.ParamByName('CustId').DataType := ftString;
          Parameters.ParamByName('Kepada').DataType := ftString;
          //showmessage(Sql.Text);
          Open;
       end;

       {
       with qu003,sql do
       begin
          Close;Clear;
          add(' SELECT distinct A.ItemId,B.ItemName,A.Qty,A.Price,(A.Qty*A.Price) as Total'
             +' FROM APTrPurchasedt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.PurchaseId=:PurchaseId AND SuppId=:SuppId'
             +' UNION ALL '
             +' SELECT distinct A.ItemId,B.ItemName,A.Qty,A.Price,(A.Qty*A.Price) as Total'
             +' FROM APTrKonsinyasiInvdt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.KonsinyasiInvId=:PurchaseId2 AND SuppID=:SuppId2');
          add(' ORDER by A.ItemID ');
          Parameters.ParamByName('PurchaseId').DataType := ftString;
          Parameters.ParamByName('SuppId').DataType := ftString;
           Parameters.ParamByName('PurchaseId2').DataType := ftString;
          Parameters.ParamByName('SuppId2').DataType := ftString;
          Open;
       end;       }

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
     finally
        free;
     end;
end;

procedure TfmARRptSales.dbgListClick(Sender: TObject);
begin
  inherited;
  //RefreshData;
end;

procedure TfmARRptSales.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmARRptSales.KodeDariButtonClick(Sender: TObject;
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

end.
