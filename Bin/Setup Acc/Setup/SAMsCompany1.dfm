inherited fmSAMsCompany: TfmSAMsCompany
  Left = 320
  Top = 151
  Caption = 'Data Data Perusahaan'
  ClientHeight = 355
  ClientWidth = 580
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 580
    Height = 318
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      580
      318)
    object Label15: TLabel
      Left = 18
      Top = 42
      Width = 131
      Height = 19
      Alignment = taRightJustify
      Caption = 'Nama Perusahaan :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 88
      Top = 67
      Width = 61
      Height = 19
      Alignment = taRightJustify
      Caption = 'Alamat  :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 111
      Top = 160
      Width = 38
      Height = 19
      Alignment = taRightJustify
      Caption = 'Telp :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 115
      Top = 190
      Width = 34
      Height = 19
      Alignment = taRightJustify
      Caption = 'Fax :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 102
      Top = 220
      Width = 47
      Height = 19
      Alignment = taRightJustify
      Caption = 'Email :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 0
      Top = 4
      Width = 581
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'DATA-DATA PERUSAHAAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbSave: TdxButton
      Tag = 3333
      Left = 376
      Top = 272
      Width = 76
      Height = 28
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbSaveClick
      Caption = 'Save'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 453
      Top = 272
      Width = 76
      Height = 28
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'Cancel'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 2
      TabOrder = 1
    end
    object dxEdit2: TdxEdit
      Left = 152
      Top = 36
      Width = 340
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxMemo1: TdxMemo
      Left = 152
      Top = 66
      Width = 340
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
      WantReturns = False
      Height = 89
    end
    object dxEdit3: TdxEdit
      Left = 152
      Top = 154
      Width = 340
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxEdit4: TdxEdit
      Left = 152
      Top = 184
      Width = 340
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
    object dxEdit1: TdxEdit
      Left = 152
      Top = 214
      Width = 340
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
  end
  inherited paToolBar: TdxContainer
    Width = 580
    inherited sbLast: TSpeedButton
      Left = 552
    end
    inherited sbNext: TSpeedButton
      Left = 529
    end
    inherited sbPrev: TSpeedButton
      Left = 506
    end
    inherited sbFirst: TSpeedButton
      Left = 483
    end
    inherited sbPeriod: TSpeedButton
      Left = 455
    end
    inherited BvlPeriod: TBevel
      Left = 209
    end
    inherited laPeriod: TLabel
      Left = 213
    end
  end
end
