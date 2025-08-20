unit INMsSites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmINMsSites = class(TfmStdLv31)
    dbgGroup: TdxDBGrid;
    dbgGroupGroupID: TdxDBGridColumn;
    dbgGroupName: TdxDBGridColumn;
    dbgGroupUpdDate: TdxDBGridColumn;
    dbgGroupUser: TdxDBGridColumn;
    quMainSiteID: TStringField;
    quMainSiteName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFgGroup: TStringField;
    quMainNilai1: TBCDField;
    quMainNilai2: TBCDField;
    dbgGroupColumn6: TdxDBGridColumn;
    dbgGroupColumn7: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINMsSites: TfmINMsSites;

implementation

uses StdLv2, UnitGeneral, MyUnit, ConMain, Search;

{$R *.dfm}

procedure TfmINMsSites.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmINMsSites.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;

  //if (GroupUser<>'admin') then
  //begin
    dbgGroupColumn6.Visible := False;
    dbgGroupColumn7.Visible := False;
  //end;
end;

procedure TfmINMsSites.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgGroupUpdDate,TRUE);
  SetReadOnly(dbgGroupUser,TRUE);
  SetReadOnly(dbgGroupGroupID,quMain.State<>dsInsert);
  SetReadOnly(dbgGroupName,quMain.State<>dsInsert);
end;

procedure TfmINMsSites.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainSiteID.value)='' then
   Begin
     MsgInfo('Kode Site tidak boleh kosong');
     quMainSiteID.FocusControl;
     Abort;
   End;

   if Trim(quMainSiteName.value)='' then
   Begin
     MsgInfo('Nama Site tidak boleh kosong');
     quMainSiteName.FocusControl;
     Abort;
   End;

   If (quMain.State = dsInsert) then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select SiteID FROM INMsSites WHERE SiteID='''+quMainSiteID.AsString+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Kode Site sudah dipakai');
           quMainSiteID.FocusControl;
           Abort;
         end;
      End;
   end;

  quMainUpdDate.AsDateTime:= GetServerDateTime;
  quMainUpdUser.AsString:= dmMain.UserId;
end;

procedure TfmINMsSites.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainNilai1.AsCurrency := 1;
  quMainNilai2.AsCurrency := 1;
end;

procedure TfmINMsSites.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Master Sites';
    SQLString := 'SELECT SiteID as Kode,SiteName as Nama_Sites from INMsSites';
    if ShowModal = MrOk then
    begin
      qumain.Locate('GroupId',Res[0],[]);
    end;

    finally
      free;
    end;
end;

end.
