inherited fmPRConfirm: TfmPRConfirm
  Left = 514
  Top = 242
  Caption = 'Action'
  ClientHeight = 227
  ClientWidth = 233
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 8
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
    Width = 233
    inherited sbHelp: TSpeedButton [0]
    end
    inherited sbLast: TSpeedButton [1]
      Left = 196
      Visible = False
    end
    inherited sbNext: TSpeedButton [2]
      Left = 169
      Visible = False
    end
    inherited sbPrev: TSpeedButton [3]
      Left = 142
      Visible = False
    end
    inherited sbFirst: TSpeedButton [4]
      Left = 115
      Visible = False
    end
    inherited Shape1: TShape [5]
    end
    inherited Shape2: TShape [6]
    end
    inherited sbExcel: TSpeedButton [7]
    end
    inherited sbPeriod: TSpeedButton [8]
      Left = 89
      Visible = False
    end
    inherited BvlPeriod: TBevel [9]
      Left = -157
      Visible = False
    end
    inherited laPeriod: TLabel [10]
      Left = -153
      Visible = False
    end
    inherited SpeedButton1: TSpeedButton [11]
    end
    inherited sbClose: TSpeedButton [12]
    end
  end
  object Button1: TButton [3]
    Left = 8
    Top = 106
    Width = 217
    Height = 25
    Caption = 'Process All'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [4]
    Left = 8
    Top = 80
    Width = 217
    Height = 25
    Caption = 'Process All Waiting Status'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton [5]
    Left = 8
    Top = 132
    Width = 217
    Height = 25
    Caption = 'Sent All'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton [6]
    Left = 8
    Top = 158
    Width = 217
    Height = 25
    Caption = 'Pending All'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button6: TButton [7]
    Left = 8
    Top = 184
    Width = 217
    Height = 25
    Caption = 'Rejected All'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button5: TButton [8]
    Left = 8
    Top = 285
    Width = 217
    Height = 25
    Caption = 'Make Waiting Status'
    TabOrder = 6
    Visible = False
    OnClick = Button5Click
  end
end
