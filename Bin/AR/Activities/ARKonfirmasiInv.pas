unit ARKonfirmasiInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  StdCtrls;

type
  TfmARKonfirmasiInv = class(TfmStdLv0)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxButton4: TdxButton;
    dxButton3: TdxButton;
    quAct1: TADOQuery;
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARKonfirmasiInv: TfmARKonfirmasiInv;

implementation

{$R *.dfm}

procedure TfmARKonfirmasiInv.dxButton4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    close;clear;
    add('Update ARTrKonInvPelHd set FgOto=''Y'' where KonInvPelID='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ModalResult := MrOK;
end;

procedure TfmARKonfirmasiInv.dxButton3Click(Sender: TObject);
begin
  inherited;
  with quAct1,SQL do
  begin
    close;clear;
    add('Update ARTrKonInvPelHd set FgOto=''T'' where KonInvPelID='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ModalResult := MrOK;
end;

end.
