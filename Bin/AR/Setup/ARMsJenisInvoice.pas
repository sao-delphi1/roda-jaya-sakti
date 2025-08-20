unit ARMsJenisInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmARMsJenisInvoice = class(TfmStdLv31)
    dbgUOM: TdxDBGrid;
    quMainKdJenis: TStringField;
    quMainNmJenis: TStringField;
    quMainRekeningID: TStringField;
    dbgUOMColumn1: TdxDBGridColumn;
    dbgUOMColumn3: TdxDBGridButtonColumn;
    dbgUOMColumn4: TdxDBGridColumn;
    dbgUOMColumn2: TdxDBGridColumn;
    quMainLRekName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dbgUOMColumn3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARMsJenisInvoice: TfmARMsJenisInvoice;

implementation

uses StdLv2, UnitGeneral, MyUnit, Search;

{$R *.dfm}

procedure TfmARMsJenisInvoice.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmARMsJenisInvoice.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainKdJenis.AsString)='' then
   Begin
     MsgInfo('Kode Jenis tidak boleh kosong');
     quMainKdJenis.FocusControl;
     Abort;
   End;

   if Trim(quMainNmJenis.AsString)='' then
   Begin
     MsgInfo('Nama Jenis tidak boleh kosong');
     quMainNmJenis.FocusControl;
     Abort;
   End;

   if Trim(quMainRekeningID.AsString)='' then
   Begin
     MsgInfo('Kode COA tidak boleh kosong');
     quMainRekeningID.FocusControl;
     Abort;
   End;

   if Trim(quMainLRekName.AsString)='' then
   Begin
     MsgInfo('Kode COA tidak ada di dalam master');
     quMainRekeningID.FocusControl;
     Abort;
   End;
end;

procedure TfmARMsJenisInvoice.dbgUOMColumn3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekeningID.Value := Res[1];
           //quMainRekeningD.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmARMsJenisInvoice.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('select RekeningName from CFMsRekening WHere Rekeningid='''+quMainRekeningID.AsString+''' ');
    Open;
  end;
  quMainLRekName.ASString := quAct.FieldByName('RekeningName').AsString;
end;

procedure TfmARMsJenisInvoice.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUOMColumn1,quMain.State<>dsInsert);
  SetReadOnly(dbgUOMColumn4,TRUE);
end;

end.
                                   