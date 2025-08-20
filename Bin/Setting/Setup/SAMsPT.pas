unit SAMsPT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  DBCtrls, dxDBELib, dxEditor, ExtDlgs;

type
  TfmSAMsPT = class(TfmStdLv31)
    quMainid: TAutoIncField;
    quMainKodePT: TStringField;
    quMainNamaPT: TStringField;
    quMainAlamatPT: TStringField;
    quMainLogoPT: TBlobField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFgActive: TStringField;
    Label10: TLabel;
    DBImage1: TDBImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label25: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    Label3: TLabel;
    dxDBMemo1: TdxDBMemo;
    Label2: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    odLogo: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSAMsPT: TfmSAMsPT;

implementation

uses StdLv2, MyUnit, UnitGeneral, Search, ConMain;

{$R *.dfm}

procedure TfmSAMsPT.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmSAMsPT.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;

  DBRadioGroup3.Left := GroupBox1.Left;
end;

procedure TfmSAMsPT.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,quMain.state<>dsInsert);
end;

procedure TfmSAMsPT.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quMainKodePT.AsString)='' then
  begin
    ShowMessage('Kode PT belum diisi');
    quMainKodePT.FocusControl;
    Abort;
  end;

  if TRIM(quMainNamaPT.AsString)='' then
  begin
    ShowMessage('Nama tidak boleh kosong');
    quMainNamaPT.FocusControl;
    Abort;
  end;

  if quMain.State=dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('select KodePT from SAMsPT where KodePT='''+quMainKodePT.AsString+''' ');
      Open;
    end;
    if quAct.RecordCount<>0 then
    begin
      ShowMessage('Kode PT ini sudah ada');
      quMainKodePT.FocusControl;
      Abort;
    end;
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.userid;
end;

procedure TfmSAMsPT.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Perusahaan';
       SQLString := 'SELECT KodePT as Kode_PT,NamaPT as Nama_PT,AlamatPT as Alamat_PT, '
                   +'CASE WHEN FgActive=''Y'' THEN ''AKTIF'' ELSE ''TIDAK AKTIF'' END as Status_PT '
                   +'FROM SAMsPT ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KodePT',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPT.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if quMain.State=dsBrowse then quMain.Edit;

  if odLogo.Execute then
  begin
    DBImage1.Picture.LoadFromFile(odLogo.FileName);
    DBImage1.Refresh;
  end;
end;

procedure TfmSAMsPT.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if quMain.State=dsBrowse then quMain.Edit;
  DBImage1.Picture.Bitmap := nil;
end;

end.
