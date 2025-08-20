unit ARRptHM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEdLib, dxEditor, dxCore, dxButton, dxDBGrid, dxTL, dxDBCtrl;

type
  TfmARRptHM = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GroupBox2: TGroupBox;
    dxDateEdit1: TdxDateEdit;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    dbgList: TdxDBGrid;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    dbgItem: TdxDBGrid;
    dxDBGridItemID: TdxDBGridColumn;
    dxDBGridItemName: TdxDBGridColumn;
    Panel1: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    bbCari: TdxButton;
    dxButton1: TdxButton;
    quUnit: TADOQuery;
    dsUnit: TDataSource;
    quUnitNoUnit: TStringField;
    quUnitDescription: TStringField;
    quActCustID: TStringField;
    quActCustName: TStringField;
    GroupBox3: TGroupBox;
    dxDateEdit2: TdxDateEdit;
    dxTahunA: TdxSpinEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    dxImageEdit1: TdxImageEdit;
    procedure FormShow(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure bbCariClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stLap : string;
  end;

var
  fmARRptHM: TfmARRptHM;

implementation

uses MyUnit, UnitGeneral, UnitDate, ConMain, Search, ARQRRptHM, ARQRRptHMBulan, ARQRRptHMUnit;

{$R *.dfm}

procedure TfmARRptHM.FormShow(Sender: TObject);
begin
  inherited;
  if StLap='U' then
  begin
    Caption := 'Penagihan per Unit';
    latitle.Caption := 'Penagihan per Unit';
    GroupBox2.Visible := False;
    GroupBox3.Visible := False;
    RadioGroup1.Visible := False;
    dxImageEdit1.Visible := False;
    Label1.Visible := False;
  end else
  begin
    GroupBox1.Visible := False;
    RadioGroup1Click(RadioGroup1);
  end;
  
  dt1.Date := EncodeDate(GetYear(Date),1,1);
  dt2.Date := Date;

  dxTahun.Text := FormatDateTime('YYYY',Date);
  dxTahunA.Text := FormatDateTime('YYYY',Date);
  dxBulan.Text := FormatDateTime('MM',Date);
  dxImageEdit1.Text := 'HM';

  quAct.Open;
  quUnit.Open;
end;

procedure TfmARRptHM.RadioButton3Click(Sender: TObject);
begin
  inherited;
  if Sender=RadioButton3 then
  begin
     dbgList.OptionsBehavior := dbgItem.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=RadioButton4 then
  begin
     dbgList.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := True;
  end;
end;

procedure TfmARRptHM.RadioButton1Click(Sender: TObject);
begin
  inherited;
  if Sender=RadioButton1 then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=RadioButton2 then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgItem.FocusedNode <> nil then
       dbgItem.FocusedNode.Selected := True;
  end;
end;

procedure TfmARRptHM.bbCariClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pelanggan';
     SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan'
                 +' FROM ARMsCustomer A '
                 +' ORDER BY CustName';
     if ShowModal = MrOK then
     begin
       Self.quAct.Locate('CustID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARRptHM.dxButton1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari No Unit';
     SQLString := ' SELECT NoUnit,Description From INMsNoUnit';
     if ShowModal = MrOK then
     begin
       Self.quUnit.Locate('NoUnit',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARRptHM.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    GroupBox2.Visible := True;
    GroupBox3.Visible := False;
  end else
  begin
    GroupBox2.Visible := False;
    GroupBox3.Visible := True;
  end;
end;

procedure TfmARRptHM.bbPreviewClick(Sender: TObject);
var Tahun,Satuan,PeriodeLap,PrdDari,PrdSmp : string;
begin
  inherited;

  if stLap='U' then
  begin
      with TfmARQRRptHMUnit.Create(Self) do
      try
        qrlTitle.Caption := laTitle.Caption;
        qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.Date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.Date);

        with qu001,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.NoUnit,C.Description,A.NoUnit+'' - ''+C.Description as Unit '
             +'from ARTrKonInvPelDt A '
             +'INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'INNER JOIN INMsNoUnit C on A.NoUnit=C.NoUnit '
             +'WHERE CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.Date)+''' '
             +'AND '''+FormatDateTime('yyyymmdd',dt2.Date)+''' ');
          if RadioButton2.Checked then
          Add(' and A.NoUnit IN '+SelGrid(quUnit,dbgItem,'NOUnit'));
          Open;
        end;

        with qu002,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.UOMID as Satuan,A.NoUnit '
             +'from ARTrKonInvPelDt A '
             +'INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'INNER JOIN INMsNoUnit C on A.NoUnit=C.NoUnit '
             +'WHERE A.NoUnit=:NoUnit '
             +'AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.Date)+''' AND '''+FormatDateTime('yyyymmdd',dt2.Date)+''' ');
          Parameters.ParamByName('NoUnit').DataType := ftString;
          Open;
        end;

        with qu003,SQL do
        begin
          Close;Clear;
          add('SELECT CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal,B.KonInvPelID,A.Qty,A.UOMID,B.NoKontrak,B.PeriodeCharge '
             +'from ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'Where A.NoUnit=:NoUnit '
             +'AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.Date)+''' AND '''+FormatDateTime('yyyymmdd',dt2.Date)+''' '
             +'AND A.UOMID=:Satuan ');
          if RadioButton4.Checked then
          Add(' and B.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
          Add(' ORDER by B.TransDate ');
          Parameters.ParamByName('NoUnit').DataType := ftString;
          Parameters.ParamByName('Satuan').DataType := ftString;
          //showmessage(sql.Text);
          Open;
        end;

        if Sender=bbPrint then
          MyReport.Print
        else
          MyReport.PreviewModal;

      finally
        free;
      end;
  end else
  begin

    if RadioGroup1.ItemIndex=0 then
    begin
      if dxBulan.Text = '01' then
      begin
        PeriodeLap := 'Januari';
        PrdDari := dxTahun.Text+'0101';
        PrdSmp := dxTahun.Text+'0131';
      end;
      if dxBulan.Text = '02' then
      begin
        PeriodeLap := 'Februari';
        PrdDari := dxTahun.Text+'0201';
        PrdSmp := dxTahun.Text+'0229';
      end;
      if dxBulan.Text = '03' then
      begin
        PeriodeLap := 'Maret';
        PrdDari := dxTahun.Text+'0331';
        PrdSmp := dxTahun.Text+'0331';
      end;
      if dxBulan.Text = '04' then
      begin
        PeriodeLap := 'April';
        PrdDari := dxTahun.Text+'0401';
        PrdSmp := dxTahun.Text+'0430';
      end;
      if dxBulan.Text = '05' then
      begin
        PeriodeLap := 'Mei';
        PrdDari := dxTahun.Text+'0501';
        PrdSmp := dxTahun.Text+'0531';
      end;
      if dxBulan.Text = '06' then
      begin
        PeriodeLap := 'Juni';
        PrdDari := dxTahun.Text+'0601';
        PrdSmp := dxTahun.Text+'0630';
      end;
      if dxBulan.Text = '07' then
      begin
        PeriodeLap := 'Juli';
        PrdDari := dxTahun.Text+'0701';
        PrdSmp := dxTahun.Text+'0731';
      end;
      if dxBulan.Text = '08' then
      begin
        PeriodeLap := 'Agustus';
        PrdDari := dxTahun.Text+'0801';
        PrdSmp := dxTahun.Text+'0831';
      end;
      if dxBulan.Text = '09' then
      begin
        PeriodeLap := 'September';
        PrdDari := dxTahun.Text+'0901';
        PrdSmp := dxTahun.Text+'0930';
      end;
      if dxBulan.Text = '10' then
      begin
        PeriodeLap := 'Oktober';
        PrdDari := dxTahun.Text+'1001';
        PrdSmp := dxTahun.Text+'1031';
      end;
      if dxBulan.Text = '11' then
      begin
        PeriodeLap := 'November';
        PrdDari := dxTahun.Text+'1101';
        PrdSmp := dxTahun.Text+'1130';
      end;
      if dxBulan.Text = '12' then
      begin
        PeriodeLap := 'Desember';
        PrdDari := dxTahun.Text+'1201';
        PrdSmp := dxTahun.Text+'1231';
      end;

      Satuan := dxImageEdit1.Text;

      with TfmARQRRptHMBulan.Create(Self) do
      try
        qrlTitle.Caption := laTitle.Caption+' per '+Satuan;
        qrlPeriode.Caption := 'Periode : '+PeriodeLap+' '+dxTahun.Text;

        with qu001,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.CustID,B.CustName,B.CustName+'' - ''+A.CustID as Customer FROM ARTrKonInvPelHd A inner join ARMsCustomer B on A.CustID=B.CustID '
             +'WHERE CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+PrdDari+''' AND '''+PrdSmp+''' ');
          if RadioButton4.Checked then
          Add(' and A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
          Add(' ORDER BY B.CustName ');
          Open;
        end;

        with qu002,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.NoUnit,C.Description,A.NoUnit+'' - ''+C.Description as Unit,B.CustID '
             +'from ARTrKonInvPelDt A '
             +'INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'INNER JOIN INMsNoUnit C on A.NoUnit=C.NoUnit '
             +'WHERE B.CustID=:CustID '
             +'AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+PrdDari+''' AND '''+PrdSmp+''' AND A.UOMID='''+Satuan+''' ');
          if RadioButton2.Checked then
          Add(' and A.NoUnit IN '+SelGrid(quUnit,dbgItem,'NOUnit'));
          Parameters.ParamByName('CustID').DataType := ftString;
          Open;
        end;

        with qu003,SQL do
        begin
          Close;Clear;
          add('SELECT CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal,B.KonInvPelID,A.Qty,A.UOMID,B.NoKontrak,B.PeriodeCharge '
             +'from ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'Where A.NoUnit=:NoUnit AND B.CustID=:CustID '
             +'AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+PrdDari+''' AND '''+PrdSmp+''' AND A.UOMID='''+Satuan+''' '
             +'ORDER by B.TransDate ');
          Parameters.ParamByName('NoUnit').DataType := ftString;
          Parameters.ParamByName('Custid').DataType := ftString;
          //showmessage(sql.Text);
          Open;
        end;

        if Sender=bbPrint then
          MyReport.Print
        else
          MyReport.PreviewModal;

      finally
        free;
      end;
    end else
    begin
      Tahun := dxTahunA.Text;
      Satuan := dxImageEdit1.Text;

      with TfmARQRRptHM.Create(Self) do
      try
        qrlTitle.Caption := laTitle.Caption+' per '+Satuan;
        qrlPeriode.Caption := 'Periode : '+Tahun;

        with qu001,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.CustID,B.CustName,B.CustName+'' - ''+A.CustID as Customer FROM ARTrKonInvPelHd A inner join ARMsCustomer B on A.CustID=B.CustID '
             +'WHERE CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+Tahun+'0101'' AND '''+Tahun+'1231'' ');
          if RadioButton4.Checked then
          Add(' and A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
          Add(' ORDER BY B.CustName ');
          Open;
        end;

        with qu002,SQL do
        begin
          Close;Clear;
          add('SELECT DISTINCT A.NoUnit, '
             +'B.CustID as Cust1, '
             +'B.CustID as Cust2, '
             +'B.CustID as Cust3, '
             +'B.CustID as Cust4, '
             +'B.CustID as Cust5, '
             +'B.CustID as Cust6, '
             +'B.CustID as Cust7, '
             +'B.CustID as Cust8, '
             +'B.CustID as Cust9, '
             +'B.CustID as Cust10, '
             +'B.CustID as Cust11, '
             +'B.CustID as Cust12 '
             +'from ARTrKonInvPelDt A '
             +'INNER JOIN ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID '
             +'WHERE B.CustID=:CustID '
             +'AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+Tahun+'0101'' AND '''+Tahun+'1231'' ');
          if RadioButton2.Checked then
          Add(' and A.NoUnit IN '+SelGrid(quUnit,dbgItem,'NOUnit'));
          Parameters.ParamByName('CustID').DataType := ftString;
          Open;
        end;

        with qu003,SQL do
        begin
          Close;Clear;
          add('SELECT K.*,K.JAN+K.FEB+K.MAR+K.APR+K.MAY+K.JUN+K.JUL+K.AUG+K.SEP+K.OCT+K.NOV+K.DEC as Total FROM ( '
             +'SELECT A.NoUnit,A.Description, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0101'' AND '''+Tahun+'0131'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust1),0) as Jan, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0201'' AND '''+Tahun+'0229'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust2),0) as Feb, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0301'' AND '''+Tahun+'0331'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust3),0) as Mar, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0401'' AND '''+Tahun+'0430'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust4),0) as Apr, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0501'' AND '''+Tahun+'0531'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust5),0) as May, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0601'' AND '''+Tahun+'0630'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust6),0) as Jun, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0701'' AND '''+Tahun+'0731'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust7),0) as Jul, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0801'' AND '''+Tahun+'0831'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust8),0) as Aug, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'0901'' AND '''+Tahun+'0930'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust9),0) as Sep, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'1001'' AND '''+Tahun+'1031'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust10),0) as Oct, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'1101'' AND '''+Tahun+'1130'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust11),0) as Nov, '
             +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y on X.KonInvPelID=Y.KonInvPelID WHERE X.NoUnit=A.NoUnit '
             +'AND CONVERT(VARCHAR(10),Y.TransDate,112) BETWEEN '''+Tahun+'1201'' AND '''+Tahun+'1231'' AND X.UOMID='''+Satuan+''' AND X.NoUnit=A.NoUnit AND Y.CustID=:Cust12),0) as Dec '
             +'FROM INMsNoUnit A ) as K Where K.NoUnit=:NoUnit '
             +'ORDER by K.NoUnit ');
          Parameters.ParamByName('NoUnit').DataType := ftString;
          Parameters.ParamByName('Cust1').DataType := ftString;
          Parameters.ParamByName('Cust2').DataType := ftString;
          Parameters.ParamByName('Cust3').DataType := ftString;
          Parameters.ParamByName('Cust4').DataType := ftString;
          Parameters.ParamByName('Cust5').DataType := ftString;
          Parameters.ParamByName('Cust6').DataType := ftString;
          Parameters.ParamByName('Cust7').DataType := ftString;
          Parameters.ParamByName('Cust8').DataType := ftString;
          Parameters.ParamByName('Cust9').DataType := ftString;
          Parameters.ParamByName('Cust10').DataType := ftString;
          Parameters.ParamByName('Cust11').DataType := ftString;
          Parameters.ParamByName('Cust12').DataType := ftString;
          //showmessage(sql.Text);
          Open;
        end;

        if Sender=bbPrint then
          MyReport.Print
        else
          MyReport.PreviewModal;

      finally
        free;
      end;
    end;
  end;
end;

end.
