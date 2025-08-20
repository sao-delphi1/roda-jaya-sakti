unit PRConfirm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons;

type
  TfmPRConfirm = class(TfmStdLv2)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Label1: TLabel;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPRConfirm: TfmPRConfirm;

implementation

{$R *.dfm}

procedure TfmPRConfirm.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;

end;

procedure TfmPRConfirm.Button2Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''Y'' WHERE PRID='''+Label1.Caption+''' AND ISNULL(FgOto,''W'')=''W'' ');
    ExecSQL;
  end;
  ShowMessage('Status Waiting telah diubah menjadi On Progress');
  ModalResult := MrOK;

end;

procedure TfmPRConfirm.Button1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''Y'' WHERE PRID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status PR telah diubah menjadi On Progress');
  ModalResult := MrOK;
end;

procedure TfmPRConfirm.Button3Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''F'' WHERE PRID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status PR telah diubah menjadi Finished');
  ModalResult := MrOK;
end;

procedure TfmPRConfirm.Button4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''P'' WHERE PRID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status PR telah diubah menjadi Pending');
  ModalResult := MrOK;
end;

procedure TfmPRConfirm.Button6Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''X'' WHERE PRID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status PR telah diubah menjadi Rejected');
  ModalResult := MrOK;
end;

procedure TfmPRConfirm.Button5Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''W'' WHERE PRID='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status PR telah diubah menjadi Waiting For Approval');
  ModalResult := MrOK;
end;

end.
