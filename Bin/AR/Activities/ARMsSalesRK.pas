unit ARMsSalesRK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, dxButton, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxCntner, ActnList, DB, ADODB, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer;

type
  TfmARMsSalesRK = class(TfmStdLv2)
    dbgMenu: TdxDBGrid;
    dbgMenuSalesID: TdxDBGridColumn;
    dbgMenuNo: TdxDBGridColumn;
    dbgMenuUpdDate: TdxDBGridDateColumn;
    dbgMenuUpdUser: TdxDBGridMaskColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    Label18: TLabel;
    quMainSalesID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainStatus: TStringField;
    quMainKeterangan: TStringField;
    quMainMCUDate: TDateTimeField;
    quMainMCUNo: TStringField;
    quMainMCULocation: TStringField;
    quMainItemID: TStringField;
    dbgMenuMCUDate: TdxDBGridDateColumn;
    dbgMenuMCUNo: TdxDBGridColumn;
    dbgMenuStatus: TdxDBGridImageColumn;
    dbgMenuNote: TdxDBGridColumn;
    dbgMenuMCULoc: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    SalesID : String;
    { Public declarations }
  end;

var
  fmARMsSalesRK: TfmARMsSalesRK;

implementation

uses StdLv1, UnitGeneral, MyUnit, StrUtils, UnitDate, ConMain;

{$R *.dfm}

procedure TfmARMsSalesRK.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmARMsSalesRK.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quMain.Append;
end;

procedure TfmARMsSalesRK.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort;
  if (dsMain <> nil) and (dsMain.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsMain.DataSet.Delete;
end;

procedure TfmARMsSalesRK.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quMain.State = dsInsert then
  begin
   Self.quMain.Edit;
   Self.quMain.Post;
   Self.quMain.Requery();
  end;
  if Self.quMain.State = dsEdit then
  begin
   quMain.Post;
  end;
end;

procedure TfmARMsSalesRK.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quMain.Cancel;
end;

procedure TfmARMsSalesRK.quMainNewRecord(DataSet: TDataSet);
Var Result : string;
begin
  inherited;
  with quAct, sql do
  begin
    Close;Clear;
    Add('SELECT ItemID FROM ARMsSalesRK WHERE SalesID='''+SalesID+''' ORDER BY ItemID DESC');
    Open;
    if IsEmpty then
       Result := '01'
    else
       Result := FormatFloat('00',StrToInt(RightStr(Fields[0].AsString,2))+1);
  end;
  quMainItemID.AsString:=Result;

  quMainMCUDate.asDateTime := GetServerDateTime;
  quMainStatus.Value := 'F';
end;

procedure TfmARMsSalesRK.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  quMainSalesID.AsString := SalesID;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARMsSalesRK.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM ARMsSalesRK WHERE SalesID='''+SalesID+''' ');
    Open;
  end;
  Label18.Caption := SalesID;
end;

procedure TfmARMsSalesRK.dsMainStateChange(Sender: TObject);
begin
  inherited;
  setreadonly(dbgMenuNo,TRUE);
end;

end.
