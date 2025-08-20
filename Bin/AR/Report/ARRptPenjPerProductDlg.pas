unit ARRptPenjPerProductDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton,
  ActnList, dxDBELib;

type
  TfmARRptPenjPerProductDlg = class(TfmRptDlg)
    quActGroupID: TStringField;
    quActGroupDesc: TStringField;
    ActionList: TActionList;
    ActPrint: TAction;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    dbgList: TdxDBGrid;
    dbgListProductID: TdxDBGridMaskColumn;
    dbgListProductDesc: TdxDBGridMaskColumn;
    rcNota: TdxCheckEdit;
    Label1: TLabel;
    dxJenisBrg: TdxImageEdit;
    ActCari: TAction;
    KodeDari: TdxButtonEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptPenjPerProductDlg: TfmARRptPenjPerProductDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, Search,
  ARQRRptPenjPerProduct, UnitDate;

{$R *.dfm}

procedure TfmARRptPenjPerProductDlg.bbPreviewClick(Sender: TObject);
var Jenis : string;
begin
  inherited;
  with TfmARQRRptPenjPerProduct.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       Tanggaldari := dt1.date;
       TanggalSampai := dt2.date;

       if dxJenisBrg.Text = 'M' then Jenis := 'MESIN' else
         if dxJenisBrg.Text = 'S' then Jenis := 'SPARE PART' else  Jenis := 'MESIN DAN SPARE PART';

       if rbJenis.ItemIndex = 0 then
         qrlValuta.Caption := 'VALUTA : RUPIAH - JENIS : '+Jenis
       else
         qrlValuta.Caption := 'VALUTA : US DOLLAR - JENIS : '+Jenis;

       with qu001,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT C.GroupID as ProductID,C.GroupID+'' - ''+D.GroupDesc as Product,ISNULL(SUM(B.Qty*B.Price),0) as Total '
            +'FROM ARTrKonInvPelHd A INNER JOIN ARTrKonInvPelDt B ON A.KonInvPelID=B.KonInvPelID INNER JOIN INMsItem C ON B.ItemID=C.ItemID '
            +'INNER JOIN INMsGroup D ON C.GroupID=D.GroupID WHERE CONVERT(VARCHAR(8),A.Transdate,112) '
            +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         if rbJenis.ItemIndex = 0 then
            Add('AND A.CurrID=''IDR'' ')
         else
            Add('AND A.CurrID=''USD'' ');
         if dxJenisBrg.Text <> 'A' then
            Add('AND C.Jenis='''+dxJenisBrg.Text+''' ');
         if rbSelect.Checked then
            Add(' AND C.GroupID IN '+SelGrid(quAct,dbgList,'GroupID'));
         Add(' GROUP BY C.GroupID,D.GroupDesc ORDER BY C.GroupID');
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
         add('SELECT DISTINCT B.ItemID,C.Tipe+'' - ''+C.ItemName as Barang,ISNULL(SUM(B.Qty*B.Price),0) as Total FROM ARTrKonInvPelHd A '
            +'INNER JOIN ARTrKonInvPelDt B ON A.KonInvPelID=B.KonInvPelID INNER JOIN INMsItem C ON B.ItemID=C.ItemID '
            +'WHERE C.GroupID=:ProductID AND CONVERT(VARCHAR(8),A.Transdate,112) '
            +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         if rbJenis.ItemIndex = 0 then
            Add('AND A.CurrID=''IDR'' ')
         else
            Add('AND A.CurrID=''USD'' ');
         add(' GROUP BY B.ItemID,C.Tipe,C.ItemName ORDER BY B.ItemID');
         Parameters.ParamByName('ProductId').DataType := ftString;
         Open;
       end;

       with qu003,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT B.ItemID,A.KonInvPelID as SaleID,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,CONVERT(VARCHAR(8),A.Transdate,112) as Tgl2,'
            +'ISNULL(B.Qty,0) as Qty,C.CustName,A.CurrID,ISNULL(B.Price,0) as Price,ISNULL(B.Qty*B.Price,0) as Total,C.City FROM ARTrKonInvPelHd A '
            +'INNER JOIN ARTrKonInvPelDt B ON A.KonInvPelID=B.KonInvPelID INNER JOIN ARMsCustomer C ON A.CustID=C.CustID '
            +'WHERE B.ItemID=:ItemID AND CONVERT(VARCHAR(8),A.Transdate,112) '
            +'BETWEEN '''+FormatDateTime('yyyyMMdd',Tanggaldari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' ');
       if rbJenis.ItemIndex = 0 then
          Add('AND A.CurrID=''IDR'' ')
       else
          Add('AND A.CurrID=''USD'' ');
         Add(' ORDER BY B.ItemID');
         Parameters.ParamByName('ItemId').DataType := ftString;
         Open;
       end;

       if rcNota.Checked then
       begin
         bnd001.Enabled := True;
         bnd002.Enabled := True;
       end else
       begin
         bnd001.Enabled := False; QRLabel7.Left := 375; QRDBText10.Left := 375;
         bnd002.Enabled := False; QRDBText9.Left := 12;
         QRLabel2.Caption := 'Group'; QRLabel25.Enabled := False; QRLabel1.Enabled := False; QRLabel4.Enabled := False;
         QRLabel5.Enabled := False; QRLabel6.Enabled := False; QRLabel8.Enabled := False;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;

     finally
        free;
     end;
end;

procedure TfmARRptPenjPerProductDlg.FormShow(Sender: TObject);
begin
  inherited;
  dxJenisBrg.Text := 'A';
  quAct.Open;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
end;

procedure TfmARRptPenjPerProductDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptPenjPerProductDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Barang';
       SQLString := 'SELECT GroupDesc as Group_Barang,GroupID as Kode_Group FROM INMsGroup ORDER BY GroupID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('GroupID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptPenjPerProductDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARRptPenjPerProductDlg.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Barang';
       SQLString := 'SELECT GroupDesc as Group_Barang,GroupID as Kode_Group FROM INMsGroup ORDER BY GroupID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('GroupID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
