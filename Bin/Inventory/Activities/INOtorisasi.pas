{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit INOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms;

type
  TfmINOtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    BtlBrg: TdxButton;
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
    quMainSiteSrc: TStringField;
    quMainFgOto: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBImageEdit5: TdxDBImageEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText3: TDBText;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    quMainLOto: TStringField;
    quMainLSite: TStringField;
    quMainLSiteSrc: TStringField;
    dxDBGrid1Column2: TdxDBGridColumn;
    dbg: TdxDBGrid;
    dbgColumn1: TdxDBGridButtonColumn;
    dbgColumn2: TdxDBGridColumn;
    dbgColumn4: TdxDBGridColumn;
    dbgColumn3: TdxDBGridImageColumn;
    dbgColumn5: TdxDBGridColumn;
    dbgColumn6: TdxDBGridColumn;
    dbgColumn7: TdxDBGridImageColumn;
    dbgColumn8: TdxDBGridColumn;
    dbgColumn9: TdxDBGridColumn;
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
    quDetilLNama: TStringField;
    quDetilLSatuan: TStringField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    DBText4: TDBText;
    quMainWarehouseID: TStringField;
    Label13: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    DBText5: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINOtorisasi: TfmINOtorisasi;

implementation

uses StdLv2, UnitGeneral, MyUnit, ConMain, Search, INOtoKonf;

{$R *.dfm}

procedure TfmINOtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := false;
end;

procedure TfmINOtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := True;
  qudetil.Active := true;
  BtlBrgClick(BtlBrg);
end;

procedure TfmINOtorisasi.quMainCalcFields(DataSet: TDataSet);
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

procedure TfmINOtorisasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,TRUE);
  SetReadOnly(dxDBImageEdit5,TRUE);
  SetReadOnly(dxDBImageEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit2,TRUE);
  SetReadOnly(dxDBButtonEdit3,TRUE);
  SetReadOnly(dxDBButtonEdit7,TRUE);
  SetReadOnly(dxDBButtonEdit5,TRUE);
  SetReadOnly(dxDBButtonEdit6,TRUE);
  SetReadOnly(dxDBButtonEdit8,TRUE);
  SetReadOnly(dxDBEdit2,TRUE);
  SetReadOnly(dxDBEdit3,TRUE);
  SetReadOnly(dxDBEdit4,TRUE);
end;

procedure TfmINOtorisasi.quDetilCalcFields(DataSet: TDataSet);
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

procedure TfmINOtorisasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgColumn1,TRUE);
  SetReadOnly(dbgColumn2,TRUE);
  SetReadOnly(dbgColumn3,TRUE);
  SetReadOnly(dbgColumn4,TRUE);
  SetReadOnly(dbgColumn5,TRUE);
  SetReadOnly(dbgColumn6,TRUE);
  SetReadOnly(dbgColumn7,TRUE);
  SetReadOnly(dbgColumn8,TRUE);
  SetReadOnly(dbgColumn9,TRUE);
end;

procedure TfmINOtorisasi.BtlBrgClick(Sender: TObject);
var Oto : string;
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then Oto := 'T';
  if RadioGroup1.ItemIndex = 1 then Oto := 'X';
  if RadioGroup1.ItemIndex = 2 then Oto := 'Y';
  with quMain,SQL do
  begin
    Close;Clear;
    Add('Select * from InTrKanibalHd Where FgOto='''+oto+''' ');
    Open;
  end;
end;

procedure TfmINOtorisasi.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  BtlBrgClick(BtlBrg);
end;

procedure TfmINOtorisasi.bbFindClick(Sender: TObject);
var oto : string;
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then Oto := 'T';
  if RadioGroup1.ItemIndex = 1 then Oto := 'X';
  if RadioGroup1.ItemIndex = 2 then Oto := 'Y';
  with TfmSearch.Create(Self) do
    try
       Title := 'Kanibal Unit';
       SQLString := ' SELECT TransId as Kode_Transaksi, '
                   +' Convert(Varchar(10),Transdate,103) as Tgl_Transaksi, '
                   +' NOUnitSrc as Unit_Awal,SiteSrc as Site_Awal, '
                   +' NOUnit as Unit_Akhir,SiteID as Site_Akhir '
                   +' FROM INTrKanibalHD '
                   +' WHERE fgoto='''+oto+''' '
                   +' ORDER BY TransDate ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINOtorisasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmINOtoKonf.Create (Application) do
   try
     Label1.Caption := quMainTransID.ASString;
     ShowModal;
   finally
    Free;
   end;
   BtlBrgClick(BtlBrg);
end;

end.
