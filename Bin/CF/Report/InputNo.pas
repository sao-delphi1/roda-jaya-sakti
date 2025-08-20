unit InputNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComCtrls;

type
  TfmInputNo = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    quAct: TADOQuery;
    Label2: TLabel;
    dtpDari: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tgldari : Tdatetime;
  end;

var
  fmInputNo: TfmInputNo;

implementation

{$R *.dfm}
uses UnitGeneral, MyUnit, ConMain;

procedure TfmInputNo.FormShow(Sender: TObject);
begin
  dtpDari.Date := tgldari;
  Edit1.SetFocus;
end;

procedure TfmInputNo.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmInputNo.Button1Click(Sender: TObject);
begin
  if TRIM(Edit1.Text)='' then
  begin
    ShowMessage('Masukkan Nomor Faktur');
    Abort;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrKonsinyasiInvSub Set FPS='''+Edit1.Text+''',tglFPS='''+FormatDateTime('yyyy-mm-dd',dtpdari.date)+''' '
       +'WHERE KonsinyasiInvID='''+Label1.Caption+''' AND POID='''+Label2.Caption+''' ');
    Add('UPDATE APTrPurchaseID Set POID='''+Edit1.Text+''',tglFPS='''+FormatDateTime('yyyy-mm-dd',dtpdari.date)+''' '
       +'WHERE PurchaseID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Sudah Berhasil Di-Update');
  ModalResult := MrOK;
end;

end.
