unit CFMsRekening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxDBTLCl,
  dxGrClms;

type
  TfmCFMsRekening = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    Label13: TLabel;
    quMainRekeningId: TStringField;
    quMainRekeningName: TStringField;
    quMainGroupRekId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    DBText4: TDBText;
    quMainNote: TStringField;
    quGroupRek: TADOQuery;
    quMainGroupRekName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    dbgListGroupRekId: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListGroupRekName: TdxDBGridLookupColumn;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dxDBEdit3: TdxDBEdit;
    Label6: TLabel;
    dxDBImageEdit1: TdxDBImageEdit;
    DBRadioGroup3: TDBRadioGroup;
    dxDBImageEdit2: TdxDBImageEdit;
    Label8: TLabel;
    quMainTipe: TStringField;
    quMainFgTipe: TStringField;
    quMainFgActive: TStringField;
    quMainLBRG: TStringField;
    quMainCurrId: TStringField;
    Label11: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBImageEdit3: TdxDBImageEdit;
    Label3: TLabel;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmCFMsRekening: TfmCFMsRekening;

implementation

uses ConMain, UnitGeneral, Search, MyUnit, StdLv1;

{$R *.dfm}
Procedure TfmCFMsRekening.Status;
Begin
  // Nanti Dolo INGETTTTTTTTTTT
 with quAct,SQL do
  Begin
    Close;Clear;
    Add('SELECT K.RekeningId FROM ('
       +'SELECT RekeningID FROM CFTrKKBBDt UNION ALL SELECT RekeningK FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningU FROM ARTrKonInvPelHd UNION ALL SELECT RekeningP FROM ARTrKonInvPelHd UNION ALL SELECT RekeningD FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningU FROM APTrKonsinyasiInvHd UNION ALL SELECT RekeningP FROM APTrKonsinyasiInvHd UNION ALL SELECT RekeningD FROM APTrKonsinyasiInvHd UNION ALL '
       +'SELECT RekeningK FROM APTrKonsinyasiInvHd UNION ALL SELECT RekeningID FROM CFMsBank) as K '
       +'WHERE K.RekeningId='''+quMainRekeningId.AsString+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Data sudah dipakai di transaksi lain tidak bisa dihapus lagi ');
       Abort;
    End;
 End;
End;

procedure TfmCFMsRekening.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmCFMsRekening.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainRekeningId.AsString)='' then
  begin
    MsgInfo('Kode Rekening tidak boleh kosong');
    quMainRekeningId.FocusControl;
    Abort;
  end;

  if TRIM(quMainTipe.AsString) = '' then
  begin
    pesan('Tipe tidak boleh kosong');
    quMainTipe.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select RekeningId from CFMsRekening Where RekeningId='''+quMainRekeningId.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Rekening sudah dipakai Kode Rekening lain');
        quMainRekeningId.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainRekeningName.AsString)='' then
  begin
    MsgInfo('Nama Rekening tidak boleh kosong');
    quMainRekeningName.FocusControl;
    Abort;
  end;

  If Trim(quMainGroupRekId.AsString)='' then
  begin
    MsgInfo('Kode Group Rekening tidak boleh kosong');
    quMainGroupRekId.FocusControl;
    Abort;
  end;

  If Trim(quMainGroupRekName.AsString)='' then
  begin
    MsgInfo('Kode Group Rekening tidak ada dalam Master');
    quMainGroupRekId.FocusControl;
    Abort;
  end;

  quMainUpdDate.AsDateTime := Date;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmCFMsRekening.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFMsRekening.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  ts01.TabVisible := FALSE;
  if CallFromAnotherMenu then
  begin
    ActNewExecute(bbNew);
  End;
end;

procedure TfmCFMsRekening.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmCFMsRekening.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainRekeningId.FocusControl;
end;

procedure TfmCFMsRekening.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsRekening.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsRekening.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmCFMsRekening.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Rekening';
         SQLString := ' SELECT A.RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                     +' A.GroupRekId,B.GroupRekName as Group_Rekening,CASE WHEN Tipe=''1'' THEN ''AKTIVA LANCAR'' '
                     +'                                                    WHEN Tipe=''2'' THEN ''KEWAJIBAN'' '
                     +'                                                    WHEN Tipe=''3'' THEN ''EKUITAS'' '
                     +'                                                    WHEN Tipe=''4'' THEN ''PENDAPATAN'' '
                     +'                                                    WHEN Tipe=''5'' THEN ''PEMBELIAN'' '
                     +'                                                    WHEN Tipe=''6'' THEN ''PEND/BIAYA LAIN-LAIN'' ELSE ''PAJAK'' END as Tipe,'
                     +' CASE WHEN A.FgTipe=''A'' THEN ''AKTIVA'' ELSE ''PASSIVA'' END as Neraca, '
                     +' Note as Keterangan FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID '
                     +' ORDER BY A.GROUPRekID,A.RekeningId';
         if ShowModal = MrOk then
         begin
            quMain.Locate('RekeningId',Res[1],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsRekening.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainRekeningId.FocusControl;
  quMainFgActive.AsString := 'Y';
  quMainTipe.AsString := '1';
  quMainFgTipe.AsString := 'A';
end;

procedure TfmCFMsRekening.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainGroupRekId.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmCFMsRekening.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Status
end;

procedure TfmCFMsRekening.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta FROM SAMsValuta ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;;
end;

end.
