inherited fmConfirmNote: TfmConfirmNote
  Left = 666
  Top = 340
  Caption = 'ConfirmNote'
  ClientHeight = 169
  ClientWidth = 358
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 12
    Top = 29
    Width = 74
    Height = 13
    Caption = 'Isi Keterangan :'
  end
  object Label2: TLabel [1]
    Left = 12
    Top = 5
    Width = 108
    Height = 16
    Caption = 'Isi Keterangan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 222
    Top = 5
    Width = 108
    Height = 16
    Alignment = taRightJustify
    Caption = 'Isi Keterangan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 526
    Top = 61
    Width = 108
    Height = 16
    Alignment = taRightJustify
    Caption = 'Isi Keterangan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dxMemo1: TdxMemo [4]
    Left = 10
    Top = 44
    Width = 325
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleController = SCEdit
    WantReturns = False
    Height = 57
  end
  object Button1: TButton [5]
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Konfirmasi'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [6]
    Left = 96
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 2
    OnClick = Button2Click
  end
end
