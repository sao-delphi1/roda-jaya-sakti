inherited fmPRAction: TfmPRAction
  Left = 977
  Top = 295
  Caption = 'Action'
  ClientHeight = 399
  ClientWidth = 232
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
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
  object Label2: TLabel [1]
    Left = 8
    Top = 72
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
  object Label3: TLabel [2]
    Left = 8
    Top = 108
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 132
    Width = 61
    Height = 13
    Caption = 'Keterangan :'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 244
    Width = 76
    Height = 13
    Caption = 'Change Status :'
  end
  object Label6: TLabel [5]
    Left = 280
    Top = 88
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
  object Label7: TLabel [6]
    Left = 328
    Top = 152
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
    Width = 232
  end
  object Button1: TButton [8]
    Left = 8
    Top = 263
    Width = 217
    Height = 25
    Caption = 'On Progress'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [9]
    Left = 8
    Top = 520
    Width = 217
    Height = 25
    Caption = 'Waiting For Approval'
    Enabled = False
    TabOrder = 2
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton [10]
    Left = 8
    Top = 289
    Width = 217
    Height = 25
    Caption = 'Repair'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton [11]
    Left = 8
    Top = 315
    Width = 217
    Height = 25
    Caption = 'Pending'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button6: TButton [12]
    Left = 8
    Top = 341
    Width = 217
    Height = 25
    Caption = 'Rejected'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button5: TButton [13]
    Left = 8
    Top = 367
    Width = 217
    Height = 25
    Caption = 'Finished'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Edit1: TEdit [14]
    Left = 48
    Top = 104
    Width = 49
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Edit2: TEdit [15]
    Left = 8
    Top = 148
    Width = 217
    Height = 57
    AutoSize = False
    TabOrder = 8
  end
  object Button7: TButton [16]
    Left = 104
    Top = 103
    Width = 121
    Height = 25
    Caption = 'Change Value'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton [17]
    Left = 8
    Top = 207
    Width = 217
    Height = 25
    Caption = 'Update Note'
    TabOrder = 10
    OnClick = Button8Click
  end
end
