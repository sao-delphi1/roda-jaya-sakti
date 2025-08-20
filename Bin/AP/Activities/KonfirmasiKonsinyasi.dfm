inherited fmKonfirmasiKonsinyasi: TfmKonfirmasiKonsinyasi
  Left = 533
  Top = 193
  Caption = 'Konfirmasi'
  ClientHeight = 208
  ClientWidth = 479
  OldCreateOrder = True
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
    Top = 52
    Width = 227
    Height = 24
    Caption = 'PENERIMAAN BARANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 85
    Width = 416
    Height = 24
    Caption = 'ANDA YAKIN AKAN PROSES PENERIMAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 320
    Top = 149
    Width = 69
    Height = 24
    Caption = 'ITEMID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel [4]
    Left = 40
    Top = 109
    Width = 416
    Height = 24
    Caption = 'ANDA YAKIN AKAN PROSES PENERIMAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 320
    Top = 173
    Width = 88
    Height = 24
    Caption = 'GUDANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel [6]
    Left = 408
    Top = 149
    Width = 76
    Height = 24
    Caption = 'CURRID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel [7]
    Left = 416
    Top = 173
    Width = 43
    Height = 24
    Caption = 'QTY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel [8]
    Left = 384
    Top = 213
    Width = 73
    Height = 24
    Caption = 'SUPPID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel [9]
    Left = 392
    Top = 253
    Width = 114
    Height = 24
    Caption = 'SUPPNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel [10]
    Left = 400
    Top = 293
    Width = 83
    Height = 24
    Caption = 'NUMALL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel [11]
    Left = 208
    Top = 181
    Width = 59
    Height = 24
    Caption = 'NOTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object dxButton4: TdxButton [12]
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
  object dxButton3: TdxButton [13]
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
  object dxButton1: TdxButton [14]
    Left = 214
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
    OnClick = dxButton1Click
    Caption = 'REJECT'
    TabOrder = 2
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 360
    Top = 4
  end
end
