unit AROtoAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, DB, ADODB,
  StdCtrls, Buttons, ExtCtrls;

type
  TfmAROtoAdjustment = class(TfmRptDlg)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quDetil: TADOQuery;
    quDetilTransID: TStringField;
    quDetilItemID: TStringField;
    quDetilLItemName: TStringField;
    quDetilFgStatus: TStringField;
    quDetilQty: TBCDField;
    quDetilAlasan: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLUOMID: TStringField;
    quDetilPrice: TBCDField;
    quDetilRekeningID: TStringField;
    quDetilLRekeningName: TStringField;
    quDetilLTypeUnit: TStringField;
    quDetilkmawal: TStringField;
    quDetilkmakhir: TStringField;
    quDetilnomorban: TStringField;
    quDetilJmlAwl: TBCDField;
    quDetilSelisih: TCurrencyField;
    quDetilStatusban: TStringField;
    quDetilserial: TStringField;
    quDetilkeperluan: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilMRID: TStringField;
    quDetilfgNum: TIntegerField;
    quDetilLNama: TStringField;
    quDetilModal: TBCDField;
    quDetilJual: TBCDField;
    quDetilLMerk: TStringField;
    quDetilLDivisi: TStringField;
    quDetilNoUnit: TStringField;
    dsDetil: TDataSource;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainAcknowledgeBy: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFlagIN: TStringField;
    quMainexpedisi: TStringField;
    quMainDriver: TStringField;
    quMainnosj: TStringField;
    quMainnosegel: TStringField;
    quMaintglupload: TDateTimeField;
    quMainFgDivisi: TStringField;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAROtoAdjustment: TfmAROtoAdjustment;

implementation

{$R *.dfm}

end.
