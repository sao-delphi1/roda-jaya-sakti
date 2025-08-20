unit ARTRSaldoAwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls;

type
  TfmSaldoAwal = class(TfmStdLv31)
    Label1: TLabel;
    Label7: TLabel;
    txtKonInvPelID: TdxDBEdit;
    Label2: TLabel;
    Label13: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label23: TLabel;
    Label18: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label15: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    txtPelangganID: TdxDBButtonEdit;
    quMainKonsinyasiInvId: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSuppId: TStringField;
    quMainCurrID: TStringField;
    quMainTTLKs: TBCDField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DBText4: TDBText;
    quMainCustName: TStringField;
    quMainSubTotal: TBCDField;
    quMainFgTax: TStringField;
    quMainRate: TBCDField;
    quMainupduser: TStringField;
    quMainupddate: TDateTimeField;
    quMainPPN: TCurrencyField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    dxDBPajak: TdxDBImageEdit;
    dxDBEdit1: TdxDBEdit;
    quMainFgPerforma: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    Label26: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    Label27: TLabel;
    Label28: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    DBText10: TDBText;
    DBText16: TDBText;
    DBText12: TDBText;
    quMainLRekU: TStringField;
    quMainLRekP: TStringField;
    quMainLRekK: TStringField;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    quAct1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainCurrIDChange(Sender: TField);
    procedure quMainTTLKsChange(Sender: TField);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainFgTaxChange(Sender: TField);
    procedure txtKonInvPelIDKeyPress(Sender: TObject; var Key: Char);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    StLap : String;
    { Public declarations }
  end;

var
  fmSaldoAwal: TfmSaldoAwal;

implementation

uses Search, StdLv3, UnitGeneral, Myunit, Conmain;
{$R *.dfm}

procedure TfmSaldoAwal.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonsinyasiInvId';
  FFieldTgl   := 'TransDate';
  inherited;
  if StLap = 'AP' then
  begin
    Caption := 'Saldo Awal Invoice Pembelian';
    Label3.Caption := 'Supplier';
    label26.Caption := 'Rek Pembelian';
    label27.Caption := 'Rek PPN Masuk';
    Label28.Caption := 'Rek Hutang';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('select KonsinyasiInvId,TransDate,SuppId,CurrID,TTLKs,SubTotal,Rate,Fgtax,UpdDate,UpdUser, '
         +'RekeningU,RekeningK,RekeningD,RekeningP,FgPerforma FROM APTrKonsinyasiInvHd Where FgPerforma=''S'' ');
      open;
    end;
  end else
  begin
    Caption := 'Saldo Awal Invoice Penjualan';
    label26.Caption := 'Rek Penjualan';
    label27.Caption := 'Rek PPN Keluar';
    Label28.Caption := 'Rek Piutang';
    with quMain,SQL do
    begin
    Close;Clear;
    Add('select KonInvPelId as KonsinyasiInvId,TransDate,CustId as SuppId,CurrID,TTLKj as TTLKs, '
       +'STKJ as SubTotal,Rate,Fgtax,UpdDate,UpdUser,RekeningU,RekeningK,RekeningD,RekeningP,FgPerforma '
       +'FROM ARTrkonInvPelHd Where FgPerforma=''S'' ');
    open;
    end;
  end;
  quMain.Active  := TRUE;
end;

procedure TfmSaldoAwal.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainCurrID.AsString :='IDR';
  quMainTTLKs.AsCurrency := 0;
  quMainSubTotal.AsCurrency := 0;
  quMainFgTax.AsString := 'Y';
  quMainRate.AsCurrency := 1;
  quMainFgPerforma.AsString := 'S';
  if StLap = 'AP' then
  begin
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM SAMsSet');
    Open;
  end;
  //quMainRekeningU.AsString := quAct1.FieldByName('DRPb').AsString;
  //quMainRekeningK.AsString := quAct1.FieldByName('DGRPb').AsString;
  //quMainRekeningP.AsString := quAct1.FieldByName('DGRPLL').AsString;
  end else
  begin
  //quMainRekeningU.AsString := sDRPj;
  //quMainRekeningK.AsString := sDGRPj;
  //quMainRekeningD.AsString := sDGRBi;
  //quMainRekeningP.AsString := sCustC;
  end;
end;

procedure TfmSaldoAwal.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmSaldoAwal.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if StLap='AP' then
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := 'SELECT SuppName as Nama_Supplier,SuppId as Kode_Supplier, Address '
                   +' FROM ApMsSupplier '
                   +' ORDER BY SuppId';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSuppId.Value := Res[1];
       end;
    finally
       Free;                                                                                                                                  
    end;
  end else
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                   +' FROM ARMsCustomer '
                   +' ORDER BY CustId';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainSuppId.Value := Res[1];
       end;
    finally
       Free;                                                                                                                                  
    end;
  end;
end;

procedure TfmSaldoAwal.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  if quMainCurrID.AsString <> 'IDR' then
  dxDBEdit1.Visible := True
  else
  dxDBEdit1.Visible := False;

  if StLap='AP' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SuppName FROM ApMsSupplier WHERE SuppId='''+quMainSuppId.AsString+''' ');
      Open;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT CustName as SuppName FROM ARMsCustomer WHERE CustId='''+quMainSuppId.AsString+''' ');
      Open;
    end;
  end;
  quMainCustName.AsString := quAct.FieldByName('SuppName').AsString;

  if quMainFgTax.AsString = 'Y' then
  quMainPPN.AsCurrency := quMainSubTotal.AsCurrency*0.1
  else
  quMainPPN.AsCurrency := 0;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningK.AsString+''' ');
    Open;
  end;
  quMainLRekK.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningU.AsString+''' ');
    Open;
  end;
  quMainLRekU.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningP.AsString+''' ');
    Open;
  end;
  quMainLRekP.AsString := quAct.FieldByName('RekeningName').AsString;
end;

procedure TfmSaldoAwal.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  If TRIM(quMainKonsinyasiInvID.AsString)='' then
  Begin
    MsgInfo('No Invoice tidak boleh kosong');
    quMainKonsinyasiInvID.FocusControl;
    Abort;
  End;

  If TRIM(quMainSuppId.AsString)='' then
  Begin
    if stLap='AR' then
    MsgInfo('Customer tidak boleh kosong')
    else
    MsgInfo('Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;

  If quMainTTLKs.AsCurrency<=0 then
  Begin
    MsgInfo('Total tidak boleh 0');
    quMainTTLKs.FocusControl;
    Abort;
  End;

  quMainupddate.AsDateTime := GetServerDateTime;
  quMainupduser.AsString := dmmain.userid;
end;

procedure TfmSaldoAwal.quMainCurrIDChange(Sender: TField);
begin
  inherited;
  if quMainCurrID.AsString = 'IDR' then quMainRate.AsCurrency := 1;
end;

procedure TfmSaldoAwal.quMainTTLKsChange(Sender: TField);
begin
  inherited;
  if quMainFgTax.AsString = 'Y' then
  quMainSubTotal.AsCurrency := quMainTTLKs.AsCurrency/1.1
  else
  quMainSubTotal.AsCurrency := quMainTTLKs.AsCurrency;
end;

procedure TfmSaldoAwal.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if StLap = 'AP' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('Update ApTrKonsinyasiInvHD set PPN=(CASE When FgTax=''Y'' THEN SubTotal*0.1 Else 0 END),Ongkir=0,Repack=0,Administrasi=0, '
         +'DPID='''',TglDP=TransDate,JatuhTempo=0,POID=''-'' Where konsinyasiInvId='''+quMainKonsinyasiInvId.AsString+''' ');
      ExecSQL;
    end;
  end else
  begin
    {with quAct,SQL do
    begin
      Close;Clear;
      Add('Update ARTrKonInvPelHd set PPN=(CASE When FgTax=''Y'' THEN SubTotal*0.1 Else 0 END) '
         +'Where konsinyasiInvId='''+quMainKonsinyasiInvId.AsString+''' ');
      ExecSQL;
    end; }
  end;
end;

procedure TfmSaldoAwal.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningK.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSaldoAwal.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSaldoAwal.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningU.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSaldoAwal.quMainFgTaxChange(Sender: TField);
begin
  inherited;
  if quMainFgTax.AsString = 'Y' then
  quMainSubTotal.AsCurrency := quMainTTLKs.AsCurrency/1.1
  else
  quMainSubTotal.AsCurrency := quMainTTLKs.AsCurrency;
end;

procedure TfmSaldoAwal.txtKonInvPelIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmSaldoAwal.bbFindClick(Sender: TObject);
begin
  inherited;
  if StLap = 'AP' then
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Barang ';
       SQLString := 'SELECT A.KonsinyasiInvID as Invoice,Convert(Varchar(10),A.Transdate,103) as Tgl,'
                   +'B.SuppName as Supplier,A.CurrID as Valuta,A.Note as Keterangan,ISNULL(A.TTLks,0) as Total '
                   +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                   +'WHERE FgPerforma=''S'' AND '+FSQLWhere
                   +'GROUP BY A.KonsinyasiInvID,A.Transdate,B.SuppName,A.CurrID,A.Note,A.TTLKS ORDER BY A.KonsinyasiInvID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiInvID',Res[0],[]);
       end;
    finally
       free;
    end;
  end else
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Saldo Awal Penjualan';
       SQLString := 'SELECT A.KonInvPelID as Invoice,Convert(varchar(10),A.TransDate,103) as Tanggal,'
                   +'B.Custname as Nama_Pelanggan,A.CurrID as Valuta,A.Note as Keterangan,ISNULL(A.TTLKJ,0) as Jumlah '
                   +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustID '
                   +'WHERE FgPerforma=''S'' AND '+FSQLWhere
                   +'GROUP BY A.KonInvPelID,A.Transdate,B.CustName,A.CurrID,A.Note,A.TTLKJ ORDER BY A.KonInvPelID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiInvId',Res[0],[]);
       end;
    finally
       free;
    end;
  end;
end;

end.
