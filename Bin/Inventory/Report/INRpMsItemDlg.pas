unit INRpMsItemDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls;

type
  TfmINRptMsItemDlg = class(TfmRptDlg)
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemId: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActProductID: TStringField;
    quActGroupID: TStringField;
    quActUOMID: TStringField;
    quActGarantee: TStringField;
    quActCurrID: TStringField;
    quActUserPrice: TBCDField;
    quActDealerPrice: TBCDField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    quActJangkaGarantee: TBCDField;
    quActMinimumStok: TBCDField;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptMsItemDlg: TfmINRptMsItemDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral;

{$R *.dfm}

procedure TfmINRptMsItemDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
end;

procedure TfmINRptMsItemDlg.rbSelectClick(Sender: TObject);
begin
  inherited;
   if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmINRptMsItemDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptMsItem.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);

       with qu001,sql do
       begin
          Close;Clear;
          add(' select ''A'' as GroupID ');
          Open;
       end;

       with qu002,sql do
       begin
          Close;Clear;
          add(' SELECT K.* FROM ( '
             +' select ''A'' as GroupID,A.ItemId,A.ItemName,A.TypeUnit,B.Description,A.UOMID,A.dealerPrice,A.merk, '
             +' CASE WHEN A.FgActive=''Y'' THEN ''AKTIF'' ELSE ''TDK AKTIF'' END as Status,A.FgActive,A.Jenis as Inv '
             +' FROM INMsItem A LEFT JOIN INMsTypeUnit B on A.TypeUnit=B.TypeUnit ) as K '
             +' WHERE K.GroupID=:GroupId ');
          if RadioGroup2.ItemIndex=1 then
          add(' AND Inv=''S'' ');
          if RadioGroup2.ItemIndex=2 then
          add(' AND Inv=''I'' ');
          if rbSelect.Checked then
          Add(' and ItemID IN '+SelGrid(quact,dbgList,'ItemID'));
          if CheckBox1.Checked then
          Add(' and K.FgActive=''Y'' ');
          if RadioGroup1.ItemIndex=0 then
          add(' order by K.ItemName,K.ItemID,K.Description,K.UOMID ');
          if RadioGroup1.ItemIndex=1 then
          add(' order by K.ItemID,K.ItemName,K.Description,K.UOMID ');
          if RadioGroup1.ItemIndex=2 then
          add(' order by K.Description,K.ItemName,K.ItemID,K.UOMID ');
          if RadioGroup1.ItemIndex=3 then
          add(' order by K.UOMID,K.ItemName,K.ItemID,K.Description ');
          Parameters.ParamByName('GroupId').DataType := ftString;
          Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;

     finally
        free;
     end;
end;

end.
