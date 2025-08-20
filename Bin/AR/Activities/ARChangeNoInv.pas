unit ARChangeNoInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxEditor, dxEdLib, dxDBELib,
  dxButton;

type
  TfmARChangeNoInv = class(TfmStdLv2)
    Edit1: TEdit;
    txtPelangganID: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label36: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    quMainPOID: TStringField;
    quMainInvoiceID: TStringField;
    quMainIDInvoice: TStringField;
    bbSimpanDetil: TdxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbSimpanDetilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARChangeNoInv: TfmARChangeNoInv;

implementation

{$R *.dfm}

uses Search,StrUtils;

procedure TfmARChangeNoInv.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmARChangeNoInv.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmARChangeNoInv.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT POID as No_SO,InvoiceID as No_Invoice '
                   +' FROM ARtrPurchaseOrderHD ';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainPOID.Value := Res[0];
            quMainInvoiceID.Value := Res[1];
       end;
    finally
       Free;
    end;
end;

procedure TfmARChangeNoInv.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT InvoiceID as No_Invoice,POID as No_SO '
                   +' FROM ARtrPurchaseOrderHD ';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainPOID.Value := Res[1];
            quMainInvoiceID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARChangeNoInv.bbSimpanDetilClick(Sender: TObject);
var idinvoice : string;
begin
  inherited;
  idinvoice := RightStr(quMainInvoiceID.AsString,6);

  if TRIM(Edit1.Text) = '' then
  begin
    ShowMessage('Nomor Invoice Baru Tidak Boleh Kosong!');
    Edit1.Focused;
    Abort;
  end;

  with quAct, SQL do
  begin
    Close;Clear;
    Add('Update ApTrPurchaseOrderHD Set InvoiceID='''+Edit1.Text+''',IDinvoice='''+idinvoice+''' where POID='''+quMainPOID.AsString+''' ');
    ExecSQL;
    ShowMessage('Data telah diubah!');
  End;
end;

end.
