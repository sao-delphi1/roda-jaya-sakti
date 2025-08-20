unit KonfirmasiKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  StdCtrls;

type
  TfmKonfirmasiKonsinyasi = class(TfmStdLv0)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxButton4: TdxButton;
    dxButton3: TdxButton;
    dxButton1: TdxButton;
    Label4: TLabel;
    Label5: TLabel;
    quAct1: TADOQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmKonfirmasiKonsinyasi: TfmKonfirmasiKonsinyasi;

implementation

{$R *.dfm}

uses MyUnit,UnitGeneral;

procedure TfmKonfirmasiKonsinyasi.dxButton4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Update APTrKonsinyasiDt Set FgTerima=''Y'' where Note='''+Label3.Caption+''' AND ItemID='''+Label4.Caption+''' AND KonsinyasiID='''+Label12.Caption+''' AND NumAll='''+Label1.Caption+''' ');
    ExecSQL;
  end;

  with quAct1,SQL do
  begin
     Close;Clear;
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID) '
        +'VALUES ('''+Label12.Caption+''',getdate(),'''+Label6.Caption+''',7,'''+Label7.Caption+''', '
        +''''+label4.Caption+''','+Label8.Caption+','''+Label9.Caption+''','''+Label10.Caption+''','''+Label11.Caption+''',''AP'' )');
     with Parameters do
     begin
      // ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
     end;
     //ShowMessage(Sql.text);
     ExecSQL;
  end;
  
  ModalResult := MrOK;
end;

procedure TfmKonfirmasiKonsinyasi.dxButton3Click(Sender: TObject);
begin
  inherited;
  Close;

 { with quAct,SQL do
  begin
    Close;Clear;
    Add('Update APTrKonsinyasiDt Set FgTerima=''T'' where KonsinyasiID='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ModalResult := MrOK;   }
end;

procedure TfmKonfirmasiKonsinyasi.dxButton1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Update APTrKonsinyasiDt Set FgTerima=''X'' where Note='''+Label3.Caption+''' AND ItemID='''+Label4.Caption+''' AND KonsinyasiID='''+Label12.Caption+''' AND NumAll='''+Label1.Caption+''' ');
    ExecSQL;
  end;
  ModalResult := MrOK;
end;

end.
