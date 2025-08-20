inherited fmSAMsCompany: TfmSAMsCompany
  Left = 319
  Top = 151
  Caption = 'Company Information'
  ClientHeight = 298
  ClientWidth = 601
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 601
    Height = 261
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      601
      261)
    object Label7: TLabel
      Left = 1
      Top = 1
      Width = 599
      Height = 259
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'COMPANY INFORMATION'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 28
      Top = 608
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pajak :'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label4: TLabel
      Left = 182
      Top = 576
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fax :'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 25
      Top = 332
      Width = 548
      Height = 117
      Caption = '[ Informasi Rekening ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label9: TLabel
        Left = 5
        Top = 267
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label11: TLabel
        Left = 162
        Top = 84
        Width = 316
        Height = 17
        AutoSize = False
        Caption = 'E.g : BCA 123 123 0000 CABANG/KETERANGAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 5
        Top = 35
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Rekening/Cabang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 5
        Top = 244
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Rekening/Cabang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label12: TLabel
        Left = 5
        Top = 59
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dxEdit5: TdxEdit
        Left = 162
        Top = 31
        Width = 132
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit6: TdxEdit
        Left = 293
        Top = 31
        Width = 199
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit7: TdxEdit
        Left = 162
        Top = 55
        Width = 330
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit8: TdxEdit
        Left = 162
        Top = 239
        Width = 132
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit9: TdxEdit
        Left = 293
        Top = 239
        Width = 199
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit10: TdxEdit
        Left = 162
        Top = 263
        Width = 330
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
    end
    object GroupBox1: TGroupBox
      Left = 25
      Top = 32
      Width = 548
      Height = 177
      Caption = '[ Data Perusahaan ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label5: TLabel
        Left = 5
        Top = 137
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'E-mail :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 5
        Top = 112
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telepon :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 5
        Top = 56
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat Kantor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 5
        Top = 32
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Perusahaan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 5
        Top = 256
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat Kantor 2 :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object dxEdit1: TdxEdit
        Left = 162
        Top = 132
        Width = 325
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxEdit3: TdxEdit
        Left = 162
        Top = 108
        Width = 325
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxMemo1: TdxMemo
        Left = 162
        Top = 52
        Width = 325
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
        WantReturns = False
        Height = 57
      end
      object dxEdit2: TdxEdit
        Left = 162
        Top = 28
        Width = 325
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = dxEdit2Click
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
      end
      object dxMemo2: TdxMemo
        Left = 162
        Top = 252
        Width = 325
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnKeyPress = dxEdit2KeyPress
        StyleController = SCEdit
        WantReturns = False
        Height = 57
      end
    end
    object bbSave: TdxButton
      Tag = 3333
      Left = 373
      Top = 223
      Width = 100
      Height = 30
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbSaveClick
      Caption = 'Simpan (F3)'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 474
      Top = 223
      Width = 100
      Height = 30
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'Batal (Esc)'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 2
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 72
      Top = 604
      Width = 97
      Height = 17
      Caption = 'YES'
      Enabled = False
      TabOrder = 4
      Visible = False
    end
    object dxEdit4: TdxEdit
      Left = 208
      Top = 572
      Width = 133
      Enabled = False
      TabOrder = 5
      Visible = False
      OnKeyPress = dxEdit2KeyPress
      StyleController = SCEdit
    end
  end
  inherited paToolBar: TdxContainer
    Width = 601
    inherited sbLast: TSpeedButton
      Left = 573
    end
    inherited sbNext: TSpeedButton
      Left = 550
    end
    inherited sbPrev: TSpeedButton
      Left = 527
    end
    inherited sbFirst: TSpeedButton
      Left = 504
    end
    inherited sbPeriod: TSpeedButton
      Left = 476
    end
    inherited BvlPeriod: TBevel
      Left = 230
    end
    inherited laPeriod: TLabel
      Left = 234
    end
  end
  inherited ActionList: TActionList
    object Save: TAction
      Category = 'Nav'
      Caption = 'Save'
      ShortCut = 114
    end
    object Cancel: TAction
      Category = 'Nav'
      Caption = 'Cancel'
      ShortCut = 27
    end
  end
end
