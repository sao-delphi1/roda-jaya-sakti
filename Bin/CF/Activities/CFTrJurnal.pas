unit CFTrJurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, Buttons, dxCore, dxContainer, dxButton, dxEdLib, dxEditor,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmCFTrJurnal = class(TfmStdLv2)
    Panel1: TPanel;
    rbJenis: TRadioGroup;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GroupBox2: TGroupBox;
    edPartWord: TdxEdit;
    bbLoad: TdxButton;
    Panel2: TPanel;
    dbgHeader: TdxDBGrid;
    dxButton1: TdxButton;
    dbgList: TdxDBGrid;
    rgTransaksi: TRadioGroup;
    quMainVoucherID: TStringField;
    quMainTgl: TStringField;
    quMainActor: TStringField;
    quMainBankName: TStringField;
    quMainNote: TStringField;
    quMainFlagKKBB: TStringField;
    quMainCurrID: TStringField;
    quMainJumlahD: TBCDField;
    quMainJumlahK: TBCDField;
    dbgHeaderVoucherID: TdxDBGridColumn;
    dbgHeaderReferensi: TdxDBGridColumn;
    dbgHeaderTgl: TdxDBGridColumn;
    dbgHeaderActor: TdxDBGridColumn;
    dbgHeaderBankName: TdxDBGridColumn;
    dbgHeaderNote: TdxDBGridColumn;
    dbgHeaderFlagKKBB: TdxDBGridMaskColumn;
    dbgHeaderCurrID: TdxDBGridColumn;
    dbgHeaderJumlahD: TdxDBGridColumn;
    dbgHeaderJumlahK: TdxDBGridColumn;
    quMainStatus: TStringField;
    dbgHeaderStatus: TdxDBGridColumn;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    dbgListVoucherID: TdxDBGridMaskColumn;
    dbgListRekeningID: TdxDBGridColumn;
    dbgListRekeningName: TdxDBGridColumn;
    dbgListAmount: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    dbgListJenis: TdxDBGridColumn;
    dbgListDebit: TdxDBGridColumn;
    quDetilVoucherID: TStringField;
    quDetilRekeningID: TStringField;
    quDetilRekeningName: TStringField;
    quDetilNote: TStringField;
    quDetilDebit: TBCDField;
    quDetilKredit: TBCDField;
    quDetilLNote: TStringField;
    dbgListLNote: TdxDBGridColumn;
    quCalc: TADOQuery;
    dxButton2: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure rbJenisClick(Sender: TObject);
    procedure bbLoadClick(Sender: TObject);
    procedure dbgHeaderClick(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dbgHeaderChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxButton1Click(Sender: TObject);
    procedure dt2KeyPress(Sender: TObject; var Key: Char);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshForm;
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmCFTrJurnal: TfmCFTrJurnal;

implementation

uses MyUnit, StdLv0, RptGLTrKMKK, RptJurnalDay, RptLv0, UnitDate, UnitGeneral;

{$R *.dfm}

procedure TfmCFTrJurnal.RefreshForm;
begin
  if rbJenis.ItemIndex = 0 then
  begin
    GroupBox1.Visible := True;
    GroupBox2.Visible := False;
    edPartWord.Clear;
    dt1.SetFocus;
  end else
  begin
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    edPartWord.Clear;
    edPartWord.SetFocus;
  end;
  if rgTransaksi.ItemIndex = 7 then
  begin
    dbgListNote.Visible := False;
    dbgListLNote.Visible := True;
  end else
  begin
    dbgListNote.Visible := True;
    dbgListLNote.Visible := False;
  end;

end;

procedure TfmCFTrJurnal.RefreshData;
begin
  if (quMainFlagKKBB.AsString = 'KM') or (quMainFlagKKBB.AsString = 'ARK') then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,K.Note,ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit,'
         +'ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ('
         +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahD,0) as Amount,Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd '
         +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId=:VoucherID '
         +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if (quMainFlagKKBB.AsString = 'KK') or (quMainFlagKKBB.AsString = 'APK') then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,K.Note,ISNULL(CASE WHEN K.Jenis=''K'' THEN 0 ELSE K.Amount END,0) as Debit,'
         +'ISNULL(CASE WHEN K.Jenis=''D'' THEN 0 ELSE K.Amount END,0) as Kredit FROM ('
         +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahK,0) as Amount,Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd '
         +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId=:VoucherID '
         +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if (quMainFlagKKBB.AsString = 'BM') or (quMainFlagKKBB.AsString = 'ARB') or (quMainFlagKKBB.AsString = 'ARC') then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,K.Note,ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit,'
         +'ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ('
         +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahD,0) as Amount,A.Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd A '
         +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
         +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId=:VoucherID '
         +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if (quMainFlagKKBB.AsString = 'BK') or (quMainFlagKKBB.AsString = 'APB') or (quMainFlagKKBB.AsString = 'APC') then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,K.Note,ISNULL(CASE WHEN K.Jenis=''K'' THEN 0 ELSE K.Amount END,0) as Debit,'
         +'ISNULL(CASE WHEN K.Jenis=''D'' THEN 0 ELSE K.Amount END,0) as Kredit FROM ('
         +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahK,0) as Amount,A.Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd A '
         +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
         +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId=:VoucherID '
         +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if quMainFlagKKBB.AsString = 'JU' then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,K.Note,ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit,'
         +'ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ('
         +'SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END as Urut,Jenis,UpdDate FROM CFTrKKBBDt) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId=:VoucherID '
         +'ORDER BY K.UpdDate,K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if quMainFlagKKBB.AsString = 'INV' then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
        add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,L.RekeningName+'' Atas Invoice ''+K.VoucherID as Note,'
           +'ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit,ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ('
           +'SELECT KonInvPelID as VoucherID,RekeningU as RekeningID,ISNULL(TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0) as Amount,''D'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningP,ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE StKj*0.1 END,0),''K'',2  FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningK,ISNULL(StKj-Discount,0),''K'',2 FROM ARTrKonInvPelHd) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE K.VoucherID=:VoucherID '
           +'ORDER BY K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end else
  if quMainFlagKKBB.AsString = 'BUY' then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
        add('SELECT K.VoucherID,K.RekeningID,L.RekeningName,L.RekeningName+'' Atas Invoice ''+K.VoucherID as Note,'
           +'ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit,ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ('
           +'SELECT KonsinyasiInvid as VoucherID,RekeningU as RekeningID,ISNULL(TTLKS,0) as Amount,''K'' as Jenis,3 as Urut FROM ApTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvid,RekeningP,ISNULL(PPN,0) as Amount,''D'',2 FROM ApTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvid,RekeningK,ISNULL(SubTotal,0) as Amount,''D'',1 FROM ApTrKonsinyasiInvHd) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE K.VoucherID=:VoucherID '
           +'ORDER BY K.Urut,K.RekeningID');
      Parameters.ParamByName('VoucherID').DataType := ftString;
      Open;
    end;
  end;
end;

procedure TfmCFTrJurnal.FormShow(Sender: TObject);
begin
  UsePeriod := FALSE;
  inherited;
  RefreshForm;
  dt1.Date := EncodeDate(GetYear(Date),getMonth(date),1);
  dt2.Date := Date;
  bbLoadClick(bbLoad);
end;

procedure TfmCFTrJurnal.rbJenisClick(Sender: TObject);
begin
  inherited;
  RefreshForm;
end;

procedure TfmCFTrJurnal.bbLoadClick(Sender: TObject);
begin
  inherited;
  if rbJenis.ItemIndex = 0 then
  begin
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT K.VoucherID,'
         +'CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Actor,L.BankName,K.Note,K.FlagKKBB,K.CurrID,K.JumlahD,K.JumlahK,'
         +'CASE WHEN K.FlagKKBB=''KM'' THEN ''KAS MASUK'' '
         +'     WHEN K.FlagKKBB=''ARK'' THEN ''PIUTANG SECARA KAS'' '
         +'     WHEN K.FlagKKBB=''ARB'' THEN ''PIUTANG SECARA BANK'' '
         +'     WHEN K.FlagKKBB=''ARC'' THEN ''PIUTANG SECARA GIRO'' '
         +'     WHEN K.FlagKKBB=''KK'' THEN ''KAS KELUAR'' '
         +'     WHEN K.FlagKKBB=''APK'' THEN ''HUTANG SECARA KAS'' '
         +'     WHEN K.FlagKKBB=''APB'' THEN ''HUTANG SECARA BANK'' '
         +'     WHEN K.FlagKKBB=''APC'' THEN ''HUTANG SECARA GIRO'' '
         +'     WHEN K.FlagKKBB=''BM'' THEN ''BANK MASUK'' '
         +'     WHEN K.FlagKKBB=''BK'' THEN ''BANK KELUAR'' '
         +'     WHEN K.FlagKKBB=''JU'' THEN ''JURNAL UMUM'' '
         +'     WHEN K.FlagKKBB=''INV'' THEN ''INVOICE PENJUALAN'' '
         +'     WHEN K.FlagKKBB=''BUY'' THEN ''INVOICE PEMBELIAN'' END as Status FROM ('
         +'SELECT CASE WHEN FlagKKBB=''GC'' THEN IDVoucher ELSE VoucherID END as VoucherID,'
         +'Transdate,Actor,A.BankID,A.Note,FlagKKBB,CurrID,JumlahD,JumlahK FROM CFTrKKBBHd A WHERE FgPayment=''T'' UNION ALL '
         +'SELECT KonInvPelID,Transdate,CustName,A.BankID,A.Note,''INV'',CurrID,ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0),'
         +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0) FROM ARTrKonInvPelHd A '
         +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID UNION ALL SELECT KonsinyasiInvId,Transdate,SuppName,'''',A.Note,''BUY'',CurrID,ISNULL(A.TTLKS,0),ISNULL(A.TTLKS,0)'
         +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID) as K LEFT JOIN CFMsBank L ON K.BankID=L.BankID '
         +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
      if rgTransaksi.ItemIndex = 1 then
         Add(' AND K.FlagKKBB IN (''KM'',''ARK'') ');
      if rgTransaksi.ItemIndex = 2 then
         Add(' AND K.FlagKKBB IN (''KK'',''APK'') ');
      if rgTransaksi.ItemIndex = 3 then
         Add(' AND K.FlagKKBB IN (''BM'',''ARB'',''ARC'') ');
      if rgTransaksi.ItemIndex = 4 then
         Add(' AND K.FlagKKBB IN (''BK'',''APB'',''APC'') ');
      if rgTransaksi.ItemIndex = 5 then
         Add(' AND K.FlagKKBB=''JU'' ');
      if rgTransaksi.ItemIndex = 6 then
         Add(' AND K.FlagKKBB=''INV'' ');
      if rgTransaksi.ItemIndex = 7 then
         Add(' AND K.FlagKKBB=''BUY'' ');
      Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.VoucherID');
      Open;
    end;
  end else
  begin
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT K.VoucherID,'
         +'CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Actor,L.BankName,K.Note,K.FlagKKBB,K.CurrID,K.JumlahD,K.JumlahK,'
         +'CASE WHEN K.FlagKKBB=''KM'' THEN ''KAS MASUK'' '
         +'     WHEN K.FlagKKBB=''KK'' THEN ''KAS KELUAR'' '
         +'     WHEN K.FlagKKBB=''BM'' THEN ''BANK MASUK'' '
         +'     WHEN K.FlagKKBB=''BK'' THEN ''BANK KELUAR'' '
         +'     WHEN K.FlagKKBB=''JU'' THEN ''JURNAL UMUM'' '
         +'     WHEN K.FlagKKBB=''INV'' THEN ''INVOICE PENJUALAN'' '
         +'     WHEN K.FlagKKBB=''BUY'' THEN ''INVOICE PEMBELIAN'' END as Status FROM ('
         +'SELECT CASE WHEN FlagKKBB=''GC'' THEN IDVoucher ELSE VoucherID END as VoucherID,'
         +'Transdate,Actor,A.BankID,A.Note,FlagKKBB,CurrID,JumlahD,JumlahK FROM CFTrKKBBHd A WHERE FgPayment=''T'' UNION ALL '
         +'SELECT KonInvPelID,Transdate,CustName,A.BankID,A.Note,''INV'',CurrID,'
         +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount+Discount*0.1 END),0),'
         +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount+Discount*0.1 END),0) FROM ARTrKonInvPelHd A '
         +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID UNION ALL '
         +'SELECT KonsinyasiInvId,Transdate,SuppName,'''',A.Note,''BUY'',CurrID,ISNULL(TTLKS,0),ISNULL(TTLKS,0) '
         +'FROM ApTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID) as K LEFT JOIN CFMsBank L ON K.BankID=L.BankID ');
      if rgTransaksi.ItemIndex = 1 then
         Add(' AND K.FlagKKBB IN (''KM'',''ARK'') ');
      if rgTransaksi.ItemIndex = 2 then
         Add(' AND K.FlagKKBB IN (''KK'',''APK'') ');
      if rgTransaksi.ItemIndex = 3 then
         Add(' AND K.FlagKKBB IN (''BM'',''ARB'',''ARC'') ');
      if rgTransaksi.ItemIndex = 4 then
         Add(' AND K.FlagKKBB IN (''BK'',''APB'',''APC'') ');
      if rgTransaksi.ItemIndex = 5 then
         Add(' AND K.FlagKKBB=''JU'' ');
      if rgTransaksi.ItemIndex = 6 then
         Add(' AND K.FlagKKBB=''INV'' ');
      if rgTransaksi.ItemIndex = 7 then
         Add(' AND K.FlagKKBB=''BUY'' ');
      Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.VoucherID');
      Open;
    end;
  end;
  RefreshData;
end;

procedure TfmCFTrJurnal.dbgHeaderClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmCFTrJurnal.quDetilCalcFields(DataSet: TDataSet);
var Note : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT B.GroupID,C.GroupDesc FROM APtrKonsinyasiinvdt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'INNER JOIN INMsGroup C ON B.GroupID=C.GroupID WHERE Konsinyasiinvid='''+quMainVoucherID.AsString+''' ORDER BY B.GroupID');
    Open;
  end;
  while not quAct.Eof do
  begin
    if quAct.RecNo = 1 then
      Note := quAct.FieldByName('GroupDesc').AsString
    else
      Note := Note + '; ' + quAct.FieldByName('GroupDesc').AsString;
    quAct.Next;
  end;
  quDetilLNote.AsString := Note;
end;

procedure TfmCFTrJurnal.dbgHeaderChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  RefreshData;
end;

procedure TfmCFTrJurnal.dxButton1Click(Sender: TObject);
var stotal : Currency;
    FlagKKBB : string;
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT K.FlagKKBB FROM ( '
       +'SELECT A.FlagKKBB,A.VoucherID FROM CFTrKKBBHd A UNION ALL '
       +'SELECT ''INV'',KonInvPelId FROM ARTrKonInvPelHD UNION ALL '
       +'SELECT ''BUY'',KonsinyasiInvId FROm APtrKonsinyasiInvHd ) as K WHERE K.VoucherID='''+quMainVoucherID.AsString+''' ');
    Open;
  end;
  FlagKKBB := quCalc.FieldByName('FlagKKBB').AsString;
  if (FlagKKBB = 'KM') or (FlagKKBB = 'BM') or (FlagKKBB = 'ARK') or (FlagKKBB = 'ARB') or (FlagKKBB = 'ARC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(SUM(Amount),0)+ '''+CurrToStr(quMainJumlahD.AsCurrency)+''' as Total FROM CFTrKKBBDt '
         +'WHERE VoucherID=:VoucherID AND Jenis=''D''');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      Open;
    End;
  end else
  if (FlagKKBB = 'KK') or (FlagKKBB = 'BK') or (FlagKKBB = 'APK') or (FlagKKBB = 'APB') or (FlagKKBB = 'APC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(SUM(Amount),0)+ '''+CurrToStr(quMainJumlahK.AsCurrency)+''' as Total FROM CFTrKKBBDt '
         +'WHERE VoucherID=:VoucherID AND Jenis=''K''');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      Open;
    End;
  end else
  if (FlagKKBB = 'JU') or (FlagKKBB = 'GC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT 0 as Total');
      Open;
    End;
  end;
  if (FlagKKBB = 'INV') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(TTLKJ,0) as Total FROM ARTrKonInvPelHD Where KoninvpelId='''+quMainVoucherID.AsString+''' ');
      Open;
    End;
  end;
  if (FlagKKBB = 'BUY') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(TTLKS,0) as Total FROM APTrKonsinyasiInvHd Where KonsinyasiInvid='''+quMainVoucherID.AsString+''' ');
      Open;
    End;
  end;
  if quAct.FieldByName('Total').AsCurrency < 0 then
    stotal := quAct.FieldByName('Total').AsCurrency*-1
  else
    stotal := quAct.FieldByName('Total').AsCurrency;

  if (FlagKKBB='JU') or (FlagKKBB = 'ARP') or (FlagKKBB = 'APP') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbTitleV.Caption := 'JURNAL UMUM';
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      qlbTTerBayar.Enabled := False; QRLabel8.Enabled := False;
      if FlagKKBB = 'GL' then
        qlbTTerBayar.Enabled := False
      else
        qlbTTerBayar.Enabled := True;
//      RbCetak.Visible := False;
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      QRLabel8.Enabled := False; qlbTitleV.Top := 18;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
//      qlbterimaDari.Caption := quMainLSalesName.AsString;
     if UpperCase(TRIM(quMainCurrId.Value)) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quMainJumlahD.AsCurrency))+' Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';

      With qu001,SQL do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END as Urut,Jenis,UpdDate FROM CFTrKKBBDt) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
           +'ORDER BY K.UpdDate,K.Urut,K.RekeningID');
        Open;
      End;
        if sCetak = '0' then
          MyReport.Previewmodal
        else
          MyReport.Print;
    Finally
      Free;
    End;
  End;

  if (FlagKKBB='KM') or (FlagKKBB='ARK') then
  Begin
      With TfmCFQRRptTrKKBB.Create(Self) do
      Try
        qlbTitle.Caption:= sCompanyName;
        qlbKas.Enabled := true;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENERIMAAN';
        qlbTTerBayar.Caption := 'Terima dari';
        qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
        qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
        if FlagKKBB = 'KM' then
          qlbterimaDari.Caption := quMainActor.AsString
        else
          qlbterimaDari.Caption := '';//quMainLSalesName.AsString;
       if UpperCase(TRIM(quMainCurrId.Value)) ='IDR' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
        if UpperCase(TRIM(quMainCurrId.Value)) ='USD' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';

        qlbKeterangan.Caption := quMainNote.Value;
        QRLabel16.Caption :='Dibayar oleh';
        if sTotal >= 0 then
          qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
        else
          qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahD,0) as Amount,Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd '
             +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.Urut,K.RekeningID');
          Open;
        End;
         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;
      Finally
        Free;
      End;
  End;

  if (FlagKKBB='KK') or (FlagKKBB='APK') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
     qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := true;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
      if FlagKKBB = 'KK' then
        qlbterimaDari.Caption := quMainActor.AsString
      else
        qlbterimaDari.Caption := '';//quMainLSalesName.AsString;
      if UpperCase(TRIM(quMainCurrId.Value)) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(TRIM(quMainCurrId.Value)) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahK,0) as Amount,Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd '
             +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.Urut,K.RekeningID');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  End;

  if (FlagKKBB='BM') or (FlagKKBB='ARB') or (FlagKKBB='ARC') then
  Begin
      With TfmCFQRRptTrKKBB.Create(Self) do
      Try
        qlbTitle.Caption:= sCompanyName;
        qlbKas.Enabled := false;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENERIMAAN';
        qlbTTerBayar.Caption := 'Diterima dari';
        qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
        qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
        if FlagKKBB = 'BM' then
          qlbterimaDari.Caption := quMainActor.AsString
        else
          qlbterimaDari.Caption := '';//quMainLSalesName.AsString;
        if UpperCase(TRIM(quMainCurrId.Value)) ='IDR' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
        if UpperCase(quMainCurrId.Value) ='USD' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
        qlbKeterangan.Caption := quMainNote.Value;
        QRLabel16.Caption :='Dibayar oleh';
        if sTotal >= 0 then
          qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
        else
          qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahD,0) as Amount,A.Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd A '
             +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
             +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.Urut,K.RekeningID');
          Open;
        End;
         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;
      Finally
        Free;
      End;
  End;

  if (FlagKKBB='BK') or (FlagKKBB='APB') or (FlagKKBB='APC') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := false;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
      if FlagKKBB = 'BK' then
        qlbterimaDari.Caption := quMainActor.AsString
      else
        qlbterimaDari.Caption := '';//quMainLSalesName.AsString;
     if UpperCase(TRIM(quMainCurrId.Value)) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(TRIM(quMainCurrId.Value)) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahK,0) as Amount,A.Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd A '
           +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
           +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
           +'ORDER BY K.Urut,K.RekeningID');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  end;

  if (FlagKKBB='BUY') then
  Begin
  With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PEMBELIAN';
      qlbTTerBayar.Caption := 'Supplier';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainVoucherID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, sTotal))+'Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';
      if stotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, stotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(stotal)) + ')';
        With qu001,SQL do
        Begin
          Close;Clear;
          Add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT KonsinyasiInvID,RekeningU as RekeningID,ISNULL(TTLKs,0) as Amount,''K'' as Jenis,3 as Urut,Note FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningP,ISNULL(PPN,0),''D'',2,''PPN Masukan - ''+'''+quMainActor.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningK,ISNULL(TTLKs-PPN,0),''D'',1,Note FROM APTrKonsinyasiInvHd) as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
             +'WHERE K.KonsinyasiInvID='''+quMainVoucherID.AsString+''' AND K.Amount <> 0 ORDER BY K.Urut,K.RekeningID');
          Open;
        End;
      MyReport.Previewmodal
    Finally
      Free;
    End;
  end;

  if (FlagKKBB='INV') then
  Begin
  With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PENJUALAN';
      qlbTTerBayar.Caption := 'Pelanggan';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainVoucherID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTgl.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,SQL do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,L.RekeningName+'' Atas Invoice ''+K.KonInvPelID as Note,K.Jenis FROM ('
           +'SELECT KonInvPelID,RekeningU as RekeningID,'
           +'ISNULL(TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0) as Amount,''D'' as Jenis,1 as Urut FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningP,ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE ((STKJ-Discount)*0.1) END,0),''K'',2  FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT KonInvPelID,RekeningK,ISNULL(StKj-Discount,0),''K'',2 FROM ARTrKonInvPelHd) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE K.KonInvPelID='''+quMainVoucherID.AsString+''' '
           +'ORDER BY K.Urut,K.RekeningID');
        Open;
      End;
      MyReport.Previewmodal
    Finally
      Free;
    End;
  End;
End;

procedure TfmCFTrJurnal.dt2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then bbLoad.SetFocus;
end;

procedure TfmCFTrJurnal.dt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then dt2.SetFocus;
end;

procedure TfmCFTrJurnal.dxButton2Click(Sender: TObject);
begin
  inherited;
  With TfmRptJurnalDay.Create(Self) do
    Try
      qrlTitle.Caption:= 'LAPORAN JURNAL HARIAN';
      qrlPeriode.Caption := FormatDateTime('dd/MMM/yyyy', dt1.Date) + ' s/d ' +FormatDateTime('dd/MMM/yyyy', dt2.Date);

      if rbJenis.ItemIndex = 0 then
      begin
        with qu001,SQL do
        begin
          Close;Clear;
          Add('SELECT K.VoucherID,'
             +'CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Actor,L.BankName,K.Note,K.FlagKKBB,K.CurrID,K.JumlahD,K.JumlahK,'
             +'CASE WHEN K.FlagKKBB=''KM'' THEN ''KAS MASUK'' '
             +'     WHEN K.FlagKKBB=''ARK'' THEN ''PIUTANG SECARA KAS'' '
             +'     WHEN K.FlagKKBB=''ARB'' THEN ''PIUTANG SECARA BANK'' '
             +'     WHEN K.FlagKKBB=''ARC'' THEN ''PIUTANG SECARA GIRO'' '
             +'     WHEN K.FlagKKBB=''KK'' THEN ''KAS KELUAR'' '
             +'     WHEN K.FlagKKBB=''APK'' THEN ''HUTANG SECARA KAS'' '
             +'     WHEN K.FlagKKBB=''APB'' THEN ''HUTANG SECARA BANK'' '
             +'     WHEN K.FlagKKBB=''APC'' THEN ''HUTANG SECARA GIRO'' '
             +'     WHEN K.FlagKKBB=''BM'' THEN ''BANK MASUK'' '
             +'     WHEN K.FlagKKBB=''BK'' THEN ''BANK KELUAR'' '
             +'     WHEN K.FlagKKBB=''JU'' THEN ''JURNAL UMUM'' '
             +'     WHEN K.FlagKKBB=''INV'' THEN ''INVOICE PENJUALAN'' '
             +'     WHEN K.FlagKKBB=''BUY'' THEN ''INVOICE PEMBELIAN'' END as Status FROM ('
             +'SELECT CASE WHEN FlagKKBB=''GC'' THEN IDVoucher ELSE VoucherID END as VoucherID,'
             +'Transdate,Actor,A.BankID,A.Note,FlagKKBB,CurrID,JumlahD,JumlahK FROM CFTrKKBBHd A WHERE FgPayment=''T'' UNION ALL '
             +'SELECT KonInvPelID,Transdate,CustName,A.BankID,A.Note,''INV'',CurrID,ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0),'
             +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0) FROM ARTrKonInvPelHd A '
             +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID UNION ALL SELECT PurchaseID,Transdate,SuppName,'''',A.Note,''BUY'',CurrID,ISNULL(A.TTlPb,0),ISNULL(A.TTLPb,0)'
             +'FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID) as K LEFT JOIN CFMsBank L ON K.BankID=L.BankID '
             +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
          if rgTransaksi.ItemIndex = 1 then
             Add(' AND K.FlagKKBB IN (''KM'',''ARK'') ');
          if rgTransaksi.ItemIndex = 2 then
             Add(' AND K.FlagKKBB IN (''KK'',''APK'') ');
          if rgTransaksi.ItemIndex = 3 then
             Add(' AND K.FlagKKBB IN (''BM'',''ARB'',''ARC'') ');
          if rgTransaksi.ItemIndex = 4 then
             Add(' AND K.FlagKKBB IN (''BK'',''APB'',''APC'') ');
          if rgTransaksi.ItemIndex = 5 then
             Add(' AND K.FlagKKBB=''JU'' ');
          if rgTransaksi.ItemIndex = 6 then
             Add(' AND K.FlagKKBB=''INV'' ');
          if rgTransaksi.ItemIndex = 7 then
             Add(' AND K.FlagKKBB=''BUY'' ');
          Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.VoucherID');
          Open;
        end;
      end else
      begin
        with qu001,SQL do
        begin
          Close;Clear;
          Add('SELECT K.VoucherID,'
             +'CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Actor,L.BankName,K.Note,K.FlagKKBB,K.CurrID,K.JumlahD,K.JumlahK,'
             +'CASE WHEN K.FlagKKBB=''KM'' THEN ''KAS MASUK'' '
             +'     WHEN K.FlagKKBB=''KK'' THEN ''KAS KELUAR'' '
             +'     WHEN K.FlagKKBB=''BM'' THEN ''BANK MASUK'' '
             +'     WHEN K.FlagKKBB=''BK'' THEN ''BANK KELUAR'' '
             +'     WHEN K.FlagKKBB=''JU'' THEN ''JURNAL UMUM'' '
             +'     WHEN K.FlagKKBB=''INV'' THEN ''INVOICE PENJUALAN'' '
             +'     WHEN K.FlagKKBB=''BUY'' THEN ''INVOICE PEMBELIAN'' END as Status FROM ('
             +'SELECT CASE WHEN FlagKKBB=''GC'' THEN IDVoucher ELSE VoucherID END as VoucherID,'
             +'Transdate,Actor,A.BankID,A.Note,FlagKKBB,CurrID,JumlahD,JumlahK FROM CFTrKKBBHd A WHERE FgPayment=''T'' UNION ALL '
             +'SELECT KonInvPelID,Transdate,CustName,A.BankID,A.Note,''INV'',CurrID,'
             +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount+Discount*0.1 END),0),'
             +'ISNULL(A.TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount+Discount*0.1 END),0) FROM ARTrKonInvPelHd A '
             +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID UNION ALL '
             +'SELECT PurchaseID,Transdate,SuppName,'''',A.Note,''BUY'',CurrID,ISNULL(TTLPb,0),ISNULL(TTLPb,0) '
             +'FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID) as K LEFT JOIN CFMsBank L ON K.BankID=L.BankID ');
          if rgTransaksi.ItemIndex = 1 then
             Add(' AND K.FlagKKBB IN (''KM'',''ARK'') ');
          if rgTransaksi.ItemIndex = 2 then
             Add(' AND K.FlagKKBB IN (''KK'',''APK'') ');
          if rgTransaksi.ItemIndex = 3 then
             Add(' AND K.FlagKKBB IN (''BM'',''ARB'',''ARC'') ');
          if rgTransaksi.ItemIndex = 4 then
             Add(' AND K.FlagKKBB IN (''BK'',''APB'',''APC'') ');
          if rgTransaksi.ItemIndex = 5 then
             Add(' AND K.FlagKKBB=''JU'' ');
          if rgTransaksi.ItemIndex = 6 then
             Add(' AND K.FlagKKBB=''INV'' ');
          if rgTransaksi.ItemIndex = 7 then
             Add(' AND K.FlagKKBB=''BUY'' ');
          Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.VoucherID');
          Open;
        end;
      end;

      with qu002,SQL do
      begin
        Close;Clear;
        Add('SELECT CONVERT(varchar(10),K.TransDate,103) as Tanggal,K.VoucherID,K.RekeningID,L.RekeningName,K.Note, '
           +'ISNULL(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END,0) as Debit, '
           +'ISNULL(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE 0 END,0) as Kredit FROM ( '
           +'SELECT A.TransDate,A.VoucherID,ISNULL(A.Note,''-'') as Note,1 as Urut, '
           +'CASE WHEN FlagKKBB IN (''KM'',''ARK'',''KK'',''APK'') then ''110.000001'' '
           +'     WHEN FlagKKBB IN (''BM'',''ARB'',''ARC'',''BK'',''APB'',''APC'') then B.RekeningID END  as RekeningID, '
           +'CASE WHEN FlagKKBB IN (''KM'',''ARK'',''BM'',''ARB'',''ARC'') then ISNULL(A.JumlahD,0) '
           +'     WHEN FlagKKBB IN (''KK'',''APK'',''BK'',''APB'',''APC'') then ISNULL(A.JumlahK,0) END as Amount, '
           +'CASE WHEN FlagKKBB IN (''KM'',''ARK'',''BM'',''ARB'',''ARC'') then ''D'' '
           +'     WHEN FlagKKBB IN (''KK'',''APK'',''BK'',''APB'',''APC'') then ''K'' END as Jenis FROM CFTrKKBBHd A '
           +'LEFT JOIN CFMsBank B ON A.BankID=B.BankID '
           +'UNION ALL '
           +'SELECT B.Transdate,A.VoucherID,A.Note,CASE WHEN A.Jenis=''D'' THEN 2 ELSE 3 END,A.RekeningID,A.Amount,A.Jenis FROM CFTrKKBBDt A '
           +'Inner JOIN CFTrKKBBHd B on A.VoucherID=B.VoucherID '
           +'UNION ALL '
           +'SELECT TransDate,KonInvPelId,KonInvPelID,1 as Urut,RekeningU, '
           +'ISNULL(TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0) as Amount,''D'' FROM ARTrKonInvPelHd '
           +'UNION ALL '
           +'SELECT TransDate,KonInvPelID,KonInvPelID,2,RekeningP, '
           +'ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE StKj*0.1 END,0),''K''  FROM ARTrKonInvPelHd UNION ALL '
           +'SELECT TransDate,KonInvPelID,KonInvPelID,2,RekeningK, '
           +'ISNULL(StKj-Discount,0),''K'' FROM ARTrKonInvPelHd '
           +'UNION ALL '
           +'SELECT TransDate,KonsinyasiInvID,KonsinyasiInvID,3,RekeningU, '
           +'ISNULL(TTLKS,0) as Amount,''K'' FROM APTrKonsinyasiInvHd '
           +'UNION ALL '
           +'SELECT TransDate,KonsinyasiInvID,KonsinyasiInvID,2,RekeningP, '
           +'ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE SubTotal*0.1 END,0) as Amount,''D'' FROM APTrKonsinyasiInvHd '
           +'UNION ALL '
           +'SELECT TransDate,KonsinyasiInvID,KonsinyasiInvID,1,RekeningK, '
           +'ISNULL(SubTotal,0) as Amount,''D'' FROM APTrKonsinyasiInvHd '
           +') as K LEFT JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'Where K.VoucherId=:VoucherID '
           +'AND CONVERT(varchar(10),K.TransDate,112) Between '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' and '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           //+'AND K.Amount<>0 '
           +'ORDER BY K.VoucherId,K.Jenis,K.Urut,K.RekeningID ');
        Open;
      End;

      If sCetak = '0' then
        MyReport.Previewmodal
      else
        MyReport.Print;
    Finally
      Free;
    End;
end;

end.
