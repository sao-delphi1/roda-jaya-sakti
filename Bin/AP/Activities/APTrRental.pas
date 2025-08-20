unit APTrRental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, dxTL, dxDBCtrl, dxDBGrid, DBCtrls, dxDBTLCl, dxGrClms;

type
  TfmAPTrRental = class(TfmStdLv31)
    quMainRentalID: TStringField;
    quMainSiteID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dbg: TdxDBGrid;
    dbgRentalID: TdxDBGridColumn;
    quDetilRentalID: TStringField;
    quDetilPrice: TBCDField;
    quDetilItemID: TStringField;
    dbgNamaUnit: TdxDBGridColumn;
    quDetilLNamaUnit: TStringField;
    dbgPrice: TdxDBGridColumn;
    DBText2: TDBText;
    quMainLSites: TStringField;
    quMainTransDate: TDateTimeField;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    dbgTypeClassUnit: TdxDBGridButtonColumn;
    dxDBEdit2: TdxDBEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    Label3: TLabel;
    DBText1: TDBText;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    quTotalRentalID: TStringField;
    quDetilUrut: TBCDField;
    quDetilTypeClassUnit: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgTypeClassUnitButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPTrRental: TfmAPTrRental;

implementation

{$R *.dfm}

uses Search,MyUnit,UnitGeneral,conmain,UnitDate, StdLv3;

procedure TfmAPTrRental.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), RentalID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
end;

procedure TfmAPTrRental.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
  try
    Title:='Nama Site';
    SQLString:='select siteid as Kode_Site,sitename as Nama_Site from INMsSites';
    if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSiteID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPTrRental.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
   with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteID,SiteName FROM INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  end;
  quMainLSites.AsString := quAct.FieldByName('SiteName').AsString;
end;

procedure TfmAPTrRental.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := date;
end;

procedure TfmAPTrRental.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPTrRental.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPTrRental.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPTrRental.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPTrRental.dbgTypeClassUnitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.create(Self) do
  try
    title:='No Unit';
    SQLString:= 'select TypeClassUnit,Description from INMsTypeClassUnit';
    if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then qudetil.Edit;
          quDetilTypeClassUnit.Value := Res[0];
          //quDetilLNamaUnit.Value:= Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmAPTrRental.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select TypeClassUnit,description from INMsTypeClassUnit WHERE TypeClassUnit='''+quDetilTypeClassUnit.AsString+''' ');
    Open;
  end;
  quDetilLNamaUnit.AsString := quAct.FieldByName('Description').AsString;
end;

procedure TfmAPTrRental.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;

  If TRIM (quMainSiteID.AsString)='' then
  begin
    ShowMessage('Site tidak boleh kosong');
    quMainSiteID.FocusControl;
    abort;
  end;

  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

    with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
    if IsEmpty then
    begin
      pesan('Site tidak terdaftar di dalam master');
      quMainSiteID.FocusControl;
      Abort;
    end;
   ST :='NR'+FormatDateTime('/YYYY/',quMainTransDate.AsDateTime);
    quMainRentalID.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrRentalHd','RentalID', ST, '0') + 1);

  end;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPTrRental.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;

  if TRIM(quDetilPrice.AsString)='' then
  begin
   ShowMessage('Harga tidak boleh kosong');
   quDetilPrice.FocusControl;
   abort;
  end;

 { if TRIM(quDetilTypeUnit.AsString)='' then
  begin
   ShowMessage('Type Unit tidak boleh kosong');
   quDetilTypeUnit.FocusControl;
   abort;
  end;       }

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Top 1 * FROM APTrRentalDt WHERE RentalID='''+quDetilRentalID.AsString+''' '
            +' AND TypeClassUnit='''+quDetilTypeClassUnit.AsString+''' ');
        Open;
        if  not IsEmpty then
        begin
           MsgInfo('Type Class Unit sudah ada dalam List');
           quDetilTypeClassUnit.FocusControl;
           Abort;
        end;
     end;
  end;
end;

procedure TfmAPTrRental.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgNamaUnit,TRUE);
end;

procedure TfmAPTrRental.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilPrice.AsCurrency:= 0;
end;

procedure TfmAPTrRental.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
end;

procedure TfmAPTrRental.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
end;

procedure TfmAPTrRental.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
end;

end.
