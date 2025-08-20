unit ARMsSalesDt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, dxButton, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxCntner, ActnList, DB, ADODB, StdCtrls, ExtCtrls,
  dxCore, dxContainer, Buttons;

type
  TfmARMsSalesDt = class(TfmStdLv2)
    dbgMenu: TdxDBGrid;
    dbgMenuSalesID: TdxDBGridColumn;
    dbgMenuNo: TdxDBGridColumn;
    dbgMenuNama: TdxDBGridColumn;
    dbgMenuBirthDate: TdxDBGridDateColumn;
    dbgMenuJenKel: TdxDBGridImageColumn;
    dbgMenuNIK: TdxDBGridColumn;
    dbgMenuAgama: TdxDBGridButtonColumn;
    dbgMenuSuku: TdxDBGridButtonColumn;
    dbgMenuAlamat: TdxDBGridColumn;
    dbgMenuPhone: TdxDBGridColumn;
    dbgMenuNPWP: TdxDBGridColumn;
    dbgMenuBPJSKet: TdxDBGridColumn;
    dbgMenuBPJSKes: TdxDBGridColumn;
    dbgMenuRekening: TdxDBGridColumn;
    dbgMenuBank: TdxDBGridColumn;
    dbgMenuUpdDate: TdxDBGridDateColumn;
    dbgMenuUpdUser: TdxDBGridMaskColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quMainSalesID: TStringField;
    quMainItemID: TStringField;
    quMainItemName: TStringField;
    quMainAddress: TStringField;
    quMainPhone: TStringField;
    quMainBirthDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainAgama: TStringField;
    quMainJenKel: TStringField;
    quMainNIK: TStringField;
    quMainNPWP: TStringField;
    quMainBPJSKes: TStringField;
    quMainBPJSKet: TStringField;
    quMainRekening: TStringField;
    quMainBank: TStringField;
    quMainSuku: TStringField;
    quMainJenis: TStringField;
    dbgMenuJenis: TdxDBGridImageColumn;
    procedure FormShow(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dbgMenuAgamaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    SalesID : string;
  end;

var
  fmARMsSalesDt: TfmARMsSalesDt;

implementation

uses MyUnit, StrUtils, Search, ConMain, UnitGeneral;
{$R *.dfm}

procedure TfmARMsSalesDt.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;
  quMain.Active := TRUE;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM ARMsSalesDt WHERE SalesID='''+SalesID+''' ');
    Open;
  end;
end;

procedure TfmARMsSalesDt.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quMain.Append;
end;

procedure TfmARMsSalesDt.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort;
  if (dsMain <> nil) and (dsMain.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsMain.DataSet.Delete;
end;

procedure TfmARMsSalesDt.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARMsSalesDt.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quMain.Cancel;
end;

procedure TfmARMsSalesDt.quMainNewRecord(DataSet: TDataSet);
var Result : string;
begin
  inherited;
  with quAct, sql do
  begin
    Close;Clear;
    Add('SELECT ItemID FROM ARMsSalesDt WHERE SalesID='''+SalesID+''' ORDER BY ItemID DESC');
    Open;
    if IsEmpty then
       Result := '01'
    else
       Result := FormatFloat('00',StrToInt(RightStr(Fields[0].AsString,2))+1);
  end;
  quMainItemID.AsString:=Result;
end;

procedure TfmARMsSalesDt.dbgMenuAgamaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Agama';
       SQLString := 'SELECT NmMaster as Agama, KdMaster as Kode_Agama FROM AllMaster Where FgMaster=''A'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainAgama.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSalesDt.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  quMainSalesID.AsString := SalesID;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

end.
