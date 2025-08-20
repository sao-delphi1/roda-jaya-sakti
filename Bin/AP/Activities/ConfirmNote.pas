unit ConfirmNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, dxEditor,
  dxEdLib;

type
  TfmConfirmNote = class(TfmStdLv0)
    dxMemo1: TdxMemo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fgform : string;
  end;

var
  fmConfirmNote: TfmConfirmNote;

implementation

{$R *.dfm}
uses UnitGeneral,Conmain;

procedure TfmConfirmNote.Button1Click(Sender: TObject);
begin
  inherited;
  if FgForm='H' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('Update Aptrpurchaserequestdt set FgConfirm=''Y'',ConfirmDate=getdate(),confirmby='''+dmmain.UserId+''',ConfirmNote='''+dxMemo1.Text+''' '
         +'where prid='''+Label2.Caption+''' ');
      ExecSQL;
    end;
    showmessage('Sudah berhasil di konfirm');
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('Update Aptrpurchaserequestdt set FgConfirm=''Y'',ConfirmDate=getdate(),confirmby='''+dmmain.UserId+''',ConfirmNote='''+dxMemo1.Text+''' '
         +'where prid='''+Label2.CAption+''' '
         +'and itemid='''+Label3.Caption+''' '
         +'and numall='''+Label4.Caption+''' ');
      ExecSQL;
    end;
    showmessage('Sudah berhasil di konfirm');
  end;
  ModalResult := MrOK;
end;

procedure TfmConfirmNote.Button2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
