unit SAMsCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, dxEdLib, dxCntner, dxEditor, ExtCtrls,
  ActnList, DB, ADODB, StdCtrls, Buttons, dxCore, dxContainer, dxButton,
  dxDBELib;

type
  TfmSAMsCompany = class(TfmStdLv2)
    Panel1: TPanel;
    Label7: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    GroupBox1: TGroupBox;
    dxEdit1: TdxEdit;
    Label5: TLabel;
    dxEdit3: TdxEdit;
    Label3: TLabel;
    Label1: TLabel;
    dxMemo1: TdxMemo;
    dxEdit2: TdxEdit;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    dxEdit5: TdxEdit;
    dxEdit6: TdxEdit;
    dxEdit7: TdxEdit;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    dxEdit4: TdxEdit;
    Label4: TLabel;
    Label10: TLabel;
    dxMemo2: TdxMemo;
    Label11: TLabel;
    dxEdit8: TdxEdit;
    dxEdit9: TdxEdit;
    dxEdit10: TdxEdit;
    Save: TAction;
    Cancel: TAction;
    Label2: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit2Click(Sender: TObject);
  private
    { Private declarations }
  public
  develop : integer;
    { Public declarations }
  end;

var
  fmSAMsCompany: TfmSAMsCompany;

implementation

uses StdLv0, MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmSAMsCompany.FormShow(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add('Select * from SAMsCompany');
    Open;
    if Not IsEmpty then
    Begin
      dxEdit2.Text:=quAct.Fieldbyname('CompanyName').AsString;
      dxEdit3.Text:=quAct.Fieldbyname('Phone').AsString;
      dxEdit4.Text:=quAct.Fieldbyname('Fax').AsString;
      dxMemo1.Text:=quAct.Fieldbyname('CompanyAdd1').AsString;
      dxMemo2.Text:=quAct.FieldbyName('CompanyAdd2').AsString;
      dxEdit5.Text:=quAct.Fieldbyname('Rekening').AsString;
      dxEdit6.Text:=quAct.Fieldbyname('NamaRek').AsString;
      dxEdit7.Text:=quAct.Fieldbyname('CabangRek').AsString;
      dxEdit8.Text:=quAct.Fieldbyname('Rekening1').AsString;
      dxEdit9.Text:=quAct.Fieldbyname('NamaRek1').AsString;
      dxEdit10.Text:=quAct.Fieldbyname('CabangRek1').AsString;
      dxEdit1.Text:=quAct.Fieldbyname('Email').AsString;
      if TRIM(quAct.Fieldbyname('FgTax').AsString) = 'Y' then CheckBox1.Checked := true else CheckBox1.Checked := false;
    End;
  End;


end;

procedure TfmSAMsCompany.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmSAMsCompany.bbSaveClick(Sender: TObject);
var fgtax : string ;
begin
  inherited;
  if CheckBox1.Checked then fgtax := 'Y' else fgtax :='T';
  with quAct,sql do
  Begin
    Close;Clear;
    add('Select * from SAMsCompany');
    Open;
    if  IsEmpty then
    Begin
       With qumain,sql do
       begin
        Close;Clear;
        Add(' INSERT INTO SAMsCompany(Companyname,Companyadd1,Companyadd2,Phone,Email,Fax,NPWP,NPWPDate,Rekening,NamaRek,CabangRek, '
           +' Rekening1,NamaRek1,CabangRek1,FgTax) '
           +' values('''+dxEdit2.Text+''','''+dxMemo1.Text+''' ,'''+dxMemo2.text+''','''+ dxEdit3.Text+''' '
           +' ,'''+dxEdit1.Text+''','''+dxEdit4.Text+''','''','''','''+dxEdit5.Text+''','''+dxEdit6.Text+''','''+dxEdit7.Text+''', '
           +' '''+dxEdit8.Text+''','''+dxEdit9.Text+''','''+dxEdit10.Text+''','''+fgtax+''') ');
        ExecSQL;
       End;
    End
    Else
    Begin
      With qumain,sql do
       begin
        Close;Clear;
        Add(' UPDATE SAMsCompany SET Companyname='''+dxEdit2.Text+''',Companyadd1='''+dxMemo1.Text+''' '
           +' ,Companyadd2='''+dxMemo2.text+''',Phone='''+ dxEdit3.Text+''',Email='''+dxEdit1.Text+''' '
           +' ,Fax='''+dxEdit4.Text+''',NPWP='''',NPWPDate='''',Rekening='''+dxEdit5.Text+''',NamaRek='''+dxEdit6.Text+''', '
           +' CabangRek='''+dxEdit7.Text+''',FgTax='''+fgtax+''',Rekening1='''+dxEdit8.Text+''',NamaRek1='''+dxEdit9.Text+''', '
           +' CabangRek1='''+dxEdit10.Text+''' ');
        ExecSQL;
       End;
    End;
  End;
  sCompanyName   := dxEdit2.Text;
  sCompanyAddress := dxMemo1.Text;
  MsgInfo('Setting Perusahaan berhasil di ubah');
  Close;
end;

procedure TfmSAMsCompany.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod:=False;
end;

procedure TfmSAMsCompany.dxEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsCompany.dxEdit2Click(Sender: TObject);
begin
  inherited;
  develop := develop+1;
  if develop=7 then
  ShowMessage('youre develop now');
end;

end.
