unit PRAction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, StdCtrls;

type
  TfmPRAction = class(TfmStdLv1)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Label1: TLabel;
    Button5: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button7: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Button8: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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
    Jum : currency;
    Note : String;
    FGFOrm : String;
  end;

var
  fmPRAction: TfmPRAction;

implementation

uses ConMain;

{$R *.dfm}

procedure TfmPRAction.FormShow(Sender: TObject);
begin
  inherited;
  Edit1.Text := CurrToStr(Jum);
  Edit2.Text := Note;
end;

procedure TfmPRAction.Button7Click(Sender: TObject);
begin
  inherited;
  if FgForm='PR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrpurchaseRequestDt SET Qty='+Edit1.Text+',Jumlah='+Edit1.Text+' '
         +'WHERE PRID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND NumAll='''+Label6.Caption+''' ');
      ExecSQL;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE INTrTransferItemDt SET QtyK='+Edit1.Text+' '
         +'WHERE TransferID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND FgNum='''+Label6.Caption+''' ');
      ExecSQL;
    end;
  end;
  ShowMessage('Jumlah Sudah Diubah');
end;

procedure TfmPRAction.Button8Click(Sender: TObject);
begin
  inherited;
  if FGForm='PR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrpurchaseRequestDt SET noteoto='''+Edit2.Text+''' '
         +'WHERE PRID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND NumAll='''+Label6.Caption+''' ');
      ExecSQL;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE INTrTransferItemDt SET Keterangan='''+Edit2.Text+''' '
         +'WHERE TransferID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND FgNum='''+Label6.Caption+''' ');
      ExecSQL;
    end;
  end;
  ShowMessage('Keterangan Sudah Diubah');
end;

procedure TfmPRAction.Button2Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''W'' '
       +'WHERE PRID='''+Label1.Caption+''' '
       +'AND ItemID='''+Label2.Caption+''' '
       +'AND NumAll='''+Label6.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status Sudah diubah Menjadi Waiting');
  ModalResult := MROk;
end;

procedure TfmPRAction.Button1Click(Sender: TObject);
begin
  inherited;
  if FgForm='PR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrpurchaseRequestDt SET FgOto=''Y'' '
         +'WHERE PRID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND NumAll='''+Label6.Caption+''' ');
      ExecSQL;
    end;
    ShowMessage('Status Sudah diubah Menjadi on Progress');
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE INTrTransferItemDt SET FgOto=''Y'',OtoBy='''+dmmain.UserID+''' '
         +'WHERE TransferID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND FgNum='''+Label6.Caption+''' ');
      ExecSQL;
    end;
    ShowMessage('Status Barang diubah menjadi Diterima');
  end;
  ModalResult := MROk;
end;

procedure TfmPRAction.Button3Click(Sender: TObject);
begin
  inherited;
  if FgForm='PR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrpurchaseRequestDt SET FgOto=''R'' '
         +'WHERE PRID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND NumAll='''+Label6.Caption+''' ');
      ExecSQL;
    end;
    ShowMessage('Status Sudah diubah Menjadi Repair');
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE INTrTransferItemDt SET FgOto=''T'',OtoBy='''+dmmain.UserID+''' '
         +'WHERE TransferID='''+Label1.Caption+''' '
         +'AND ItemID='''+Label2.Caption+''' '
         +'AND FgNum='''+Label6.Caption+''' ');
      ExecSQL;
    end;
    ShowMessage('Status Barang Belum Diterima');
  end;
  ModalResult := MROk;
end;

procedure TfmPRAction.Button4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''P'' '
       +'WHERE PRID='''+Label1.Caption+''' '
       +'AND ItemID='''+Label2.Caption+''' '
       +'AND NumAll='''+Label6.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status Sudah diubah Menjadi Pending');
  ModalResult := MROk;
end;

procedure TfmPRAction.Button6Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''X'' '
       +'WHERE PRID='''+Label1.Caption+''' '
       +'AND ItemID='''+Label2.Caption+''' '
       +'AND NumAll='''+Label6.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status Sudah diubah Menjadi Rejected');
  ModalResult := MROk;
end;

procedure TfmPRAction.Button5Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrpurchaseRequestDt SET FgOto=''F'' '
       +'WHERE PRID='''+Label1.Caption+''' '
       +'AND ItemID='''+Label2.Caption+''' '
       +'AND NumAll='''+Label6.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Status Sudah diubah Menjadi Finished');
  ModalResult := MROk;
end;

end.
