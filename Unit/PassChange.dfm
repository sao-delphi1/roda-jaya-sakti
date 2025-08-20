inherited fmPassChange: TfmPassChange
  Left = 376
  Top = 196
  Caption = 'Ganti Password'
  ClientHeight = 178
  ClientWidth = 434
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited paUp: TdxContainer
    Width = 434
    Height = 141
    ParentColor = False
    object Label1: TLabel
      Left = 42
      Top = 54
      Width = 163
      Height = 17
      Alignment = taRightJustify
      Caption = 'Masukkan Password Baru :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 78
      Width = 173
      Height = 17
      Alignment = taRightJustify
      Caption = 'Ketik Ulang Password Baru :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 102
      Top = 30
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Caption = 'Password Lama :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 79
      Top = 122
      Width = 294
      Height = 14
      Caption = 'NB: Untuk Username Baru, Password Lama  Adalah "" (kosong)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object edlama: TdxEdit
      Left = 207
      Top = 24
      Width = 202
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
    object edPass1: TdxEdit
      Left = 207
      Top = 48
      Width = 202
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
    object edPass2: TdxEdit
      Left = 207
      Top = 72
      Width = 202
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edlamaKeyPress
      MaxLength = 20
      PasswordChar = '*'
      StyleController = SCEdit
      StoredValues = 2
    end
  end
  inherited paBottom: TdxContainer
    Top = 141
    Width = 434
    Color = 12229669
    ParentColor = False
    object bbOK: TdxButton
      Tag = 3333
      Left = 207
      Top = 4
      Width = 100
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbOKClick
      Caption = 'Simpan'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 308
      Top = 4
      Width = 100
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'Batal'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 1
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 292
    Top = 4
  end
end
