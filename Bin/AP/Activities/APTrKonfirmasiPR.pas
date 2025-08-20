unit APTrKonfirmasiPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPTrKonfirmasiPR = class(TfmStdLv31)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Label1: TLabel;
    dxDBGrid1: TdxDBGrid;
    quMainTransferID: TStringField;
    quMainTransferDate: TDateTimeField;
    quMainItemID: TStringField;
    quMainItemName: TStringField;
    quMaintypeunit: TStringField;
    quMainPRID: TStringField;
    quMainNoUnit: TStringField;
    quMainQty: TBCDField;
    quMainQtyK: TBCDField;
    quMainKeterangan: TStringField;
    quMainFgOto: TStringField;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    dxDBGrid1Column11: TdxDBGridColumn;
    quMainOtoBy: TStringField;
    CheckBox1: TCheckBox;
    quMainFgNum: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPTrKonfirmasiPR: TfmAPTrKonfirmasiPR;

implementation

uses StdLv2, Search, PRAction;

{$R *.dfm}

procedure TfmAPTrKonfirmasiPR.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAPTrKonfirmasiPR.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Gudang';
        SQLString := 'SELECT WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang'
                    +' FROM INMsWareHouse ORDER BY WareHouseId';
        if ShowModal = MrOK then
        begin
           Edit1.Text := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmAPTrKonfirmasiPR.Button2Click(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('select A.TransferID,B.TransferDate,A.ItemID,C.ItemName,C.typeunit,A.PRID,D.NoUnit,A.Qty,'
       +'ISNULL(A.QtyK,A.Qty) as QtyK,A.Keterangan,A.FgOto,A.OtoBy,A.FgNum '
       +'from INTrTransferItemDt A '
       +'INNER JOIN INTrTransferItemHd B on A.TransferID=B.TransferID AND B.FgTrf=''RL'' '
       +'INNER JOIN APTrPurchaseRequestDt D on A.PRID=D.PRID AND D.ItemID=A.ItemID AND A.FgNum=D.NumAll '
       +'INNER JOIN INMsItem C on A.ItemID=C.ItemID '
       +'WHERE B.WarehouseDest='''+Edit1.Text+''' ');
    if RadioGroup1.ItemIndex = 0 then
    Add('AND ISNULL(A.FgOto,''T'')=''T'' ')
    else
    Add('AND ISNULL(A.FgOto,''T'')=''Y'' ');
    Open;
  end;

  if CheckBox1.Checked then
  dxDBGrid1Column11.Visible := TRUE
  else
  dxDBGrid1Column11.Visible := FALSE;
end;

procedure TfmAPTrKonfirmasiPR.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  Button2Click(button2);
end;

procedure TfmAPTrKonfirmasiPR.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmPRAction.Create (Application) do
   try
     FgForm:='IN';
     Label1.Caption:=Self.quMainTransferID.AsString;
     Label2.Caption:=Self.quMainItemID.AsString;
     Label6.Caption:=Self.quMainFgNum.AsString;
     Note:=Self.quMainKeterangan.AsString;
     Jum := Self.quMainQtyK.AsCurrency;
     Button4.Visible := False;
     Button5.Visible := False;
     Button6.Visible := False;
     Button1.Caption := 'TERIMA';
     Button3.Caption := 'BELUM TERIMA';
     ShowModal;
   finally
     Free;
   end;
   Button2Click(Button2);
end;

end.
