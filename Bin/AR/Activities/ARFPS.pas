unit ARFPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmARFPS = class(TfmStdLv31)
    dbgProduct: TdxDBGrid;
    quMainCustID: TStringField;
    quMaincustname: TStringField;
    quMainTransDate: TDateTimeField;
    quMainFPS: TStringField;
    quMainPPN: TBCDField;
    quMainkoninvpelid: TStringField;
    dbgProductColumn1: TdxDBGridColumn;
    dbgProductColumn2: TdxDBGridColumn;
    dbgProductColumn3: TdxDBGridColumn;
    dbgProductColumn4: TdxDBGridColumn;
    quMainSTKJ: TBCDField;
    quMainTTLKJ: TBCDField;
    dbgProductColumn5: TdxDBGridColumn;
    dbgProductColumn6: TdxDBGridColumn;
    dbgProductColumn7: TdxDBGridColumn;
    dbgProductColumn8: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GroupBox2: TGroupBox;
    dxDateEdit1: TdxDateEdit;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    GroupBox3: TGroupBox;
    dxDateEdit2: TdxDateEdit;
    dxTahunA: TdxSpinEdit;
    RadioGroup3: TRadioGroup;
    TmbBrg: TdxButton;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure dbgProductDblClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARFPS: TfmARFPS;

implementation

uses StdLv2, Search, UnitGeneral, MyUnit, UnitDate, InputFPS;

{$R *.dfm}

procedure TfmARFPS.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;
  quMain.Active := TRUE;

  dt1.Date := EncodeDate(GetYear(Date),1,1);
  dt2.Date := Date;

  dxTahun.Text := FormatDateTime('YYYY',Date);
  dxTahunA.Text := FormatDateTime('YYYY',Date);
  dxBulan.Text := FormatDateTime('MM',Date);

  RadioGroup1Click(RadioGroup1);

  TmbBrgClick(TmbBrg);
end;

procedure TfmARFPS.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgProductColumn1,TRUE);
  SetReadOnly(dbgProductColumn2,TRUE);
  SetReadOnly(dbgProductColumn3,TRUE);
  SetReadOnly(dbgProductColumn4,TRUE);
  SetReadOnly(dbgProductColumn5,TRUE);
  SetReadOnly(dbgProductColumn6,TRUE);
  SetReadOnly(dbgProductColumn7,TRUE);
  SetReadOnly(dbgProductColumn8,TRUE);
end;

procedure TfmARFPS.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  RadioGroup1.Top := 5; RadioGroup1.Left := 8;
  RadioGroup2.Top := 248; RadioGroup2.Left := 8;
  RadioGroup3.Top := 334; RadioGroup3.Left := 8;
  TmbBrg.Top := 212; TmbBrg.Left := 8;
  GroupBox1.Top := 87; GroupBox1.Left := 8;
  GroupBox2.Top := 127; GroupBox2.Left := 8;
  GroupBox3.Top := 127; GroupBox3.Left := 26;
  bbexcel.Top := 422; bbexcel.Left := 8;

  if RadioGroup1.ItemIndex=0 then
  begin
    GroupBox1.Visible := True;
    GroupBox2.Visible := False;
    GroupBox3.Visible := False;
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    GroupBox3.Visible := False;
  end else
  begin
    GroupBox1.Visible := False;
    GroupBox2.Visible := False;
    GroupBox3.Visible := True;
  end;

  TmbBrgClick(TmbBrg);
end;

procedure TfmARFPS.TmbBrgClick(Sender: TObject);
var PrdDari,PrdSmp : string;
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    PrdDari := FormatDateTime('yyyymmdd',dt1.Date);
    PrdSmp := FormatDateTime('yyyymmdd',dt2.Date);
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    if dxBulan.Text = '01' then
    begin
      PrdDari := dxTahun.Text+'0101';
      PrdSmp := dxTahun.Text+'0131';
    end;
    if dxBulan.Text = '02' then
    begin
      PrdDari := dxTahun.Text+'0201';
      PrdSmp := dxTahun.Text+'0229';
    end;
    if dxBulan.Text = '03' then
    begin
      PrdDari := dxTahun.Text+'0331';
      PrdSmp := dxTahun.Text+'0331';
    end;
    if dxBulan.Text = '04' then
    begin
      PrdDari := dxTahun.Text+'0401';
      PrdSmp := dxTahun.Text+'0430';
    end;
    if dxBulan.Text = '05' then
    begin
      PrdDari := dxTahun.Text+'0501';
      PrdSmp := dxTahun.Text+'0531';
    end;
    if dxBulan.Text = '06' then
    begin
      PrdDari := dxTahun.Text+'0601';
      PrdSmp := dxTahun.Text+'0630';
    end;
    if dxBulan.Text = '07' then
    begin
      PrdDari := dxTahun.Text+'0701';
      PrdSmp := dxTahun.Text+'0731';
    end;
    if dxBulan.Text = '08' then
    begin
      PrdDari := dxTahun.Text+'0801';
      PrdSmp := dxTahun.Text+'0831';
    end;
    if dxBulan.Text = '09' then
    begin
      PrdDari := dxTahun.Text+'0901';
      PrdSmp := dxTahun.Text+'0930';
    end;
    if dxBulan.Text = '10' then
    begin
      PrdDari := dxTahun.Text+'1001';
      PrdSmp := dxTahun.Text+'1031';
    end;
    if dxBulan.Text = '11' then
    begin
      PrdDari := dxTahun.Text+'1101';
      PrdSmp := dxTahun.Text+'1130';
    end;
    if dxBulan.Text = '12' then
    begin
      PrdDari := dxTahunA.Text+'1201';
      PrdSmp := dxTahunA.Text+'1231';
    end;
  end else
  begin
    PrdDari := dxTahun.Text+'0101';
    PrdSmp := dxTahun.Text+'1231';
  end;


  with quMain,SQL do
  begin
    Close;Clear;
    Add('select A.CustID,b.custname,a.TransDate,A.FPS,A.PPN,a.koninvpelid,A.STKJ,A.TTLKJ '
       +'from artrkoninvpelhd A '
       +'inner join armscustomer B on A.custid=B.Custid '
       +'Where A.FgTax=''Y'' '
       +'AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+PrdDari+''' AND '''+PrdSmp+''' ');
    if RadioGroup2.ItemIndex=0 then
    Add('AND ISNULL(A.FPS,'''')='''' ');
    if RadioGroup2.ItemIndex=1 then
    Add('AND ISNULL(A.FPS,'''')<>'''' ');
    if RadioGroup3.ItemIndex=0 then
    Add('ORDER BY A.TransDate,B.CustName ');
    if RadioGroup3.ItemIndex=1 then
    Add('ORDER BY B.CustName,A.TransDate ');
    if RadioGroup3.ItemIndex=2 then
    Add('ORDER BY ISNULL(A.FPS,''ZZZ''),A.TransDate ');
    Open;
  end;
end;

procedure TfmARFPS.bbFindClick(Sender: TObject);
var PrdDari,PrdSmp : string;
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    PrdDari := FormatDateTime('yyyymmdd',dt1.Date);
    PrdSmp := FormatDateTime('yyyymmdd',dt2.Date);
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    if dxBulan.Text = '01' then
    begin
      PrdDari := dxTahun.Text+'0101';
      PrdSmp := dxTahun.Text+'0131';
    end;
    if dxBulan.Text = '02' then
    begin
      PrdDari := dxTahun.Text+'0201';
      PrdSmp := dxTahun.Text+'0229';
    end;
    if dxBulan.Text = '03' then
    begin
      PrdDari := dxTahun.Text+'0331';
      PrdSmp := dxTahun.Text+'0331';
    end;
    if dxBulan.Text = '04' then
    begin
      PrdDari := dxTahun.Text+'0401';
      PrdSmp := dxTahun.Text+'0430';
    end;
    if dxBulan.Text = '05' then
    begin
      PrdDari := dxTahun.Text+'0501';
      PrdSmp := dxTahun.Text+'0531';
    end;
    if dxBulan.Text = '06' then
    begin
      PrdDari := dxTahun.Text+'0601';
      PrdSmp := dxTahun.Text+'0630';
    end;
    if dxBulan.Text = '07' then
    begin
      PrdDari := dxTahun.Text+'0701';
      PrdSmp := dxTahun.Text+'0731';
    end;
    if dxBulan.Text = '08' then
    begin
      PrdDari := dxTahun.Text+'0801';
      PrdSmp := dxTahun.Text+'0831';
    end;
    if dxBulan.Text = '09' then
    begin
      PrdDari := dxTahun.Text+'0901';
      PrdSmp := dxTahun.Text+'0930';
    end;
    if dxBulan.Text = '10' then
    begin
      PrdDari := dxTahun.Text+'1001';
      PrdSmp := dxTahun.Text+'1031';
    end;
    if dxBulan.Text = '11' then
    begin
      PrdDari := dxTahun.Text+'1101';
      PrdSmp := dxTahun.Text+'1130';
    end;
    if dxBulan.Text = '12' then
    begin
      PrdDari := dxTahun.Text+'1201';
      PrdSmp := dxTahun.Text+'1231';
    end;
  end else
  begin
    PrdDari := dxTahun.Text+'0101';
    PrdSmp := dxTahun.Text+'1231';
  end;

  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Invoice';
     SQLString := 'select CONVERT(VARCHAR(10),a.TransDate,103) as Tanggal,a.koninvpelid as Invoice,b.custname as Customer, '
                 +'A.FPS as FakturPajak,A.STKJ as SubTotal,A.PPN,A.TTLKJ as GrandTotal '
                 +'from artrkoninvpelhd A '
                 +'inner join armscustomer B on A.custid=B.Custid '
                 +'Where A.FgTax=''Y'' '
                 +'AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+PrdDari+''' AND '''+PrdSmp+''' ';
     if RadioGroup2.ItemIndex=0 then
     SQLString := SQLString + 'AND ISNULL(A.FPS,'''')='''' ';
     if RadioGroup2.ItemIndex=1 then
     SQLString := SQLString + 'AND ISNULL(A.FPS,'''')<>'''' ';
     SQLString := SQLString + 'ORDER BY A.TransDate,B.CustName ';
     if ShowModal = MrOK then
     begin
       qumain.Locate('KonInvPelID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARFPS.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  TmbBrgClick(TmbBrg);
end;

procedure TfmARFPS.RadioGroup3Click(Sender: TObject);
begin
  inherited;
  TmbBrgClick(TmbBrg);
end;

procedure TfmARFPS.dbgProductDblClick(Sender: TObject);
begin
  inherited;
  with TfmInputFPS.Create (Application) do
  try
    Label2.Caption := quMainkoninvpelid.ASString;
    Edit1.Text := quMainFPS.ASString;
    ShowModal;
  finally
    Free;
  end;
  TmbBrgClick(TmbBrg);
end;

procedure TfmARFPS.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dbgProduct.SaveToXLS(saveDlg.FileName, true)
    else
      dbgProduct.SaveToXLS(saveDlg.FileName + '.xls', true);
  end;
end;

end.
