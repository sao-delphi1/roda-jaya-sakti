unit INTrAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, DBCtrls, dxEditor, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms;

type
  TfmINTrAssets = class(TfmStdLv31)
    pcMain: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dbgList: TdxDBGrid;
    ts02: TdxTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    dbg: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quMainAssetsID: TStringField;
    quMainAmount: TBCDField;
    quMainTerm: TBCDField;
    quMainRekeningD: TStringField;
    quMainRekeningK: TStringField;
    dbgListColumn1: TdxDBGridColumn;
    dbgListColumn2: TdxDBGridColumn;
    dbgListColumn3: TdxDBGridColumn;
    dbgListColumn4: TdxDBGridColumn;
    dbgListColumn5: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    quMainTransdate: TDateTimeField;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label11: TLabel;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    DBText1: TDBText;
    quMainLAssetsName: TStringField;
    dxButton2: TdxButton;
    quAction: TADOQuery;
    quDetilNomor: TLargeintField;
    quDetilTgl: TStringField;
    quDetilVoucherID: TStringField;
    quDetilAmount: TBCDField;
    quDetilTotal: TBCDField;
    quDetilSisa: TBCDField;
    dbgColumn1: TdxDBGridColumn;
    dbgColumn2: TdxDBGridColumn;
    dbgColumn3: TdxDBGridColumn;
    dbgColumn4: TdxDBGridColumn;
    dbgColumn5: TdxDBGridColumn;
    dbgColumn6: TdxDBGridColumn;
    quMainFgProses: TStringField;
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbFindClick(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINTrAssets: TfmINTrAssets;

implementation

uses conMain, UnitGeneral, MyUnit, UnitDate, Search, StdLv2, StdLv3;

{$R *.dfm}

procedure TfmINTrAssets.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  If TRIM(quMainAssetsID.AsString)='' then
  Begin
    MsgInfo('Kode Assets tidak boleh kosong');
    quMainAssetsID.FocusControl;
    Abort;
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmINTrAssets.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.AsDateTime := Date;
  quMainFgProses.AsString := 'T';
end;

procedure TfmINTrAssets.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBEdit2,TRUE);
  SetReadOnly(dxDBEdit3,TRUE);
  SetReadOnly(dxDBEdit4,TRUE);
  SetReadOnly(dxDBButtonEdit1,quMain.state<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.state<>dsInsert);
end;

procedure TfmINTrAssets.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Assets Dapat Disusutkan';
    SQLString := 'SELECT AssetsName,AssetsID,AssetsValue,Term as LamaSusut, '
                +'CASE WHEN AssetsType=1 THEN ''KENDARAAN'' '
                +'     WHEN AssetsType=2 THEN ''TANAH'' '
                +'     WHEN AssetsType=3 THEN ''MESIN/PERALATAN'' '
                +'     WHEN AssetsType=4 THEN ''GEDUNG/BANGUNAN'' ELSE ''FURNITURE'' END as Type_Assets, '
                +'     RekeningD,RekeningK '
                +'FROM INMsAssets WHERE FgActive=''Y'' AND FgSusut=''Y'' '
                +'AND AssetsID NOT IN (Select AssetsID FROM IntrAssets) ';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainAssetsID.Value := Res[1];
       quMainAmount.AsCurrency := StrtoCurr(Res[2]);
       quMainTerm.AsCurrency := StrtoCurr(Res[3]);
       quMainRekeningD.Value := Res[5];
       quMainRekeningK.Value := Res[6];
    end;
  finally
     free;
  end;
end;

procedure TfmINTrAssets.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Assets Management';
     SQLString := 'SELECT B.AssetsName,A.AssetsID,CONVERT(varchar(10),A.transDate,103) as Tgl_Susut,A.Amount,A.term as Lama_Susut,A.RekeningD,A.RekeningK '
                 +'FROM INTrAssets A Inner Join INMsAssets B On A.AssetsId=B.AssetsId ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('AssetsID',Res[1],[]);
     end;
  finally
     Free;
  end;
end;

procedure TfmINTrAssets.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select AssetsName FROM InmsAssets Where AssetsID='''+quMainAssetsID.AsString+''' ');
    Open;
  End;
  quMainLAssetsName.AsString := quAct.FieldByName('AssetsName').AsString;
end;

procedure TfmINTrAssets.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmINTrAssets.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quMain.Last;
end;

procedure TfmINTrAssets.dxButton2Click(Sender: TObject);
var lamabulan,AmountDep,nomor : currency;
begin
  inherited;
  if quMainFgProses.AsString = 'Y' then
  begin
    MsgInfo('Data Sudah Pernah Di-Proses!');
    Abort;
  end else
  begin
  lamabulan := quMainTerm.AsCurrency*12;
  AmountDep := quMainAmount.AsCurrency/quMainTerm.AsCurrency/12;
  nomor := 0;

  while (nomor < lamabulan) do
  begin
    with quAction,SQL do
    begin
      Close;Clear;
      Add('Insert into CFTRKKBBHD (VoucherID,TransDate,FlagKKBB,UpdDate,UpdUser,CurrID,TglUbah,UserUbah,TransDate1,JumlahD,JumlahK,FgPayment,VoucherNo,Rate) '
         +'Values ('''+quMainAssetsID.AsString+'''+''-''+'''+Formatcurr('0',nomor+1)+''',DATEADD(month,'+Formatcurr('0',nomor)+','''+FormatDateTime('yyyy-MM-dd',quMainTransdate.asDateTime)+'''),''JU'',GETDATE(),'''+dmMain.UserId+''',''IDR'','
         +'GETDATE(),'''+dmMain.UserId+''',DATEADD(month,'+Formatcurr('0',nomor)+','''+FormatDateTime('yyyy-MM-dd',quMainTransdate.asDateTime)+'''),'''+Formatcurr('0.00',AmountDep)+''','''+Formatcurr('0.00',AmountDep)+''','
         +'''T'','''+quMainAssetsID.AsString+''',1)');
      //ShowMessage(sql.text);
      ExecSQL;
    End;
    with quAction,SQL do
    begin
      Close;Clear;
      Add('Insert into CFTRKKBBDT (VoucherID,RekeningID,Note,Amount,UpdDate,Upduser,jenis) '
         +'Values ('''+quMainAssetsID.AsString+'''+''-''+'''+Formatcurr('0',nomor+1)+''','''+quMainRekeningD.AsString+''','''+quMainLAssetsName.AsString+''','''+Formatcurr('0.00',AmountDep)+''',GETDATE(),'''+dmMain.UserId+''',''D'') ');
      //ShowMessage(sql.text);
      ExecSQL;
    End;
    with quAction,SQL do
    begin
      Close;Clear;
      Add('Insert into CFTRKKBBDt (VoucherID,RekeningID,Note,Amount,UpdDate,Upduser,jenis) '
         +'Values ('''+quMainAssetsID.AsString+'''+''-''+'''+Formatcurr('0',nomor+1)+''','''+quMainRekeningK.AsString+''','''+quMainLAssetsName.AsString+''','''+Formatcurr('0.00',AmountDep)+''',GETDATE(),'''+dmMain.UserId+''',''K'') ');
      ExecSQL;
    End;
    nomor := nomor+1;
  end;

  with quAction,SQL do
    begin
      Close;Clear;
      Add('Update IntrAssets set Fgproses=''Y'' Where AssetsId='''+quMainAssetsId.AsString+''' ');
      ExecSQL;
    End;

  MsgInfo('Data Sudah Berhasil Disusutkan Dalam Tempo: '+quMainTerm.AsString+' tahun');
  qudetil.requery();
  end;
end;

procedure TfmINTrAssets.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
    (MessageDlg('Sudah Ada Data Pada Jurnal. Hapus Data Penyusutan ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
      with quAct,SQL do
        begin
        Close;Clear;
          Add('DELETE FROM CFtrkkbbhd WHERE Flagkkbb=''JU'' AND VoucherNo='''+quMainAssetsID.AsString+''' ');
        ExecSQL;
        end;
      end;

end;

procedure TfmINTrAssets.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

end.
