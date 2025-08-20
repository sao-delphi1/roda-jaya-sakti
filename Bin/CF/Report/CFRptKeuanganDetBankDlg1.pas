unit CFRptKeuanganDetBankDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmCFRptKeuanganDetBankDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    dbgList: TdxDBGrid;
    quActRekeningId: TStringField;
    quActRekeningName: TStringField;
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptKeuanganDetBankDlg: TfmCFRptKeuanganDetBankDlg;

implementation

uses CFQRRptKeuanganDlg, UnitGeneral, StdLv0, CFQRRptKeuanganDet,
  CFQRRptKeuanganDetBank, UnitDate;

{$R *.dfm}

procedure TfmCFRptKeuanganDetBankDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmCFQRRptKeuanganDetBank.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date;
       TanggalSampai := dt2.Date;


      with qu001,sql do
      Begin
        Close;Clear;
        Add(' Select Distinct B.ValutaId'
           +' FROM ALLMONEY B WHERE FgBBKK IN(''BM'',''BK'',''PIB'')'
           +' ORDER BY B.ValutaID');
           Open;
      End;

      With qu002,sql do
      Begin
         Close;Clear;
         Add(' Select Distinct A.RekeningId,ValutaId,(A.RekeningId+''-''+B.RekeningName) as Rek,B.RekeningName FROM '
            +' ALLMONEY A INNER JOIN CFMsRekening B ON A.rekeningId=B.rekeningId WHERE ValutaId=:ValutaId AND FgBBKK IN(''BM'',''BK'',''PIB'') AND'
            +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
         if rbSelect.Checked then
         Add(' AND A.RekeningId IN '+SelGrid(quAct,dbgList,'RekeningID'));
         Add(' ORDER BY A.RekeningId ');
         Parameters.ParamByName('ValutaId').DataType := ftString;
         Open;
      End;

      qu003.Open;
     
     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmCFRptKeuanganDetBankDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
  quAct.Open;
end;

procedure TfmCFRptKeuanganDetBankDlg.rbSelectClick(Sender: TObject);
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

end.
