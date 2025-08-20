unit SAMsRekJual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ActnList,
  DB, ADODB, StdCtrls, ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore,
  dxContainer, Buttons, dxDBTLCl, dxGrClms, DBCtrls, ExtDlgs, dxEditor,
  dxDBELib;

type
  TfmSAMsRekJual = class(TfmStdLv31)
    dbgUOM: TdxDBGrid;
    dbgUOMUpdDate: TdxDBGridColumn;
    dbgUOMUpdUser: TdxDBGridColumn;
    quMainRekJualID: TStringField;
    quMainBank: TStringField;
    quMainRekening: TStringField;
    quMainNama: TStringField;
    quMainCabang: TStringField;
    quMainFgActive: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgUOMColumn3: TdxDBGridColumn;
    dbgUOMColumn4: TdxDBGridColumn;
    dbgUOMColumn5: TdxDBGridColumn;
    dbgUOMColumn6: TdxDBGridColumn;
    dbgUOMColumn7: TdxDBGridColumn;
    dbgUOMColumn8: TdxDBGridImageColumn;
    odLogo: TOpenPictureDialog;
    DBImage2: TDBImage;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    quMainttd: TBlobField;
    Label1: TLabel;
    Label2: TLabel;
    dxDBEdit2: TdxDBEdit;
    quMainnamattd: TStringField;
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSAMsRekJual: TfmSAMsRekJual;

implementation

uses ConMain, MyUnit, UnitGeneral, Search, StdLv2;

{$R *.dfm}

procedure TfmSAMsRekJual.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Rekening Penerimaan';
         SQLString := ' Select * FROM ARMsCustomer ORDER BY RekJualID';
         if ShowModal = MrOk then
         begin
            qumain.Locate('RekJUalID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmSAMsRekJual.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainBank.AsString) = '' then
  begin
    pesan('Bank tidak boleh kosong');
    quMainBank.FocusControl;
    Abort;
  end;

  if TRIM(quMainRekening.AsString) = '' then
  begin
    pesan('Rekening tidak boleh kosong');
    quMainRekening.FocusControl;
    Abort;
  end;

  if TRIM(quMainNama.AsString) = '' then
  begin
    pesan('Nama Rekening tidak boleh kosong');
    quMainNama.FocusControl;
    Abort;
  end;

  if TRIM(quMainCabang.AsString) = '' then
  begin
    pesan('Cabang tidak boleh kosong');
    quMainCabang.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  begin
    ST := 'R';
    quMainRekJualID.AsString := ST+ FormatFloat('00', RunNumberGL(quAct, 'SAMsRekJual','RekJualID',ST,'0') + 1);
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmSAMsRekJual.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainFgActive.AsString := 'Y';
  quMainBank.FocusControl;
end;

procedure TfmSAMsRekJual.FormShow(Sender: TObject);
begin
  UsePeriod := FALSE;
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmSAMsRekJual.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUOMColumn3,TRUE);
  SetReadOnly(dbgUOMUpdUser,TRUE);
  SetReadOnly(dbgUOMUpdDate,TRUE);
end;

procedure TfmSAMsRekJual.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if quMain.State=dsBrowse then quMain.Edit;
  
  DBImage2.Picture.Bitmap := nil;
end;

procedure TfmSAMsRekJual.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if quMain.State=dsBrowse then quMain.Edit;

  if odLogo.Execute then
  begin
    DBImage2.Picture.LoadFromFile(odLogo.FileName);
    DBImage2.Refresh;
  end;
end;

end.
