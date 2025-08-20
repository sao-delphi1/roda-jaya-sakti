unit INMsGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms;

type
  TfmINMsGroup = class(TfmStdLv31)
    dbgGroup: TdxDBGrid;
    dbgGroupGroupID: TdxDBGridColumn;
    dbgGroupName: TdxDBGridColumn;
    quMainGroupID: TStringField;
    quMainGroupDesc: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgGroupUser: TdxDBGridColumn;
    dbgGroupUpdDate: TdxDBGridColumn;
    quMainFgGroup: TStringField;
    dbgGroupColumn5: TdxDBGridImageColumn;
    dbgGroupColumn6: TdxDBGridImageColumn;
    quMainGroupA: TStringField;
    quMainJenis: TStringField;
    dbgGroupColumn7: TdxDBGridImageColumn;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CekStatus;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
    Stlap : string;
  end;

var
  fmINMsGroup: TfmINMsGroup;

implementation

uses UnitGeneral, ConMain, Search;

{$R *.dfm}
procedure TfmINMsGroup.CekStatus;
Begin
  if StLap='GR' then
  begin
    With quAct,sql do
    Begin
      Close;Clear;
      Add('Select Top 1 GroupId FROM INMsItem WHERE GroupId='''+quMainGroupID.AsString+'''');
      Open;
      if not IsEmpty then
      Begin
        MsgInfo('kode Group ini sudah di pakai di Master Barang');
        Abort;
      End;
    End;
  end;
End;

procedure TfmINMsGroup.FormShow(Sender: TObject);
begin
  UsePeriod := FALSE;
  SettingDxGrid(dbgGroup);
  inherited;
  quMain.Active:=TRUE;
  if StLap='GR' then
  begin
    Caption := 'Master Category';
    with quMain, SQL do
    begin
      Close;Clear;
      Add('select GroupID,GroupDesc,UpdDate,UpdUser,FgGroup,FgGroup as GroupA,FgGroup as Jenis from INMsGroup');
      Open;
    end;
    dbgGroupGroupID.Caption := 'Kode Category';
    dbgGroupName.Caption := 'Nama Category';
  end;
  if StLap='ST' then
  begin
    Caption := 'Master Sites';
    with quMain, SQL do
    begin
      Close;Clear;
      Add('select SiteID as GroupID,SiteName as GroupDesc,UpdDate,UpdUser,FgGroup,FgGroup as GroupA,FgGroup as Jenis from INMsSites');
      Open;
    end;
    dbgGroupGroupID.Caption := 'Kode Sites';
    dbgGroupName.Caption := 'Nama Sites';
  end;
  if StLap='TU' then
  begin
    Caption := 'Master Type Unit';
    with quMain, SQL do
    begin
      Close;Clear;
      Add('select TypeUnit as GroupID,Description as GroupDesc,UpdDate,UpdUser,FgGroup,FgGroup as GroupA,FgGroup as Jenis from INMsTypeUnit');
      Open;
    end;
    dbgGroupGroupID.Caption := 'Type Unit';
    dbgGroupName.Caption := 'Description';
  end;
  if StLap='TCU' then
  begin
    Caption := 'Master Type Class Unit';
    with quMain, SQL do
    begin
      Close;Clear;
      Add('select TypeClassUnit as GroupID,Description as GroupDesc,UpdDate,UpdUser,FgGroup,FgGroup as GroupA,FgGroup as Jenis from INMsTypeClassUnit');
      Open;
    end;
    dbgGroupGroupID.Caption := 'Type Class Unit';
    dbgGroupName.Caption := 'Description';
  end;
  if StLap='NU' then
  begin
    Caption := 'Master Nomor Unit';
    with quMain, SQL do
    begin
      Close;Clear;
      Add('select NoUnit as GroupID,Description as GroupDesc,UpdDate,UpdUser,FgGroup,GroupID as GroupA,Jenis from INMsNoUnit');
      Open;
    end;
    dbgGroupGroupID.Caption := 'Nomor Unit';
    dbgGroupName.Caption := 'Description';
  end;

  quMain.Last;
end;

procedure TfmINMsGroup.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainGroupId.value)='' then
   Begin
     MsgInfo('Kode tidak boleh kosong');
     quMainGroupId.FocusControl;
     Abort;
   End;

   If (quMain.State = dsInsert) AND (StLap='GR') then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select GroupID FROM INMsGroup WHERE GroupID='''+quMainGroupId.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Kode ini sudah dipakai');
           quMainGroupId.FocusControl;
           Abort;
         end;
      End;
   end;
  quMainUpdDate.AsDateTime:= GetServerDateTime;
  quMainUpdUser.AsString:= dmMain.UserId;
end;

procedure TfmINMsGroup.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    begin
    try
      if StLap='GR' then
      begin
        Title := 'Master Group';
        SQLString := 'SELECT GroupId as Kode,GroupDesc as Kelompok from INMsGroup';
      end;
      if StLap='ST' then
      begin
        Title := 'Master Sites';
        SQLString := 'SELECT SiteID as Kode,SiteName as Nama_Sites from INMsSites';
      end;
      if StLap='TU' then
      begin
        Title := 'Master Type Unit';
        SQLString := 'SELECT TypeUnit as TypeUnit,Description as Description from INMstypeUnit';
      end;
      if StLap='TCU' then
      begin
        Title := 'Master Type Class Unit';
        SQLString := 'SELECT TypeClassUnit as TypeUnit,Description as Description from INMstypeClassUnit';
      end;
      if StLap='NU' then
      begin
        Title := 'Master Nomor Unit';
        SQLString := 'SELECT NoUnit as NoUnit,Description as Description from INMsNoUnit';
      end;
      if ShowModal = MrOk then
      begin
        qumain.Locate('GroupId',Res[0],[]);
      end;

      finally
        free;
      end;
    end;
end;

procedure TfmINMsGroup.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgGroupGroupID,quMain.State<>dsInsert);
  SetReadOnly(dbgGroupUser,TRUE);
  SetReadOnly(dbgGroupUpdDate,TRUE);
end;

procedure TfmINMsGroup.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmINMsGroup.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainGroupId.FocusControl;
  quMainFgGroup.AsString := 'T';
end;

end.
