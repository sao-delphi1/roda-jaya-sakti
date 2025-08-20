inherited fmImportData: TfmImportData
  Left = 655
  Top = 346
  Caption = 'Import Data Cabang'
  ClientHeight = 146
  ClientWidth = 444
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel [0]
    Left = 26
    Top = 60
    Width = 107
    Height = 16
    Caption = 'File Database :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 64
    Top = 29
    Width = 69
    Height = 16
    Caption = 'Database'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edDatabase: TdxEdit [2]
    Left = 142
    Top = 56
    Width = 240
    Color = clScrollBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    MaxLength = 20
    ReadOnly = True
    StoredValues = 66
  end
  object bbari: TButton [3]
    Left = 387
    Top = 56
    Width = 34
    Height = 25
    Caption = 'Cari'
    TabOrder = 1
    OnClick = bbariClick
  end
  object bbImport: TdxButton [4]
    Tag = 1111
    Left = 132
    Top = 93
    Width = 78
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbImportClick
    Caption = 'Import'
    TabOrder = 2
    TabStop = False
  end
  object dxButton1: TdxButton [5]
    Tag = 1111
    Left = 212
    Top = 93
    Width = 78
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Batal'
    TabOrder = 3
    TabStop = False
  end
  object cmbDatabase: TComboBox [6]
    Left = 142
    Top = 25
    Width = 145
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
  end
  object OpenDialog: TOpenDialog
    Left = 88
    Top = 9
  end
  object quImport: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 264
    Top = 4
  end
  object dbConn: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 112
    Top = 8
  end
  object quData: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 296
    Top = 84
  end
end
