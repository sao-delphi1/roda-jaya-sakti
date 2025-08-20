unit HRMsSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmHRMsSalary = class(TfmStdLv31)
    dbgSales: TdxDBGrid;
    quMainSalesID: TStringField;
    quMainSalesName: TStringField;
    quMainGapok: TBCDField;
    quMainTunjJab: TBCDField;
    quMainAkomodasi: TBCDField;
    quMainInProduksi: TBCDField;
    quMainInK3: TBCDField;
    quMainInKinerja: TBCDField;
    quMainInPaUnit: TBCDField;
    quMainInFuelRatio: TBCDField;
    quMainLemburReg: TBCDField;
    quMainLemburLib: TBCDField;
    quMainPriceTK: TBCDField;
    quMainPriceKES: TBCDField;
    quMainKoreksi1: TBCDField;
    quMainKoreksi2: TBCDField;
    quMainNIK: TStringField;
    dbgSalesColumn1: TdxDBGridColumn;
    dbgSalesColumn2: TdxDBGridColumn;
    dbgSalesColumn3: TdxDBGridColumn;
    dbgSalesColumn4: TdxDBGridColumn;
    dbgSalesColumn5: TdxDBGridColumn;
    dbgSalesColumn6: TdxDBGridColumn;
    dbgSalesColumn7: TdxDBGridColumn;
    dbgSalesColumn8: TdxDBGridColumn;
    dbgSalesColumn9: TdxDBGridColumn;
    dbgSalesColumn10: TdxDBGridColumn;
    dbgSalesColumn11: TdxDBGridColumn;
    dbgSalesColumn12: TdxDBGridColumn;
    dbgSalesColumn13: TdxDBGridColumn;
    dbgSalesColumn14: TdxDBGridColumn;
    dbgSalesColumn15: TdxDBGridColumn;
    dbgSalesColumn16: TdxDBGridColumn;
    dbgSalesColumn17: TdxDBGridColumn;
    dbgSalesColumn18: TdxDBGridColumn;
    dbgSalesColumn19: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    quMainTInsentif: TCurrencyField;
    quMainTGross: TCurrencyField;
    quMainRekening1: TStringField;
    quMainRekening2: TStringField;
    dbgSalesColumn20: TdxDBGridColumn;
    dbgSalesColumn21: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHRMsSalary: TfmHRMsSalary;

implementation

{$R *.dfm}

uses MyUnit, UnitGeneral, Search;

procedure TfmHRMsSalary.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmHRMsSalary.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;

  //WindowState := wsMaximized;

  RadioGroup1Click(RadioGroup1);
end;

procedure TfmHRMsSalary.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSalesColumn1,TRUE);
  SetReadOnly(dbgSalesColumn2,TRUE);
  SetReadOnly(dbgSalesColumn3,TRUE);

  SetReadOnly(dbgSalesColumn12,TRUE);
  SetReadOnly(dbgSalesColumn13,TRUE);

  SetReadOnly(dbgSalesColumn18,TRUE);
  SetReadOnly(dbgSalesColumn19,TRUE);
end;

procedure TfmHRMsSalary.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    dbgSalesColumn18.Visible := TRUE;
    dbgSalesColumn19.Visible := TRUE;
  end else
  begin
    dbgSalesColumn18.Visible := False;
    dbgSalesColumn19.Visible := False;
  end;

  if RadioGroup1.ItemIndex=0 then
  begin
    dbgSalesColumn4.Visible := TRUE;
    dbgSalesColumn5.Visible := TRUE;
    dbgSalesColumn6.Visible := TRUE;
    dbgSalesColumn7.Visible := TRUE;
    dbgSalesColumn8.Visible := TRUE;
    dbgSalesColumn9.Visible := TRUE;
    dbgSalesColumn10.Visible := TRUE;
    dbgSalesColumn11.Visible := TRUE;
    dbgSalesColumn12.Visible := False;
    dbgSalesColumn13.Visible := TRUE;
    dbgSalesColumn14.Visible := TRUE;
    dbgSalesColumn15.Visible := TRUE;
    dbgSalesColumn16.Visible := TRUE;
    dbgSalesColumn17.Visible := TRUE;
    dbgSalesColumn20.Visible := TRUE;
    dbgSalesColumn21.Visible := TRUE;
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    dbgSalesColumn4.Visible := TRUE;
    dbgSalesColumn5.Visible := TRUE;
    dbgSalesColumn6.Visible := TRUE;
    dbgSalesColumn7.Visible := False;
    dbgSalesColumn8.Visible := False;
    dbgSalesColumn9.Visible := False;
    dbgSalesColumn10.Visible := False;
    dbgSalesColumn11.Visible := False;
    dbgSalesColumn12.Visible := TRUE;
    dbgSalesColumn13.Visible := TRUE;
    dbgSalesColumn14.Visible := False;
    dbgSalesColumn15.Visible := False;
    dbgSalesColumn16.Visible := False;
    dbgSalesColumn17.Visible := False;
    dbgSalesColumn20.Visible := False;
    dbgSalesColumn21.Visible := False;
  end else
  if RadioGroup1.ItemIndex=2 then
  begin
    dbgSalesColumn4.Visible := False;
    dbgSalesColumn5.Visible := False;
    dbgSalesColumn6.Visible := False;
    dbgSalesColumn7.Visible := TRUE;
    dbgSalesColumn8.Visible := TRUE;
    dbgSalesColumn9.Visible := TRUE;
    dbgSalesColumn10.Visible := TRUE;
    dbgSalesColumn11.Visible := TRUE;
    dbgSalesColumn12.Visible := TRUE;
    dbgSalesColumn13.Visible := False;
    dbgSalesColumn14.Visible := False;
    dbgSalesColumn15.Visible := False;
    dbgSalesColumn16.Visible := False;
    dbgSalesColumn17.Visible := False;
    dbgSalesColumn20.Visible := False;
    dbgSalesColumn21.Visible := False;
  end else
  begin
    dbgSalesColumn4.Visible := False;
    dbgSalesColumn5.Visible := False;
    dbgSalesColumn6.Visible := False;
    dbgSalesColumn7.Visible := False;
    dbgSalesColumn8.Visible := False;
    dbgSalesColumn9.Visible := False;
    dbgSalesColumn10.Visible := False;
    dbgSalesColumn11.Visible := False;
    dbgSalesColumn12.Visible := False;
    dbgSalesColumn13.Visible := False;
    dbgSalesColumn14.Visible := True;
    dbgSalesColumn15.Visible := True;
    dbgSalesColumn16.Visible := True;
    dbgSalesColumn17.Visible := True;
    dbgSalesColumn20.Visible := TRUE;
    dbgSalesColumn21.Visible := TRUE;
  end;


end;

procedure TfmHRMsSalary.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainTInsentif.AsCurrency := quMainInProduksi.AsCurrency+quMainInK3.AsCurrency+quMainInKinerja.AsCurrency+quMainInPaUnit.AsCurrency+quMainInFuelRatio.AsCurrency;
  quMainTGross.AsCurrency := quMainTInsentif.AsCurrency+quMainAkomodasi.AsCurrency+quMainGapok.AsCurrency+quMainTunjJab.AsCurrency;

  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT Rekening+ISNULL('' (''+Bank+'')'','''') as Rekening1,Rekening1+ISNULL('' (''+Bank1+'')'','''') as Rekening2 '
       +'FROM ARMsSales Where SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainRekening1.AsString := quAct.FieldByName('Rekening1').AsString;
  quMainRekening2.AsString := quAct.FieldByName('Rekening2').AsString;
end;

procedure TfmHRMsSalary.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
    try
      Title := 'Master Karyawan Aktif';
      SQLString := ' Select SalesName as Nama_Karyawan,NIK,Jabatan,SalesID as Kode_System '
                  +' from ARMsSales Where FGActive<>0 ORDER BY SalesName';
      if ShowModal = MrOk then
      begin
        qumain.Locate('SalesId',Res[3],[]);
      end;
    finally
      free;
    end;
  end;
end;

end.
