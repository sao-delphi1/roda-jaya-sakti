unit INRptJadwalDriver2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, DB, ADODB, StdCtrls, Buttons, ExtCtrls, ComCtrls, dxEditor,
  dxEdLib;

type
  TfmINRptJadwalDriver2 = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    quActTypeClassUnit: TStringField;
    quActWH: TBCDField;
    quActBD: TBCDField;
    quActSTB: TBCDField;
    quActHarga: TBCDField;
    dgrTypeClass: TdxDBGridColumn;
    dgrWH: TdxDBGridColumn;
    dgrBD: TdxDBGridColumn;
    dgrSTB: TdxDBGridColumn;
    dgrHarga: TdxDBGridColumn;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptJadwalDriver2: TfmINRptJadwalDriver2;

implementation

{$R *.dfm}

uses UnitDate,DateUtils, StdLv0;

procedure TfmINRptJadwalDriver2.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:= EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
  quAct.Open;
  bbRefreshClick(bbRefresh);
end;

procedure TfmINRptJadwalDriver2.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct, SQL do
  begin
  close;clear;
    add('SELECT K.TypeClassUnit,ISNULL(SUM(WH),0) as WH,ISNULL(SUM(BD),0) as BD,ISNULL(SUM(STB),0) as STB,K.Harga FROM ( '
        +'select  D.Transdate,A.NotaID,A.NoUnit,C.TypeClassUnit,ISNULL(A.HMAkhir-A.HMAwal,0) as WH,ISNULL(A.BDTime,0) as BD,ISNULL(A.STBTime,0) as STB, '
        +'ISNULL((SELECT X.Price FROM APTrRentalDt X inner join APTrRentalHd Y on X.RentalID=Y.RentalID '
        +'WHERE C.TypeClassUnit=X.TypeClassUnit AND Y.SiteID=D.SiteID '
        +'AND CONVERT(VARCHAR(10),Y.Transdate,112) <= CONVERT(VARCHAR(10),D.Transdate,112)),0) as Harga '
        +'from INTrJadwalDriverDt A '
        +'inner join inmsnounit B on A.Nounit=B.Nounit '
        +'inner join INMsTypeClassUnit C on B.TypeClassUnit=C.TypeClassUnit '
        +'inner join INTrJadwalDriverHd D on A.NotaID=D.NotaID  '
        +') as K WHERE convert(varchar(10),k.TransDate,112) between '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' and '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''  '
        +'GROUP BY K.TypeClassUnit,K.Harga');
    open;
  end;
end;

end.
