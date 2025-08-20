unit ConMain;

interface

uses

  SysUtils, Classes, DB, ADODB, Forms, inifiles,Controls;

type                                                 
  TdmMain = class(TDataModule)
    dbConn: TADOConnection;
    quUnit: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private                                                                                      
    { Private declarations }
    FUserId : String;
  protected
    Procedure Inisialisasi;
    function ConnectDB(showError: boolean = true):boolean;
  public
    { Public declarations }
    CompName,sQuery : String;
    FSysPrd1, FSysPrd2 : TDateTime;
    Property UserId : String Read FUserId Write FUserId;
  end;

var
  dmMain: TdmMain;
  dbName,GroupUser,FgEdit,FgTambah,FgDelete,dmNama,FgGaji : String;
implementation

uses UnitGeneral, MyUnit, UnitDate, PickDatabase;

{$R *.dfm}

Procedure TdmMain.Inisialisasi;
Begin
    sQuery   := 'SELECT * FROM Sysmsuser';
    SelectQuery(quUnit,sQuery);
    FgHpp    := quUnit.FieldByName('FGHPP').AsString;
    FgACCPO  := quUnit.FieldByName('FgACCPO').AsString;
    FgACCAR  := quUnit.FieldByName('FgACCAR').AsString;
    FGACCFPP := quUnit.FieldByName('FGACCFPP').AsString;
    FGACCGRN := quUnit.FieldByName('FGACCGRN').AsString;
    FGACCREF := quUnit.FieldByName('FgReference').AsString;

    //Nama Perusahaan dan Alamatnya
    sQuery   := 'SELECT CompanyName,CompanyAdd1 FROM SAMsCompany';
    SelectQuery(quUnit,sQuery);
    sCompanyName    := quUnit.FieldByName('CompanyName').AsString;
    sCompanyAddress := quUnit.FieldByName('Companyadd1').AsString;

    //Default gudang
    sQuery   := 'SELECT DGPj,DGPb,CustId,SalesId,DGK,DGTr,DGS,DGR,DGPR,DRPb,'
               +'DRPj,DGRPb,DGRPj,DGC,DGRBi,DGRPLL,sDPB,DRPjT,DRPjH, '
               +'DRARO,DRARA,DRARR,DRRetAp,DRRetAR,Cetak,DRKas,DRDP, '
               +'DRA,DRR,DRO,APDisc,ARDisc,DRHpp,DRPbJ,RekPBBKB,RekLaba FROM SAMsSet ';
    SelectQuery(quUnit,sQuery);
    sDGPb    := quUnit.FieldByName('DGPb').AsString;
    sDGPj    := quUnit.FieldByName('DGPj').AsString;
    sCustC   := quUnit.FieldByName('CustId').AsString;
    sSalesC  := quUnit.FieldByName('SalesId').AsString;
    sDGK     := quUnit.FieldByName('DGK').AsString;
    sDGTr    := quUnit.FieldByName('DGTr').AsString;
    sDGS     := quUnit.FieldByName('DGS').AsString;
    sDGR     := quUnit.FieldByName('DGR').AsString;
    spbbkb   := quUnit.FieldByName('RekPBBKB').AsString;
    sDGPR    := quUnit.FieldByName('DGPR').AsString;                                   
    sDRPb    := quUnit.FieldByName('DRPb').AsString;
    sDRPj    := quUnit.FieldByName('DRPj').AsString;
    sDRPjT   := quUnit.FieldByName('DRPjT').AsString;
    sDRPjH   := quUnit.FieldByName('DRPjH').AsString;
    sDGRPb   := quUnit.FieldByName('DGRPb').AsString;
    sDGRPj   := quUnit.FieldByName('DGRPj').AsString;
    sDGC     := quUnit.FieldByName('DGC').AsString;
    sDGRBi   := quUnit.FieldByName('DGRBi').AsString;
    sDGRPLL  := quUnit.FieldByName('DGRPLL').AsString;
    sDPB     := quUnit.FieldByName('sDPB').AsString;
    sCetak   := quUnit.FieldByName('Cetak').AsString;
    sDRKas   := quUnit.FieldByName('DRKas').AsString;
    DRDP     := quUnit.FieldByName('DRDP').AsString;
    sDRA     := quUnit.FieldByName('DRA').AsString;
    sDRO     := quUnit.FieldByName('DRO').AsString;
    sDRR     := quUnit.FieldByName('DRR').AsString;
    sDRARA   := quUnit.FieldByName('DRARA').AsString;
    sDRARR   := quUnit.FieldByName('DRARR').AsString;
    sDRARO   := quUnit.FieldByName('DRARO').AsString;
    sDRRetAP := quUnit.FieldByName('DRRetAP').AsString;
    sDRRetAR := quUnit.FieldByName('DRRetAR').AsString;
    APDisc   := quUnit.FieldByName('APDisc').AsString;
    ARDisc   := quUnit.FieldByName('ARDisc').AsString;
    Hpp      := quUnit.FieldByName('DRHpp').AsString;
    sDRPbJ   := quUnit.FieldByName('DRPbJ').AsString;
    sRekLaba := quUnit.FieldByName('RekLaba').AsString;
    FSysPrd1 := Date;
    FSysPrd2 := Date;
End;

function TDmMain.ConnectDB(showError: boolean = true):boolean;
var SPath,Pass, sQuery,database,FlagDB: String;
    MyIniFile : TIniFile;
begin
  SPath := ExtractFilePath(Application.ExeName) + 'setting.ini';
  if not FileExists(SPath) then
  begin
     pesan('Proses Registrasi ada yang Kurang '+#13+ 'Hubungi Vendor Anda');
     Application.Terminate;
  end else
  begin
    with TfmPickDatabase.Create (Self) do
      try
      if ShowModal = MrOK then
      begin
        ServerPath := Server;// Decrypt (MyIniFile.ReadString('Server','02','(Local)'));
        Pass       := Passdb;// Decrypt (MyIniFile.ReadString('Server','03','upi'));
        dbName     := database;// Decrypt (MyIniFile.ReadString('Server','01','upi'));
      end;
      FlagDB := Status;
      finally
        Free;
      end;

    if FlagDB = '' then
    begin
      sQuery := 'Provider=SQLOLEDB.1; Password='+Pass+'; User ID=sa; Persist Security Info=False;'
                              +'Initial Catalog='+dbName+';Data Source='+serverPath;
      dbConn.ConnectionString := sQuery;

      if dbConn.Connected then
        dbConn.Close;
      try
        dbConn.Open;
      except
        dbConn.Close;
      end; //end try
        Result := dbConn.Connected;
        Inisialisasi;
    end else
      Application.Terminate;
  end; //end if
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

end.
