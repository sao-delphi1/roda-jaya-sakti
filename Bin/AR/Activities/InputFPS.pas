unit InputFPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxButton;

type
  TfmInputFPS = class(TfmStdLv2)
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmInputFPS: TfmInputFPS;

implementation

{$R *.dfm}

procedure TfmInputFPS.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmInputFPS.KrgBrgClick(Sender: TObject);
begin
  inherited;
  Edit1.Text := '';
end;

procedure TfmInputFPS.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Yakin Simpan ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin

    with quAct,SQL do
    begin
      Close;Clear;
      Add('Update Artrkoninvpelhd set FPS='''+Edit1.Text+''' where koninvpelid='''+label2.Caption+''' ');
      ExecSQL;
    end;
    Showmessage('Sudah Berhasil disimpan');
    ModalResult := MrOK;

  end else
  begin
    Abort;
  end;
end;

end.
