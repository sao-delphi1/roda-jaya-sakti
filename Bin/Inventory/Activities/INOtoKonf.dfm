inherited fmINOtoKonf: TfmINOtoKonf
  Left = 832
  Top = 282
  Caption = 'Konfirmasi'
  ClientHeight = 177
  ClientWidth = 261
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 16
    Top = 48
    Width = 56
    Height = 24
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 261
    inherited sbLast: TSpeedButton
      Left = 224
    end
    inherited sbNext: TSpeedButton
      Left = 197
    end
    inherited sbPrev: TSpeedButton
      Left = 170
    end
    inherited sbFirst: TSpeedButton
      Left = 143
    end
    inherited sbPeriod: TSpeedButton
      Left = 117
    end
    inherited BvlPeriod: TBevel
      Left = -129
    end
    inherited laPeriod: TLabel
      Left = -125
    end
  end
  object Button1: TButton [3]
    Left = 16
    Top = 79
    Width = 217
    Height = 25
    Caption = 'Approve'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton [4]
    Left = 16
    Top = 105
    Width = 217
    Height = 25
    Caption = 'Reject'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton [5]
    Left = 16
    Top = 131
    Width = 217
    Height = 25
    Caption = 'Pending'
    TabOrder = 3
    OnClick = Button4Click
  end
end
