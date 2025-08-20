unit HRRptPromotion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmHRRptPromotion = class(TfmRptDlg)
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    RadioGroup2: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHRRptPromotion: TfmHRRptPromotion;

implementation

uses MyUnit, UnitGeneral, HRQRRptPromotion, UnitDate, RptLv0;

{$R *.dfm}

procedure TfmHRRptPromotion.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    CheckBox1.Visible := TRUE;
    GroupBox1.Visible := FALSE;
    RadioGroup2.Visible := TRUE;
  end else
  begin
    CheckBox1.Visible := FALSE;
    GroupBox1.Visible := TRUE;
    RadioGroup2.Visible := FALSE;
  end;
end;

procedure TfmHRRptPromotion.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := Date;
  RadioGroup1Click(RadioGroup1);
end;

procedure TfmHRRptPromotion.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    with TfmHRQRRptPromotion.Create(Self) do
    try
      qrlTitle.Caption := 'Laporan Lokasi Karyawan';
      qrlPeriode.Caption := '';

      QRDBText4.Enabled := TRUE;
      QRDBText10.Enabled := FALSE;

      if CheckBox1.Checked then
      begin
        bnd001.Enabled := True;
        QRLabel7.Enabled := TRUE;
        QRLabel8.Enabled := TRUE;
        QRLabel9.Enabled := TRUE;
        QRLabel2.Enabled := FALSE;
        QRLabel3.Enabled := FALSE;
        QRLabel4.Enabled := FALSE;
      end else
      begin
        bnd001.Enabled := False;
        QRLabel7.Enabled := FALSE;
        QRLabel8.Enabled := FALSE;
        QRLabel9.Enabled := FALSE;
        QRLabel2.Enabled := TRUE;
        QRLabel3.Enabled := TRUE;
        QRLabel4.Enabled := TRUE;
        QRLabel5.Enabled := FALSE;
        QRLabel6.Enabled := FALSE;
        QRShape2.Enabled := FALSE;
        bndCH.Height := 25;
      end;

      with qu001,SQL do
      Begin
        Close;Clear;
        add(' select SalesID,SalesID as Kode,NIK,SalesName,Jabatan,ISNULL(D.DivisiName,'''') as Divisi,ISNULL(C.SiteName,'''') as Lokasi '
           +' from ARMsSales A '
           +' LEFT JOIN INMsDivisi D on A.department=D.DivisiID '
           +' LEFT join INMsSites C on A.Location=C.SiteID ');
        if RadioGroup2.ItemIndex=0 then
        add(' order by A.SalesName ');
        if RadioGroup2.ItemIndex=1 then
        add(' order by A.NIK ');
        if RadioGroup2.ItemIndex=2 then
        add(' order by ISNULL(C.SiteName,'''') ');
        Open;
      End;

      with qu002,SQL do
      Begin
        Close;Clear;
        add(' select ReffID,A.SalesID,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,SalesName,JabAwal as Jabatan,ISNULL(D.DivisiName,'''') as Divisi, '
           +' ISNULL(C.SiteName,'''') as Lokasi from HRPromotion A '
           +' inner join ARMsSales B on A.SalesID=B.SalesID '
           +' LEFT JOIN INMsDivisi D on A.DepAwal=D.DivisiID '
           +' LEFT join INMsSites C on A.LokAwal=C.SiteID '
           +' Where B.SalesID=:SalesID ');
        add(' order by A.TransDate DESC,ReffID DESC ');
        Parameters.ParamByName('SalesID').DataType := ftString;
        Open;
      End;

      MyReport.PreviewModal;

      finally
        free;
      end;

  end else
  begin

    with TfmHRQRRptPromotion.Create(Self) do
    try
      qrlTitle.Caption := 'LAPORAN MUTASI KARYAWAN';
      qrlPeriode.Caption := '';

      QRDBText4.Enabled := FALSE;
      QRDBText10.Enabled := TRUE;
      QRLabel10.Enabled := TRUE;
      QRDBText11.Enabled := TRUE;
      QRShape1.Enabled := FALSE;
      QRLabel1.Enabled := False;
      QRLabel2.Enabled := False;
      QRLabel3.Enabled := False;
      QRLabel4.Enabled := False;
      QRLabel68.Enabled := False;

      with qu001,SQL do
      Begin
        Close;Clear;
        add(' select ''A'' as SalesID,''A'' as Kode,'''' as NIK,''MUTASI KARYAWAN'' as SalesName,'''' as Jabatan,'
           +' '''' as Divisi,'''' as Lokasi ');
        Open;
      End;

      with qu002,SQL do
      Begin
        Close;Clear;
        Add(' SELECT K.* FROM ( ');
        add(' select ReffID,''A'' as SalesID,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.TransDate,'
           +' SalesName,JabAkhir as Jabatan,ISNULL(D.DivisiName,'''') as Divisi, '
           +' ISNULL(C.SiteName,'''') as Lokasi from HRPromotion A '
           +' inner join ARMsSales B on A.SalesID=B.SalesID '
           +' LEFT JOIN INMsDivisi D on A.DepAkhir=D.DivisiID '
           +' LEFT join INMsSites C on A.LokAkhir=C.SiteID '
           +' WHERE CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.Date)+''' AND '
           +' '''+FormatDateTime('yyyymmdd',dt2.Date)+''' '
           +' ) as K Where K.SalesID=:SalesID ');
        add(' order by K.TransDate DESC,K.ReffID DESC ');
        Parameters.ParamByName('SalesID').DataType := ftString;
        Open;
      End;

      MyReport.PreviewModal;

      finally
        free;
      end;

    end;
    
  end;

end.
