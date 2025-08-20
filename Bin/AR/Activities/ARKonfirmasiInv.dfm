inherited fmARKonfirmasiInv: TfmARKonfirmasiInv
  Left = 593
  Top = 325
  Caption = 'Konfirmasi'
  ClientHeight = 213
  ClientWidth = 387
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 26
    Width = 168
    Height = 24
    Caption = 'AUTHORIZATION'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 66
    Width = 158
    Height = 24
    Caption = 'CETAK INVOICE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 101
    Width = 310
    Height = 24
    Caption = 'ANDA YAKIN AKAN PROSES SO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dxButton4: TdxButton [3]
    Left = 42
    Top = 139
    Width = 85
    Height = 30
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton4Click
    Caption = 'APPROVE'
    TabOrder = 0
  end
  object dxButton3: TdxButton [4]
    Left = 128
    Top = 139
    Width = 85
    Height = 30
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton3Click
    Caption = 'PENDING'
    TabOrder = 1
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 280
    Top = 4
  end
end
