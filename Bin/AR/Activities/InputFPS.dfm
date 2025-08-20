inherited fmInputFPS: TfmInputFPS
  Left = 711
  Top = 380
  Caption = 'Input Faktur'
  ClientHeight = 139
  ClientWidth = 317
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 8
    Top = 43
    Width = 156
    Height = 16
    Caption = 'Input Nomor Faktur Pajak :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 155
    Width = 156
    Height = 16
    Caption = 'Input Nomor Faktur Pajak :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 317
    inherited sbLast: TSpeedButton
      Left = 280
    end
    inherited sbNext: TSpeedButton
      Left = 253
    end
    inherited sbPrev: TSpeedButton
      Left = 226
    end
    inherited sbFirst: TSpeedButton
      Left = 199
    end
    inherited sbPeriod: TSpeedButton
      Left = 173
    end
    inherited BvlPeriod: TBevel
      Left = -73
    end
    inherited laPeriod: TLabel
      Left = -69
    end
  end
  object TmbBrg: TdxButton [4]
    Tag = 1111
    Left = 8
    Top = 91
    Width = 89
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = TmbBrgClick
    Caption = 'UPDATE'
    TabOrder = 1
    TabStop = False
  end
  object KrgBrg: TdxButton [5]
    Tag = 2222
    Left = 98
    Top = 91
    Width = 89
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = KrgBrgClick
    Caption = 'CLEAR'
    TabOrder = 2
    TabStop = False
  end
  object Edit1: TEdit [6]
    Left = 7
    Top = 64
    Width = 282
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
