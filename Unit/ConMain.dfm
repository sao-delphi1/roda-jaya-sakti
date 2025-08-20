object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 333
  Top = 186
  Height = 150
  Width = 250
  object dbConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=admin1;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=RJS;Data Source=.;Use Procedure for Pr' +
      'epare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SOLI' +
      'HINHO;Use Encryption for Data=False;Tag with column collation wh' +
      'en possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 20
    Top = 12
  end
  object quUnit: TADOQuery
    Connection = dbConn
    Parameters = <>
    Left = 12
    Top = 56
  end
end
