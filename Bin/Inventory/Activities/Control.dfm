inherited fmQC: TfmQC
  Caption = 'Control'
  ClientHeight = 157
  ClientWidth = 327
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 16
    Top = 73
    Width = 51
    Height = 19
    Caption = 'Label1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 16
    Top = 97
    Width = 51
    Height = 19
    Caption = 'Label2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [3]
    Left = 16
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel [4]
    Left = 16
    Top = 48
    Width = 140
    Height = 22
    Caption = 'OTORISASI MR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 327
    inherited sbLast: TSpeedButton
      Left = 290
    end
    inherited sbNext: TSpeedButton
      Left = 263
    end
    inherited sbPrev: TSpeedButton
      Left = 236
    end
    inherited sbFirst: TSpeedButton
      Left = 209
    end
    inherited sbPeriod: TSpeedButton
      Left = 183
    end
    inherited BvlPeriod: TBevel
      Left = -63
    end
    inherited laPeriod: TLabel
      Left = -59
    end
  end
  object Button1: TButton [6]
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    Caption = 'APPROVED'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [7]
    Left = 96
    Top = 120
    Width = 75
    Height = 25
    Caption = 'WAITING'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton [8]
    Left = 176
    Top = 120
    Width = 75
    Height = 25
    Caption = 'REJECTED'
    TabOrder = 3
    OnClick = Button3Click
  end
end
