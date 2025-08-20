unit AROtoSalesInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, Buttons, ExtCtrls, dxCore, dxButton;

type
  TfmAROtoSalesInv = class(TfmRptDlg)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    quActTransDate: TDateTimeField;
    quActKonInvPelID: TStringField;
    quActSaleID: TStringField;
    quActCustName: TStringField;
    quActNote: TStringField;
    quActSiteName: TStringField;
    bbFind: TdxButton;
    dxDBGrid1Column6: TdxDBGridColumn;
    RgJenis: TRadioGroup;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quMainTransDate: TDateTimeField;
    quMainKonInvPelID: TStringField;
    quMainSaleID: TStringField;
    quMainCustName: TStringField;
    quMainNote: TStringField;
    quMainSiteName: TStringField;
    dxDBGrid2Column6: TdxDBGridColumn;
    quDetilKonInvPelID: TStringField;
    quDetilNoUnit: TStringField;
    quDetilNote: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilPrice: TBCDField;
    quDetilItemName: TStringField;
    procedure bbFindClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RgJenisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAROtoSalesInv: TfmAROtoSalesInv;

implementation

{$R *.dfm}

uses MyUnit,Search, StdLv0,ARKonfirmasiInv,UnitGeneral;

procedure TfmAROtoSalesInv.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Peminjaman';
       SQLString := 'Select CONVERT(VARCHAR(10),A.TransDate,112) as Tanggal,A.KonInvPelID as No_Invoice,A.SaleID as No_Kontrak, '
                     +'B.CustName as Nama_Customer,A.Note as Keterangan,C.SiteName as Nama_Site From ARTrKonInvPelHd A  '
                     +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                     +'INNER JOIN INMsSites C ON A.SiteID=C.SiteID ';
       if RgJenis.ItemIndex = 0 then SQLString := SQLString + 'where A.BankID=''RJS'' ';
       if RgJenis.ItemIndex = 1 then SQLString := SQLString + 'where A.BankID=''TIM'' ';
      // if RgJenis.ItemIndex = 2 then SQLString := SQLString + 'where A.BankID=''TPM'' ';
       //if RgData.ItemIndex = 2 then SQLString := SQLString + 'where A.FgCetak=''Y'' ';
       SQLString := SQLString + 'AND A.FgOto=''T'' Order By A.TransDate ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('KonInvPelID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAROtoSalesInv.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmARKonfirmasiInv.Create (Application) do
   try
     Label3.Caption:=Self.quMainKonInvPelID.AsString;
     ShowModal;
     quMain.Requery();
   finally
    Free;
   end;
end;

procedure TfmAROtoSalesInv.FormCreate(Sender: TObject);
begin
  inherited;
  //UsePeriod := False;
end;

procedure TfmAROtoSalesInv.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := True;
  quMain.Active := True;
  quDetil.Active := True;

  RgJenisClick(RgJenis);
end;

procedure TfmAROtoSalesInv.RgJenisClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    add('Select A.TransDate,A.KonInvPelID,A.SaleID, '
       +'B.CustName,A.Note,C.SiteName From ARTrKonInvPelHd A  '
       +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
       +'INNER JOIN INMsSites C ON A.SiteID=C.SiteID ');
       if RgJenis.ItemIndex = 0 then add('where A.BankID=''RJS'' AND A.FgOto=''T'' ');
       if RgJenis.ItemIndex = 1 then add('where A.BankID=''TIM'' AND A.FgOto=''T'' ');
    Add('Order By A.TransDate ');
    Open;
  end;
end;

end.
