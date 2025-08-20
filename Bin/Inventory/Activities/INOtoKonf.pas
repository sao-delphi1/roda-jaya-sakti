unit INOtoKonf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons;

type
  TfmINOtoKonf = class(TfmStdLv2)
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINOtoKonf: TfmINOtoKonf;

implementation

{$R *.dfm}

procedure TfmINOtoKonf.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := false;
end;

procedure TfmINOtoKonf.Button1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE INTRKanibalHD set FgOto=''Y'' '
       +'WHERE Transid='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  showmessage('Berhasil di-Approve');
end;

procedure TfmINOtoKonf.Button3Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE INTRKanibalHD set FgOto=''X'' '
       +'WHERE Transid='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  showmessage('Nota Transaksi di-Batalkan');
end;

procedure TfmINOtoKonf.Button4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE INTRKanibalHD set FgOto=''T'' '
       +'WHERE Transid='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  showmessage('Nota Transaksi belum di-Approve. status pending');
end;

end.
