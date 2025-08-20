unit INTrKanibal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, DBCtrls, StdCtrls, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, DB, ActnList, dxCntner, ADODB, ExtCtrls, dxPageControl,
  dxButton, dxCore, dxContainer, Buttons, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid;

type
  TfmINTrKanibal = class(TfmStdLv31)
    quMainTransID: TStringField;
    quMainCompany: TStringField;
    quMainTransdate: TDateTimeField;
    quMainSiteID: TStringField;
    quMainNoUnit: TStringField;
    quMainTypeUnit: TStringField;
    quMainCompanySrc: TStringField;
    quMainNoUnitSrc: TStringField;
    quMainTypeUnitSrc: TStringField;
    quMainKM: TStringField;
    quMainKMSrc: TStringField;
    quMainNote: TStringField;
    quMainupddate: TDateTimeField;
    quMainupduser: TStringField;
    quDetilTransID: TStringField;
    quDetilItemID: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilKerusakan: TStringField;
    quDetilNote: TStringField;
    quDetilActionPlan: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilObjection: TStringField;
    quDetilupddate: TDateTimeField;
    quDetilupduser: TStringField;
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label2: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    GroupBox2: TGroupBox;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label3: TLabel;
    dxDBImageEdit5: TdxDBImageEdit;
    Label35: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label4: TLabel;
    Label5: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    quMainSiteSrc: TStringField;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgColumn2: TdxDBGridColumn;
    dbgColumn4: TdxDBGridColumn;
    dbgColumn5: TdxDBGridColumn;
    dbgColumn6: TdxDBGridColumn;
    dbgColumn8: TdxDBGridColumn;
    dbgColumn9: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton6: TdxButton;
    dbgColumn1: TdxDBGridButtonColumn;
    dbgColumn3: TdxDBGridImageColumn;
    dbgColumn7: TdxDBGridImageColumn;
    quDetilLNama: TStringField;
    quDetilLSatuan: TStringField;
    Label12: TLabel;
    dxDBEdit4: TdxDBEdit;
    quMainFgOto: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    quMainLoto: TStringField;
    quMainLSiteSrc: TStringField;
    quMainLSite: TStringField;
    quMainWarehouseID: TStringField;
    dxDBButtonEdit4: TdxDBButtonEdit;
    Label13: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    DBText4: TDBText;
    quMaindriver: TStringField;
    quMainLsales: TStringField;
    quDetilModal: TBCDField;
    quDetilJual: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgColumn1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxButton6Click(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilItemIDChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINTrKanibal: TfmINTrKanibal;

implementation

uses MyUnit, UnitGeneral, UnitDate, Search, ConMain, INQRKanibal, RptLv0;

{$R *.dfm}

procedure TfmINTrKanibal.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
  quDetil.ACtive := TRUE;
end;

procedure TfmINTrKanibal.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCompany.AsString := 'RJS';
  quMainCompanySrc.AsString := 'RJS';
  quMainFgOto.ASString := 'T';
  quMainTransdate.AsDateTime := Date;
end;

procedure TfmINTrKanibal.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit7,TRUE);
  SetReadOnly(dxDBButtonEdit3,TRUE);
end;

procedure TfmINTrKanibal.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if Trim(quMainSiteSrc.Value)='' then
  begin
    MsgInfo('Kode Site Awal tidak boleh kosong');
    quMainSiteSrc.FocusControl;
    Abort;
  end;

  if Trim(quMainSiteID.Value)='' then
  begin
    MsgInfo('Kode Site Akhir tidak boleh kosong');
    quMainSiteID.FocusControl;
    Abort;
  end;

  if Trim(quMainWarehouseID.Value)='' then
  begin
    MsgInfo('Gudang Site tidak boleh kosong');
    quMainWarehouseID.FocusControl;
    Abort;
  end;

  if Trim(quMainNoUnitSrc.Value)='' then
  begin
    MsgInfo('No Unit Awal tidak boleh kosong');
    quMainNoUnitSrc.FocusControl;
    Abort;
  end;

  if Trim(quMainNoUnit.Value)='' then
  begin
    MsgInfo('No Unit Akhir tidak boleh kosong');
    quMainNoUnit.FocusControl;
    Abort;
  end;

  if Trim(quMainKM.Value)='' then
  begin
    MsgInfo('KM Akhir tidak boleh kosong');
    quMainKM.FocusControl;
    Abort;
  end;

  if Trim(quMainKMSrc.Value)='' then
  begin
    MsgInfo('KM Awal tidak boleh kosong');
    quMainKMSrc.FocusControl;
    Abort;
  end;

  if qumain.State=dsinsert then
  Begin
    ST := 'FK'+kdcab+FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainTransID.ASString  := ST + FormatFloat('000', RunNumberGL(quAct, 'INTrKanibalHd', 'TransId', ST, '0') + 1);
  End;

  quMainUpddate.ASDatetime := GetServerDateTime;
  quMainUpdUser.ASString := dmmain.userid;
end;

procedure TfmINTrKanibal.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Nama Site';
        SQLString := 'select SiteID,SiteName from INMsSites';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSiteSrc.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmINTrKanibal.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Nama Site';
        SQLString := 'select SiteID,SiteName from INMsSites';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSiteID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmINTrKanibal.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'No Unit';
        SQLString := 'select NoUnit,Description from INMsNoUnit WHERE FgActive=''Y'' order by nounit';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainNoUnitSrc.Value := Res[0];
           quMainTypeUnitSrc.Value := Res[1];
        end;
     finally
        free;
     end;
end;

procedure TfmINTrKanibal.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'No Unit';
        SQLString := 'select NoUnit,Description from INMsNoUnit where fgactive=''Y'' order by nounit';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainNoUnit.Value := Res[0];
           quMainTypeUnit.Value := Res[1];
        end;
     finally
        free;
     end;
end;

procedure TfmINTrKanibal.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmINTrKanibal.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINTrKanibal.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmINTrKanibal.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmINTrKanibal.dbgColumn1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'Select A.ItemName as Nama_Barang,A.ItemID as Part_Number,A.TypeUnit, '
                  +'A.UOMID as Satuan FROM INMsItem A Where A.FgActive=''Y'' Order By A.itemName';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmINTrKanibal.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  quDetilupduser.AsString := dmmain.userid;
  quDetilupddate.AsDateTime := GetServerDateTime;
end;

procedure TfmINTrKanibal.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency := 1;
  quDetilActionPlan.ASString := 'OC';
  quDetilObjection.ASString := 'NW';
end;

procedure TfmINTrKanibal.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgColumn1,quDetil.State<>dsInsert);
  SetReadOnly(dbgColumn2,TRUE);
  SetReadOnly(dbgColumn6,TRUE);
end;

procedure TfmINTrKanibal.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName,UOMID FROM INMsItem Where ItemID='''+quDetilItemID.ASString+''' ');
    Open;
  end;

  quDetilLNama.ASString := quAct.FieldBYName('ItemName').AsString;
  quDetilLSatuan.ASString := quAct.FieldBYName('UOMID').AsString;
end;

procedure TfmINTrKanibal.dxButton6Click(Sender: TObject);
begin
  inherited;
  with TfmINQRKanibal.Create(Self) do
    try

      qrlTitle.Caption := 'Form Kanibal';
      qrlPeriode.Caption := FormatDatetime('d MMMM yyyy',quMainTransdate.AsDateTime);

      with qu001,SQL do
      Begin
        Close;Clear;
        add(' select A.TransID, '
           +' CASE WHEN A.Company=''RJS'' THEN ''RODA JAYA SAKTI'' '
           +'      WHEN A.Company=''EBTL'' THEN ''ERA BARU TIMUR LESTARI'' '
           +'      WHEN A.Company=''DIL'' THEN ''DIMAS INDOMINERAL LAMPUNG'' '
           +'      WHEN A.Company=''OJP'' THEN ''OPTIMA JAYA PERKASA'' '
           +'      WHEN A.Company=''GP'' THEN ''GITA PERKASA'' '
           +'      WHEN A.Company=''IUP'' THEN ''INTI UTAMA PERKASA'' '
           +'      WHEN A.Company=''IGS'' THEN ''INDO GEMILANG SEJAHTERA'' '
           +'      WHEN A.Company=''AGT'' THEN ''ARAGATA MANDIRI SEJATI'' '
           +'      WHEN A.Company=''AT'' THEN ''ANDALAS TEKNIK'' '
           +'      WHEN A.Company=''TIM'' THEN ''TRIDAYA INDOMINERAL'' '
           +'      WHEN A.Company=''OJS'' THEN ''OPTIMA JAYA SAKTI'' '
           +'      WHEN A.Company=''TPM'' THEN ''TIMUR PERKASA MINERALINDO'' '
           +'      ELSE ''KAISAR'' END AS Company, '
           +' A.TransDate,A.SiteID,A.NoUnit,A.TypeUnit, '
           +' CASE WHEN A.CompanySrc=''RJS'' THEN ''RODA JAYA SAKTI'' '
           +'      WHEN A.CompanySrc=''EBTL'' THEN ''ERA BARU TIMUR LESTARI'' '
           +'      WHEN A.CompanySrc=''DIL'' THEN ''DIMAS INDOMINERAL LAMPUNG'' '
           +'      WHEN A.CompanySrc=''OJP'' THEN ''OPTIMA JAYA PERKASA'' '
           +'      WHEN A.CompanySrc=''GP'' THEN ''GITA PERKASA'' '
           +'      WHEN A.CompanySrc=''IUP'' THEN ''INTI UTAMA PERKASA'' '
           +'      WHEN A.CompanySrc=''IGS'' THEN ''INDO GEMILANG SEJAHTERA'' '
           +'      WHEN A.CompanySrc=''AGT'' THEN ''ARAGATA MANDIRI SEJATI'' '
           +'      WHEN A.CompanySrc=''TIM'' THEN ''TRIDAYA INDOMINERAL'' '
           +'      WHEN A.CompanySrc=''TPM'' THEN ''TIMUR PERKASA MINERALINDO'' '
           +'      WHEN A.Company=''OJS'' THEN ''OPTIMA JAYA SAKTI'' '
           +'      WHEN A.CompanySrc=''AT'' THEN ''ANDALAS TEKNIK'' '
           +'      ELSE ''KAISAR'' END AS CompanySrc, '
           +' A.NoUnitSrc,A.TypeUnitSrc,A.KM,A.KMSrc,A.Note,A.upddate,A.upduser,A.SiteSrc,C.SiteName,B.SiteName as SiteNama, '
           +' D.Description,E.Description as TypeUn '
           +' from INTrKanibalHd A '
           +' inner join INMsSites B on A.SiteID=B.SiteID '
           +' inner join INMsSites C on A.SiteSrc=C.SiteID '
           +' inner join INMsNoUnit D on A.NoUnit=D.NoUnit '
           +' inner join INMsNoUnit E on A.NoUnitSrc=E.NoUnit '
           +' where A.TransID='''+quMainTransID.AsString+''' ');
        Open;
      End;

      with qu002,SQL do
      Begin
        Close;Clear;
        add('select A.TransID,A.ItemID,A.Kerusakan,A.Note,A.Qty,'
           +'CASE WHEN A.ActionPlan=''OC'' THEN ''ORDER COMPONENT'' '
           +'     WHEN A.ActionPlan=''RON'' THEN ''REPAIR ON SITE'' '
           +'     ELSE ''REPAIR OFF SITE'' END AS ActionPlan, '
           +'CASE WHEN A.Objection=''NW'' THEN ''NORMAL WEAR'' '
           +'     WHEN A.Objection=''PM'' THEN ''POOR MAINTENANCE'' '
           +'     WHEN A.Objection=''PO'' THEN ''POOR OPERATION'' '
           +'     WHEN A.Objection=''PF'' THEN ''PREMATURE FEATURE'' '
           +'     WHEN A.Objection=''AC'' THEN ''ACCIDENT'' '
           +'     ELSE ''OTHERS'' END AS Objection,'
           +'A.UpdDate,A.UpdUser,B.ItemName,B.UOMID '
           +'from INTrKanibalDt A inner join INMsItem B on A.ItemID=B.ItemID Where A.TransID=:TransID ');
        Parameters.ParamByName('TransID').DataType := ftString;
        Open;
      End;

      MyReport.PreviewModal;

    finally
      free;
    end;
end;

procedure TfmINTrKanibal.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites Where SiteID='''+quMainSiteID.ASString+''' ');
    Open;
  End;
  quMainLSite.ASString := quAct.FieldBYName('SiteName').ASString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('select SalesName from ARMsSales where salesid='''+quMaindriver.ASString+''' ');
    Open;
  end;
  quMainLsales.AsString := quAct.FieldByName('SalesName').ASString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites Where SiteID='''+quMainSiteSrc.ASString+''' ');
    Open;
  End;
  quMainLSiteSrc.ASString := quAct.FieldBYName('SiteName').ASString;

  if quMainFgOto.ASString ='Y' then
  quMainLoto.ASString := 'SUDAH APPROVED'
  else
  if quMainFgOto.ASString ='T' then
  quMainLOto.ASString := 'BELUM APPROVED'
  else
  quMainLOto.ASString := 'REJECTED';
end;

procedure TfmINTrKanibal.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Kanibal Unit';
       SQLString := ' SELECT TransId as Kode_Transaksi, '
                   +' Convert(Varchar(10),Transdate,103) as Tgl_Transaksi, '
                   +' NOUnitSrc as Unit_Awal,SiteSrc as Site_Awal, '
                   +' NOUnit as Unit_Akhir,SiteID as Site_Akhir '
                   +' FROM INTrKanibalHD '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY TransDate ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINTrKanibal.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
   try
      Title := 'Gudang';
      SQLString := 'SELECT WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang'
                  +' FROM INMsWareHouse ORDER BY WareHouseId';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainWareHouseID.Value := Res[0];
      end;
   finally
      free;
   end;
end;

procedure TfmINTrKanibal.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Nama Driver/Mekanik';
    SQLString := 'select SalesName as Nama_Karyawan,SalesID as Kode_Karyawan from ARMsSales';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMaindriver.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmINTrKanibal.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(UserPrice,0) as Modal,ISNULL(DealerPrice,0) as Jual FROM INMsItem WHere ItemID='''+quDetilItemID.asstring+''' ');
    Open;
  end;
  quDetilModal.AsCurrency := quAct.FieldByName('Modal').AsCurrency;
  quDetilJual.AsCurrency := quAct.FieldByName('Jual').AsCurrency;
end;

end.
