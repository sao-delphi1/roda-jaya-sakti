unit MTRptMutasiUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmMTRptMutasiUnit = class(TfmRptDlg)
    RadioGroup1: TRadioGroup;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    RadioGroup2: TRadioGroup;
    quActNoUnit: TStringField;
    quActDescription: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    quActFgGroup: TStringField;
    quActgroupid: TStringField;
    quActjenis: TStringField;
    Edit1: TEdit;
    Button1: TButton;
    rbAll2: TRadioButton;
    rbselect2: TRadioButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMTRptMutasiUnit: TfmMTRptMutasiUnit;

implementation

uses MyUnit, UnitGeneral, UnitDate, Search, MTQRRptMutasiUnit, LokasiUnit;

{$R *.dfm}

procedure TfmMTRptMutasiUnit.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    RadioGroup2.Visible := True;
    GroupBox1.Visible := True;
    CheckBox1.Visible := False;
    RadioGroup2Click(RadioGroup2);
  end else
  begin
    RadioGroup2.Visible := False;
    GroupBox1.Visible := False;
    Edit1.Visible := False;
    Button1.Visible := False;
    CheckBox1.Visible := True;
  end;
end;

procedure TfmMTRptMutasiUnit.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if RadioGroup2.ItemIndex=0 then
  begin
    Edit1.Visible := False;
    Button1.Visible := False;
  end else
  begin
    Edit1.Visible := True;
    Button1.Visible := True;
  end;
end;

procedure TfmMTRptMutasiUnit.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := Date;

  RadioGroup1Click(RadioGroup1);
  quAct.Open;
end;

procedure TfmMTRptMutasiUnit.Button2Click(Sender: TObject);
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

procedure TfmMTRptMutasiUnit.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Gudang';
     SQLString := ' SELECT WarehouseID as Kode_Gudang,WareHouseName as Nama_Gudang From INMsWarehouse';
     if ShowModal = MrOK then
     begin
       Edit1.Text := Res[0];
     end;
  finally
     free;
  end;
end;

procedure TfmMTRptMutasiUnit.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbselect2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
        dbgList.FocusedNode.Selected := True;
  end;
end;

procedure TfmMTRptMutasiUnit.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
  //----------------------------------------------------------------------------
  with TfmMTQRRptMutasiUnit.Create(Self) do
  try
    qrlTitle.Caption := 'Laporan Mutasi Unit';
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

    with qu001,SQL do
    begin
      Close;Clear;
      add(' select distinct A.nounit,C.Description,A.nounit+'' - ''+C.Description as NomorUnit from MTMutasiUnitDt A '
         +' inner join MTMutasiUnitHd b on A.NotaID=B.NotaID '
         +' inner join INMsNoUnit C on A.NoUnit=C.NoUnit '
         +' WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
         +' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
      if rbSelect2.Checked then
      Add(' and A.NoUnit IN '+SelGrid(quAct,dbgList,'NoUnit'));
      if RadioGroup2.ItemIndex=1 then
      Add(' and B.Asal='''+Edit1.Text+''' ');
      if RadioGroup2.ItemIndex=2 then
      Add(' and B.Lokasi='''+Edit1.Text+''' ');
      Add(' ORDER BY A.NoUnit ');
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
      add(' select CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal,B.NotaID,A.nounit,B.Lokasi,B.Asal,A.HM,B.Kepada,B.UpdUser, '
         +' D.WarehouseName,E.WarehouseName as WarehouseNamee from MTMutasiUnitDt A '
         +' inner join MTMutasiUnitHd b on A.NotaID=B.NotaID '
         +' inner join INMsNoUnit C on A.NoUnit=C.NoUnit '
         +' LEFT join INMsWarehouse D on B.Lokasi=D.WarehouseID '
         +' LEFT join INMsWarehouse E on B.Asal=E.WarehouseID '
         +' Where CONVERT(varchar(10),B.TransDate,112) between '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
         +' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
         +' AND A.NoUnit=:NoUnit ');
      if RadioGroup2.ItemIndex=1 then
      Add(' and B.Asal='''+Edit1.Text+''' ');
      if RadioGroup2.ItemIndex=2 then
      Add(' and B.Lokasi='''+Edit1.Text+''' ');
      add(' order by B.TransDate ');
      Parameters.ParamByName('NoUnit').DataType := ftString;
      Open;
    end;

    if Sender=bbPrint then
      MyReport.Print
    else
      MyReport.PreviewModal;

    finally
      free;
  end;
  //----------------------------------------------------------------------------
  end else
  begin
  //----------------------------------------------------------------------------
  with TfmLokasiUnit.Create(Self) do
  try
    qrlTitle.Caption := 'Laporan Lokasi Unit';

    with qu001,SQL do
    begin
      Close;Clear;
      add(' SELECT K.*,L.WarehouseName FROM ( '
         +' select A.NoUnit,A.Description, '
         +' ISNULL((SELECT TOP 1 Y.Lokasi FROM MTMutasiUnitDt X inner join MTMutasiUnitHd Y on X.NotaID=Y.NotaID '
         +' Where X.NoUnit=A.NoUnit ORDER BY Y.TransDate DESC),''-'') as Lokasi '
         +' from INMsNoUnit A '
         +' ) as K '
         +' INNER JOIN INMsWarehouse L on K.Lokasi=L.WarehouseID '
         +' WHERE K.NoUnit<>'''' ');
      if CheckBox1.Checked then
      Add(' AND K.Lokasi<>''-'' ');
      if rbSelect2.Checked then
      Add(' AND K.NoUnit IN '+SelGrid(quAct,dbgList,'NoUnit'));
      Add(' ORDER BY K.NoUnit ');
      Open;
      if IsEmpty then
      begin
        MsgInfo('No Data !');
        Abort;
      end;
    end;

    if Sender=bbPrint then
      MyReport.Print
    else
      MyReport.PreviewModal;

    finally
      free;
  end;
  //----------------------------------------------------------------------------
  end;


end;

end.
