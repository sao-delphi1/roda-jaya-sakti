unit MsAbsensi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, Buttons, dxCore, dxContainer, Grids, comobj, Excel2000,
  ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxButton, dxDBTLCl, dxGrClms;

type
  TfmMsAbsensi = class(TfmStdLv2)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    quMainSalesID: TStringField;
    quMainTanggal: TDateTimeField;
    quMainFgKeluar: TStringField;
    quMainFgOff: TIntegerField;
    quMainFgProses: TStringField;
    quMainLSalesName: TStringField;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    RbCetak: TRadioGroup;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quMainJamMasuk: TDateTimeField;
    quMainJamKeluar: TDateTimeField;
    quMainLNIK: TStringField;
    quAct1: TADOQuery;
    quMainFgShift: TStringField;
    quMainNIK: TStringField;
    quMainFgAbsen: TStringField;
    quMainFgSP: TStringField;
    quMainLEWH: TCurrencyField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridImageColumn;
    dgrReportColumn8: TdxDBGridImageColumn;
    quAct2: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
  private
    procedure CariWaktu;
    { Private declarations }
  public
    dari,sampai,Bulan : string;
    { Public declarations }
  end;

var
  fmMsAbsensi: TfmMsAbsensi;

implementation

uses UnitDate,DateUtils,MyUnit,UnitGeneral,ConMain,StrUtils;
{$R *.dfm}

procedure TfmMsAbsensi.Button1Click(Sender: TObject);
var
  salesid,jammasuk,jamkeluar,tanggal,nik,fgshift,FgSP,FgAbsen : string;
  CountTgl : integer;
  Excel : variant;
  i : integer;
begin
  inherited;
  CariWaktu;
  with quAct2,SQL do
  begin
    Close;Clear;
    Add('Select ISNULL(COUNT(*),0) as Jumlah FROM Calendar Where CONVERT(varchar(10),Transdate,112) between '''+dari+''' and '''+sampai+''' ');
    Open;
  end;

  CountTgl := quAct2.FieldByName('Jumlah').AsInteger;

  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=6;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['D'+inttostr(i)])<>'' do
    begin
      nik := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      with quAct1,SQL do
      begin
        Close;Clear;
        Add('SELECT ISNULL(SalesId,'''') as SalesID FROM ARMsSales Where NIK='''+nik+''' ');
        Open;
      end;
      if quAct1.IsEmpty then
      begin
        ShowMessage('Karyawan dengan NIK: '+nik+' belum ada di Master. Upload Data dihentikan');

        ProgressBar1.Visible := False;
        Label1.Visible := False;
        ComboBox1Change(ComboBox1);
       // Next;
        Abort;
      end;

      SalesId := quAct1.FieldByName('SalesID').AsString;

      FgShift := '1';

      //===========================================================================================================================================

      // TANGGAL 1
      FgAbsen := VarToSTr(Excel.cells.range['M'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['M'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['N'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-01'','''+Edit1.Text+'-'+Bulan+'-01 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-01 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      // TANGGAL 2
      FgAbsen := VarToSTr(Excel.cells.range['O'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['O'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['P'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-02'','''+Edit1.Text+'-'+Bulan+'-02 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-02 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

    // TANGGAL 3
      FgAbsen := VarToSTr(Excel.cells.range['Q'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['Q'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['R'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-03'','''+Edit1.Text+'-'+Bulan+'-03 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-03 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      // TANGGAL 4
      FgAbsen := VarToSTr(Excel.cells.range['S'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['S'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['T'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-04'','''+Edit1.Text+'-'+Bulan+'-04 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-04 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin

        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      // TANGGAL 5
      FgAbsen := VarToSTr(Excel.cells.range['U'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['U'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['V'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-05'','''+Edit1.Text+'-'+Bulan+'-05 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-05 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      // TANGGAL 6
      FgAbsen := VarToSTr(Excel.cells.range['W'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['W'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['X'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-06'','''+Edit1.Text+'-'+Bulan+'-06 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-06 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      // TANGGAL 7
      FgAbsen := VarToSTr(Excel.cells.range['Y'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['Y'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['Z'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-07'','''+Edit1.Text+'-'+Bulan+'-07 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-07 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 8
      FgAbsen := VarToSTr(Excel.cells.range['AA'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AA'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AB'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-08'','''+Edit1.Text+'-'+Bulan+'-08 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-08 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 9
      FgAbsen := VarToSTr(Excel.cells.range['AC'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AC'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AD'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-09'','''+Edit1.Text+'-'+Bulan+'-09 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-09 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 10
      FgAbsen := VarToSTr(Excel.cells.range['AE'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AE'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AF'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-10'','''+Edit1.Text+'-'+Bulan+'-10 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-10 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 11
      FgAbsen := VarToSTr(Excel.cells.range['AG'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AG'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AH'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-11'','''+Edit1.Text+'-'+Bulan+'-11 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-11 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 12
      FgAbsen := VarToSTr(Excel.cells.range['AI'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AI'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AJ'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-12'','''+Edit1.Text+'-'+Bulan+'-12 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-12 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 13
      FgAbsen := VarToSTr(Excel.cells.range['AK'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AK'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AL'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-13'','''+Edit1.Text+'-'+Bulan+'-13 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-13 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 14
      FgAbsen := VarToSTr(Excel.cells.range['AM'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AM'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AN'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-14'','''+Edit1.Text+'-'+Bulan+'-14 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-14 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 15
      FgAbsen := VarToSTr(Excel.cells.range['AO'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AO'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AP'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-15'','''+Edit1.Text+'-'+Bulan+'-15 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-15 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 16
      FgAbsen := VarToSTr(Excel.cells.range['AQ'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AQ'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AR'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-16'','''+Edit1.Text+'-'+Bulan+'-16 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-16 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 17
      FgAbsen := VarToSTr(Excel.cells.range['AS'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AS'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AT'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-17'','''+Edit1.Text+'-'+Bulan+'-17 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-17 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 18
      FgAbsen := VarToSTr(Excel.cells.range['AU'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AU'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AV'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-18'','''+Edit1.Text+'-'+Bulan+'-18 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-18 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 19
      FgAbsen := VarToSTr(Excel.cells.range['AW'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AW'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AX'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-19'','''+Edit1.Text+'-'+Bulan+'-19 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-19 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 20
      FgAbsen := VarToSTr(Excel.cells.range['AY'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['AY'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['AZ'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-20'','''+Edit1.Text+'-'+Bulan+'-20 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-20 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 21
      FgAbsen := VarToSTr(Excel.cells.range['BA'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BA'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BB'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-21'','''+Edit1.Text+'-'+Bulan+'-21 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-21 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 22
      FgAbsen := VarToSTr(Excel.cells.range['BC'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BC'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BD'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-22'','''+Edit1.Text+'-'+Bulan+'-22 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-22 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 23
      FgAbsen := VarToSTr(Excel.cells.range['BE'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BE'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BF'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-23'','''+Edit1.Text+'-'+Bulan+'-23 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-23 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 24
      FgAbsen := VarToSTr(Excel.cells.range['BG'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BG'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BH'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-24'','''+Edit1.Text+'-'+Bulan+'-24 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-24 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 25
      FgAbsen := VarToSTr(Excel.cells.range['BI'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BI'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BJ'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-25'','''+Edit1.Text+'-'+Bulan+'-25 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-25 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 26
      FgAbsen := VarToSTr(Excel.cells.range['BK'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BK'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BL'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-26'','''+Edit1.Text+'-'+Bulan+'-26 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-26 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 27
      FgAbsen := VarToSTr(Excel.cells.range['BM'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BM'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BN'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-27'','''+Edit1.Text+'-'+Bulan+'-27 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-27 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 28
      FgAbsen := VarToSTr(Excel.cells.range['BO'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BO'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BP'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-28'','''+Edit1.Text+'-'+Bulan+'-28 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-28 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;


      // TANGGAL 29
      if (CountTgl>28) then
      begin
      FgAbsen := VarToSTr(Excel.cells.range['BQ'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BQ'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BR'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-29'','''+Edit1.Text+'-'+Bulan+'-29 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-29 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      end;

      if (CountTgl>29) then
      begin

      // TANGGAL 30
      FgAbsen := VarToSTr(Excel.cells.range['BS'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BS'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BT'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-30'','''+Edit1.Text+'-'+Bulan+'-30 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-30 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      end;

      if (CountTgl>30) then
      begin

      // TANGGAL 31
      FgAbsen := VarToSTr(Excel.cells.range['BU'+inttostr(i)]);
      if (FgAbsen<>'C') and (FgAbsen<>'LWP') and (FgAbsen<>'S') and (FgAbsen<>'IJS') and (FgAbsen<>'A') and (FgAbsen<>'X1') and (FgAbsen<>'IJ') and
         (FgAbsen<>'1') and (FgAbsen<>'2') and (FgAbsen<>'3') and (FgAbsen<>'TBY') and (FgAbsen<>'X2') then
      begin
        jammasuk := stringreplace(VarToStr(Excel.cells.range['BU'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jammasuk,2))>23) or (STRTOINT(LEFTSTR(jammasuk,2))<0)
        or (STRTOINT(RIGHTSTR(jammasuk,2))<0) or (STRTOINT(RIGHTSTR(jammasuk,2))>59) then
        jammasuk := '';
        jamkeluar := stringreplace(VarToStr(Excel.cells.range['BV'+inttostr(i)]), '.', ':',[rfReplaceAll, rfIgnoreCase]);
        if (STRTOINT(LEFTSTR(jamkeluar,2))>23) or (STRTOINT(LEFTSTR(jamkeluar,2))<0)
        or (STRTOINT(RIGHTSTR(jamkeluar,2))<0) or (STRTOINT(RIGHTSTR(jamkeluar,2))>59) then
        jamkeluar := '';
        FgAbsen := 'Y';
        FgSP := 'T';
      end else
      begin
        jammasuk := '';
        jamkeluar := '';
        if (FgAbsen='1') or (FgAbsen='2') or (FgAbsen='3') then
        begin
          FgSP := FgAbsen;
          FgAbsen := 'Y';
        end;
      end;

      if SalesID<>'' then
      begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT INTO TrAbsensi (SalesID,Tanggal,JamMasuk,JamKeluar,FgOff,FgKeluar,Fgproses,fgshift,FgAbsen,FgSP) '
           +'VALUES ('''+salesid+''','''+Edit1.Text+'-'+Bulan+'-31'','''+Edit1.Text+'-'+Bulan+'-31 ''+NULLIF('''+jammasuk+''',''''),'
           +''''+Edit1.Text+'-'+Bulan+'-31 ''+NULLIF('''+jamkeluar+''',''''),0,''T'',''T'','''+fgshift+''','''+fgAbsen+''','''+fgSP+''')');
        //ShowMessage(sql.text);
        ExecSQL;
        
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
      end else
      begin

        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;

      end;
      
      i:=i+1;

      //===========================================================================================================================================
      end;

  end ;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data Sudah Berhasil di Upload');
  ComboBox1Change(ComboBox1);
end;

procedure TfmMsAbsensi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmMsAbsensi.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName,NIK FROM ARMsSales Where SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  End;
  quMainLSalesName.AsString := quAct.FieldByName('SalesName').AsString;
  quMainLNIK.AsString := quAct.FieldByName('NIK').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('select ROUND(datediff(ss,JamMasuk,JamKeluar)/3600.00,2) as EWH from TrAbsensi '
       +'Where SalesID='''+quMainSalesID.AsString+''' '
       +'AND CONVERT(VARCHAR(10),Tanggal,112) = '''+FormatDAteTime('yyyymmdd',quMainTanggal.AsDateTime)+''' ');
    Open;
  End;
  quMainLEWH.ASCurrency := quAct.FieldByName('EWH').ASCurrency;
end;

procedure TfmMsAbsensi.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  Edit1.Text := FormatDateTime('YYYY',Date);
  combobox1.ItemIndex := StrToInt(FormatDateTime('MM',Date))-1;

  ComboBox1Change(combobox1);
end;

procedure TfmMsAbsensi.CariWaktu;
begin
  inherited;
  if ComboBox1.ItemIndex=0 then begin dari:=Edit1.Text+'0101'; sampai:=Edit1.Text+'0131'; Bulan:='01'; end;
  if ComboBox1.ItemIndex=1 then begin dari:=Edit1.Text+'0201'; sampai:=Edit1.Text+'0231'; Bulan:='02'; end;
  if ComboBox1.ItemIndex=2 then begin dari:=Edit1.Text+'0301'; sampai:=Edit1.Text+'0331'; Bulan:='03'; end;
  if ComboBox1.ItemIndex=3 then begin dari:=Edit1.Text+'0401'; sampai:=Edit1.Text+'0431'; Bulan:='04'; end;
  if ComboBox1.ItemIndex=4 then begin dari:=Edit1.Text+'0501'; sampai:=Edit1.Text+'0531'; Bulan:='05'; end;
  if ComboBox1.ItemIndex=5 then begin dari:=Edit1.Text+'0601'; sampai:=Edit1.Text+'0631'; Bulan:='06'; end;
  if ComboBox1.ItemIndex=6 then begin dari:=Edit1.Text+'0701'; sampai:=Edit1.Text+'0731'; Bulan:='07'; end;
  if ComboBox1.ItemIndex=7 then begin dari:=Edit1.Text+'0801'; sampai:=Edit1.Text+'0831'; Bulan:='08'; end;
  if ComboBox1.ItemIndex=8 then begin dari:=Edit1.Text+'0901'; sampai:=Edit1.Text+'0931'; Bulan:='09'; end;
  if ComboBox1.ItemIndex=9 then begin dari:=Edit1.Text+'1001'; sampai:=Edit1.Text+'1031'; Bulan:='10'; end;
  if ComboBox1.ItemIndex=10 then begin dari:=Edit1.Text+'1101'; sampai:=Edit1.Text+'1131'; Bulan:='11'; end;
  if ComboBox1.ItemIndex=11 then begin dari:=Edit1.Text+'1201'; sampai:=Edit1.Text+'1231'; Bulan:='12'; end;
end;

procedure TfmMsAbsensi.ComboBox1Change(Sender: TObject);
begin
  inherited;
  CariWaktu;

  with quMain, SQL do
  begin
    Close;Clear;
    Add('SELECT A.*,B.NIK FROM TRAbsensi A INNER JOIN ARMsSales B on A.SalesID=B.SalesID Where CONVERT(VARCHAR(8),A.Tanggal,112) BETWEEN '''+dari+''' AND '''+sampai+''' ');
    if RbCetak.ItemIndex=0 then
    Add('Order By A.SalesID')
    else
    if RbCetak.ItemIndex=1 then
    Add('Order By A.Tanggal')
    else
    Add('Order By B.NIK');
    Open;
  End;
end;

procedure TfmMsAbsensi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
  SetReadOnly2(dgrReportColumn9,TRUE);
  SetReadOnly2(dgrReportColumn10,TRUE);
end;

procedure TfmMsAbsensi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  CariWaktu;

  if (dsMain <> nil) and (dsMain.DataSet <> nil) and (MessageDlg('Hapus Semua Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with quMain, SQL do
    begin
      Close;Clear;
      Add('delete FROM TRAbsensi Where CONVERT(VARCHAR(8),Tanggal,112) BETWEEN '''+dari+''' AND '''+sampai+''' ');
      ExecSQL;
    End;
  end;
end;

end.
