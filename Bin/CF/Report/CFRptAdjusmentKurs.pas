unit CFRptAdjusmentKurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmCFRptAdjustmentKurs = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    Edit1: TEdit;
    Label1: TLabel;
    quAwal: TADOQuery;
    quHeader: TADOQuery;
    quDetail: TADOQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptAdjustmentKurs: TfmCFRptAdjustmentKurs;

implementation

uses UnitGeneral, UnitDate, ConMain, MyUnit, Search;

{$R *.dfm}

procedure TfmCFRptAdjustmentKurs.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TfmCFRptAdjustmentKurs.FormShow(Sender: TObject);
begin
  inherited;
  Dt1.Date := Date;
end;

procedure TfmCFRptAdjustmentKurs.bbPreviewClick(Sender: TObject);
var NoVoucher,ST,Jenis : string;
    Jumlah,Awal,AwalA,TotalNow,Selisih,RugiLaba : currency;
begin
  inherited;
  if TRIM(Edit2.Text)='' THEN
  begin
    ShowMessage('Rekening Selisih Kurs Belum Diisi!');
    Abort;
  End;
  
  ST := 'RATE'+ FormatDateTime('-YYMM', dt1.Date);
  NoVoucher  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherID', ST, '0') + 1);
  Jumlah := StrtoCurr(Edit1.Text);
  RugiLaba := 0;

  with quHeader,SQL do
  begin
    Close;Clear;
    Add('INSERT CFTrKKBBHd (VoucherID,TransDate,Note,FlagKKBB,UpdDate,UpdUser,CurrId,JumlahD,JumlahK,FgPayment,IDVoucher) '
       +'VALUES ('''+NoVoucher+''','''+FormatDateTime('yyyy-mm-dd',dt1.Date)+''',''ADJUSTMENT RATE'',''TB'',getdate(),'''+dmMain.UserId+''',''IDR'',0,'
       +'0,''T'','''+NoVoucher+''')');
    ExecSQL;
  end;

  with quAwal,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT K.RekeningID,M.Urut,ISNULL(SUM(CASE WHEN K.Jenis=''D'' THEN (CASE WHEN K.CurrID=''IDR'' THEN K.Amount ELSE K.Amount*K.Rate END) '
       +'ELSE (CASE WHEN K.CurrID=''IDR'' THEN K.Amount ELSE K.Amount*K.Rate END)*-1 END),0) as Awal,'
       +'ISNULL(SUM(CASE WHEN K.Jenis=''D'' THEN (CASE WHEN K.CurrID<>''IDR'' THEN K.Amount ELSE 0 END) '
       +'ELSE (CASE WHEN K.CurrID<>''IDR'' THEN K.Amount ELSE 0 END)*-1 END),0) as AwalA FROM ('
       +'SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL '
       +'SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
       +'WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),A.CurrID,A.Rate FROM CFTrKKBBHd A '
       +'INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' UNION ALL '
       //tabel penjualan
       +'SELECT RekeningU,Transdate,''D'',ISNULL(TTLKj,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL ' 
       +'SELECT RekeningD,Transdate,''D'',ISNULL((STKJ*Discount*0.01),0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(StKj,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningO,Transdate,''K'',ISNULL(Ongkir,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningA,Transdate,''K'',ISNULL(Administrasi,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningR,Transdate,''K'',ISNULL(RePack,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE (STKJ-(STKJ*Discount*0.01))*0.1 END,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningPsd,transdate,''K'',ISNULL(Modal,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningHpp,transdate,''D'',ISNULL(Modal,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       //tabel pembelian
       +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLks,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningK,Transdate,''D'',ISNULL(SubTotal,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningO,Transdate,''D'',ISNULL(Ongkir,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningR,Transdate,''D'',ISNULL(Repack,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningA,Transdate,''D'',ISNULL(Administrasi,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningD,Transdate,''K'',ISNULL(SubTotal*Disc*0.01,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningDP,Transdate,''D'',ISNULL(DP,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       //retur pembelian
       +'SELECT RekeningD,Transdate,''D'',ISNULL(TTLRetur,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(TTLPPN,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(TTLRetur-TTLPPN+TTLDiskon,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningDisc,Transdate,''D'',ISNULL(TTLDiskon,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       //retur penjualan
       +'SELECT RekeningD,Transdate,''D'',ISNULL(TTLRetur,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(TTLPPN,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(TTLRetur-TTLPPN+TTLDiskon,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningDisc,Transdate,''D'',ISNULL(TTLDiskon,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       //adjustment
       +'SELECT '''+sDGRPb+''',B.TransDate,CASE WHEN A.fgStatus=''T'' THEN ''D'' ELSE ''K'' END,ISNULL(A.Qty*A.Price,0),''IDR'',1 FROM INTrAdjustmentDt A '
       +'Inner join INTrAdjustmentHd B on A.TransID=B.TransID and A.RekeningID is not null UNION ALL '
       +'SELECT A.RekeningID,B.TransDate,CASE WHEN A.fgStatus=''T'' THEN ''K'' ELSE ''D'' END,ISNULL(A.Qty*A.Price,0),''IDR'',1 FROM INTrAdjustmentDt A '
       +'Inner join INTrAdjustmentHd B on A.TransID=B.TransID and A.RekeningID is not null '
       +') as K INNER JOIN CFMsRekening L on K.RekeningID=L.RekeningID INNER JOIN CFMsGroupRek M on L.GroupRekID=M.GroupRekID '
       +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
       +'AND L.CurrID<>''IDR'' GROUP BY K.RekeningID,M.Urut ');
    Open;

    while not eof do
    begin
      Awal := quAwal.FieldByName('AwalA').AsCurrency;
      AwalA := quAwal.FieldByName('Awal').AsCurrency;
      TotalNow := Awal*Jumlah;
      if TotalNow > AwalA then
      begin
        Selisih := TotalNow-AwalA;
        if (quAwal.FieldByName('Urut').AsString = '2') or (quAwal.FieldByName('Urut').AsString = '3') then
        Jenis := 'K'
        else
        Jenis := 'D';
      end else
      begin
        Selisih := AwalA-TotalNow;
        if (quAwal.FieldByName('Urut').AsString = '2') or (quAwal.FieldByName('Urut').AsString = '3') then
        Jenis := 'D'
        else
        Jenis := 'K';
      end;

      if jenis='D' then
      RugiLaba := RugiLaba + Selisih
      else
      RugiLaba := RugiLaba - Selisih;

      with quDetail,SQL do
      begin
        Close;Clear;
        Add('INSERT CFTrKKBBDt (VoucherID,RekeningID,Jenis,Amount,Note) '
           +'SELECT '''+NoVoucher+''','''+quAwal.FieldByName('RekeningID').AsString+''','''+Jenis+''' as Jenis,'''+CurrToStr(Selisih)+''',''ADJUSTMENT RATE'' ');
        ExecSQL;
      end;

     quAwal.Next;
     end;
   end;

   if RugiLaba<0 then
   begin
     RugiLaba := RugiLaba*-1;
     jenis := 'D';
   end else
   begin
     jenis := 'K';
   end;

   with quDetail,SQL do
   begin
     Close;Clear;
     Add('INSERT CFTrKKBBDt (VoucherID,RekeningID,Jenis,Amount,Note) '
        +'SELECT '''+NoVoucher+''','''+Edit2.Text+''','''+Jenis+''' as Jenis,'''+CurrToStr(RugiLaba)+''',''ADJUSTMENT RATE'' ');
     ExecSQL;
   end;

   ShowMessage('Proses Adjustment Sudah Selesai');
end;

procedure TfmCFRptAdjustmentKurs.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT DISTINCT RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +'A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening '
                   +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId '
                   +'WHERE A.FgActive=''Y'' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          Edit2.Text := Res[1];
       end;
    finally
       free;
    end;
end;

end.
