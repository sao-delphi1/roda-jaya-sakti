unit APOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid;

type
  TfmAPOtorisasi = class(TfmStdLv2)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1VoucherID: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Transdate: TdxDBGridColumn;
    dxDBGrid1Actor: TdxDBGridColumn;
    dxDBGrid1CurrID: TdxDBGridColumn;
    dxDBGrid1JumlahD: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridButtonColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPOtorisasi: TfmAPOtorisasi;

implementation

{$R *.dfm}

procedure TfmAPOtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

end.
