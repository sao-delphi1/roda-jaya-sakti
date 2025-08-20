inherited fmSettingGudang: TfmSettingGudang
  Left = 492
  Top = 263
  Caption = 'Form Setting System'
  ClientHeight = 627
  ClientWidth = 594
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 37
    Width = 594
    Height = 590
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      594
      590)
    object bbSave: TdxButton
      Tag = 3333
      Left = 368
      Top = 547
      Width = 95
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbSaveClick
      Caption = '&SIMPAN'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      TabOrder = 0
    end
    object bbCancel: TdxButton
      Tag = 4444
      Left = 463
      Top = 547
      Width = 95
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Anchors = [akRight, akBottom]
      Color = 9609897
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      Caption = '&BATAL'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      HotTrack = True
      ModalResult = 2
      TabOrder = 1
    end
    object pcMain: TdxPageControl
      Left = 1
      Top = 1
      Width = 592
      Height = 588
      ActivePage = ts03
      Align = alClient
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 2
      TabPosition = dxtpTop
      TabStop = False
      TabWidth = 0
      object ts01: TdxTabSheet
        Caption = 'Gudang'
        DesignSize = (
          592
          565)
        object dxButton3: TdxButton
          Tag = 3333
          Left = -342
          Top = 418
          Width = 100
          Height = 28
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
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 0
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = -241
          Top = 418
          Width = 100
          Height = 28
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
          OnClick = dxButton4Click
          Caption = '&Batal (Esc)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 13
          Width = 505
          Height = 132
          Caption = '[ Pengaturan Gudang ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object Label17: TLabel
            Left = 20
            Top = 25
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PEMBELIAN :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 20
            Top = 51
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PENJUALAN :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText16: TDBText
            Left = 322
            Top = 25
            Width = 175
            Height = 17
            DataField = 'LDGPb'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText17: TDBText
            Left = 322
            Top = 51
            Width = 175
            Height = 17
            DataField = 'LDGPj'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 20
            Top = 76
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TRANSFER :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 20
            Top = 285
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'KONSINYASI :'
          end
          object Label21: TLabel
            Left = 20
            Top = 309
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SERVICE :'
          end
          object DBText18: TDBText
            Left = 322
            Top = 76
            Width = 175
            Height = 17
            DataField = 'LDGTr'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText19: TDBText
            Left = 322
            Top = 284
            Width = 175
            Height = 17
            DataField = 'LDGK'
            DataSource = dsMain
          end
          object DBText20: TDBText
            Left = 322
            Top = 308
            Width = 175
            Height = 17
            DataField = 'LDGS'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 20
            Top = 100
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RETUR  :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 20
            Top = 261
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PENGGANTI RETUR :'
          end
          object DBText21: TDBText
            Left = 322
            Top = 260
            Width = 175
            Height = 17
            DataField = 'LDGPR'
            DataSource = dsMain
          end
          object DBText22: TDBText
            Left = 322
            Top = 100
            Width = 175
            Height = 17
            DataField = 'LDGR'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText23: TDBText
            Left = 322
            Top = 331
            Width = 175
            Height = 17
            DataField = 'LDGC'
            DataSource = dsMain
          end
          object Label24: TLabel
            Left = 20
            Top = 332
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'COUNTER :'
          end
          object dxDBButtonEdit15: TdxDBButtonEdit
            Left = 152
            Top = 22
            Width = 157
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit15ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit16: TdxDBButtonEdit
            Left = 152
            Top = 47
            Width = 157
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit16ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit17: TdxDBButtonEdit
            Left = 152
            Top = 72
            Width = 157
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGTr'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit17ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit18: TdxDBButtonEdit
            Left = 152
            Top = 96
            Width = 157
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit18ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit19: TdxDBButtonEdit
            Left = 152
            Top = 257
            Width = 157
            TabOrder = 4
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGPR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit20: TdxDBButtonEdit
            Left = 152
            Top = 281
            Width = 157
            TabOrder = 5
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGK'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit6ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit21: TdxDBButtonEdit
            Left = 152
            Top = 305
            Width = 157
            TabOrder = 6
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGS'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit7ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit22: TdxDBButtonEdit
            Left = 152
            Top = 328
            Width = 157
            TabOrder = 7
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGC'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
        end
        object GroupBox6: TGroupBox
          Left = 16
          Top = 407
          Width = 505
          Height = 49
          Caption = '[ DEFAULT PELANGGAN ]'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          object Label25: TLabel
            Left = 20
            Top = 21
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'COUNTER :'
          end
          object DBText24: TDBText
            Left = 322
            Top = 19
            Width = 175
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
          end
          object dxDBButtonEdit23: TdxDBButtonEdit
            Left = 152
            Top = 17
            Width = 157
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'CustId'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit3ButtonClick
            ExistButtons = True
          end
        end
      end
      object ts02: TdxTabSheet
        Caption = 'Printer'
        DesignSize = (
          592
          565)
        object DBRadioGroup1: TDBRadioGroup
          Left = 40
          Top = 85
          Width = 305
          Height = 54
          Caption = '[ Tombol Cetak ]'
          Columns = 2
          Ctl3D = False
          DataField = 'Cetak'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Items.Strings = (
            'Pratinjau'
            'Langsung Cetak')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object dxButton1: TdxButton
          Tag = 3333
          Left = -342
          Top = 410
          Width = 100
          Height = 28
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
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
        end
        object dxButton2: TdxButton
          Tag = 4444
          Left = -241
          Top = 410
          Width = 100
          Height = 28
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
          OnClick = dxButton4Click
          Caption = '&Batal (Esc)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 2
        end
        object GroupBox5: TGroupBox
          Left = 40
          Top = 19
          Width = 433
          Height = 61
          Caption = '[ Pengaturan Printer ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object Label14: TLabel
            Left = 16
            Top = 28
            Width = 80
            Height = 17
            Alignment = taRightJustify
            Caption = 'Printer Aktif :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object cmbPrinterBackOffice: TdxDBPickEdit
            Left = 108
            Top = 24
            Width = 301
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'sDPB'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
      end
      object ts03: TdxTabSheet
        Caption = 'Rekening'
        DesignSize = (
          592
          565)
        object Label1: TLabel
          Left = 707
          Top = 215
          Width = 170
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOLERANSI HARGA JUAL ( % ) :'
        end
        object Label2: TLabel
          Left = 723
          Top = 192
          Width = 170
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'HARGA JUAL MAX ( % ) :'
        end
        object GroupBox8: TGroupBox
          Left = 8
          Top = 12
          Width = 569
          Height = 213
          Caption = '[ Ledger Pembelian ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label28: TLabel
            Left = 22
            Top = 30
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Hutang Dagang :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText25: TDBText
            Left = 311
            Top = 30
            Width = 218
            Height = 13
            DataField = 'LDRPb'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 10
            Top = 430
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Persediaan Barang :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText28: TDBText
            Left = 320
            Top = 430
            Width = 200
            Height = 13
            DataField = 'LDGRBi'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 22
            Top = 54
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pembelian Barang :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText30: TDBText
            Left = 311
            Top = 54
            Width = 218
            Height = 13
            DataField = 'LRekPembelian'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 22
            Top = 102
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PPN Masuk :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 311
            Top = 102
            Width = 218
            Height = 13
            DataField = 'LDGRPLL'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 10
            Top = 454
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Uang Muka Pembelian :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 320
            Top = 454
            Width = 200
            Height = 13
            DataField = 'LDGDP'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 1
            Top = 174
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ongkir Pembelian :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 311
            Top = 174
            Width = 200
            Height = 13
            DataField = 'LDro'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 10
            Top = 526
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Administrasi Pembelian :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 320
            Top = 526
            Width = 200
            Height = 13
            DataField = 'LDra'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 10
            Top = 550
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Repacking Pembelian :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 320
            Top = 550
            Width = 200
            Height = 13
            DataField = 'Ldrr'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 10
            Top = 478
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Retur Pembelian :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 320
            Top = 478
            Width = 200
            Height = 13
            DataField = 'LDRRetAP'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 22
            Top = 126
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Discount Pembelian :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 311
            Top = 126
            Width = 218
            Height = 13
            DataField = 'LAPDisc'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 22
            Top = 78
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pembelian Jasa :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText15: TDBText
            Left = 311
            Top = 78
            Width = 218
            Height = 13
            DataField = 'LDRPbJ'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 22
            Top = 150
            Width = 128
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PBB KB :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText29: TDBText
            Left = 311
            Top = 150
            Width = 218
            Height = 13
            DataField = 'LPBBKB'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit25: TdxDBButtonEdit
            Left = 156
            Top = 26
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit25ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit27: TdxDBButtonEdit
            Left = 165
            Top = 426
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGRBi'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit27ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit29: TdxDBButtonEdit
            Left = 156
            Top = 50
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGRPb'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit29ButtonClick
            ExistButtons = True
          end
          object ButtonPPNMasukan: TdxDBButtonEdit
            Left = 156
            Top = 98
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGRPLL'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = ButtonPPNMasukanButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit1: TdxDBButtonEdit
            Left = 165
            Top = 450
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRDp'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit1ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 156
            Top = 170
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRO'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit2ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit3: TdxDBButtonEdit
            Left = 165
            Top = 522
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRA'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit3ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit4: TdxDBButtonEdit
            Left = 165
            Top = 546
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit4ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit6: TdxDBButtonEdit
            Left = 165
            Top = 474
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRRetAP'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit6ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit10: TdxDBButtonEdit
            Left = 156
            Top = 122
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'APDisc'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit10ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit24: TdxDBButtonEdit
            Left = 156
            Top = 74
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPbJ'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit24ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit32: TdxDBButtonEdit
            Left = 156
            Top = 146
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'RekPBBKB'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit32ButtonClick
            ExistButtons = True
          end
        end
        object dxButton5: TdxButton
          Tag = 3333
          Left = 175
          Top = 514
          Width = 100
          Height = 28
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
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 3
        end
        object dxButton6: TdxButton
          Tag = 4444
          Left = 276
          Top = 514
          Width = 100
          Height = 28
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
          OnClick = dxButton4Click
          Caption = '&Batal (Esc)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 4
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 890
          Top = 205
          Width = 73
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          DataField = 'FixPrice'
          DataSource = dsMain
          StyleController = SCEdit
          Increment = 10
          MaxValue = 100
          StoredValues = 16
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 890
          Top = 238
          Width = 73
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          DataField = 'HPrice'
          DataSource = dsMain
          StyleController = SCEdit
          Increment = 10
          MaxValue = 100
          StoredValues = 16
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 228
          Width = 569
          Height = 109
          Caption = '[ Ledger Penjualan ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object Label10: TLabel
            Left = 10
            Top = 30
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Piutang Dagang :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 320
            Top = 30
            Width = 200
            Height = 13
            DataField = 'LDGRPj'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 10
            Top = 382
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Kas Kecil :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 320
            Top = 382
            Width = 200
            Height = 13
            DataField = 'LDRKas'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 10
            Top = 334
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Hauling :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText11: TDBText
            Left = 320
            Top = 334
            Width = 200
            Height = 13
            DataField = 'LDRPjH'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 10
            Top = 54
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'PPN Keluar :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText14: TDBText
            Left = 320
            Top = 54
            Width = 200
            Height = 13
            DataField = 'LCustName'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 10
            Top = 406
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ongkir Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText31: TDBText
            Left = 320
            Top = 406
            Width = 200
            Height = 13
            DataField = 'LDRARO'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 10
            Top = 430
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Administrasi Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText32: TDBText
            Left = 320
            Top = 430
            Width = 200
            Height = 13
            DataField = 'LDRARA'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 10
            Top = 454
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Repacking Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText33: TDBText
            Left = 320
            Top = 454
            Width = 200
            Height = 13
            DataField = 'LDRARR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 10
            Top = 478
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Retur Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 320
            Top = 478
            Width = 200
            Height = 13
            DataField = 'LDRRetAR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 10
            Top = 78
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Discount Penjualan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 320
            Top = 78
            Width = 200
            Height = 13
            DataField = 'LARDisc'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 10
            Top = 358
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Harga Pokok Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText13: TDBText
            Left = 320
            Top = 358
            Width = 200
            Height = 13
            DataField = 'LDrhpp'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 10
            Top = 166
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Rental :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText26: TDBText
            Left = 320
            Top = 166
            Width = 200
            Height = 13
            DataField = 'LDRPj'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 10
            Top = 310
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Tambang :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText27: TDBText
            Left = 320
            Top = 310
            Width = 200
            Height = 13
            DataField = 'LDRPjT'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit5: TdxDBButtonEdit
            Left = 165
            Top = 26
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DGRPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit5ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit7: TdxDBButtonEdit
            Left = 165
            Top = 378
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRKas'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit7ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit9: TdxDBButtonEdit
            Left = 165
            Top = 330
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjH'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit9ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit12: TdxDBButtonEdit
            Left = 165
            Top = 50
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'CustId'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit12ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit14: TdxDBButtonEdit
            Left = 165
            Top = 402
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARO'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit14ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit30: TdxDBButtonEdit
            Left = 165
            Top = 426
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARA'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit30ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit31: TdxDBButtonEdit
            Left = 165
            Top = 450
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit31ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit8: TdxDBButtonEdit
            Left = 165
            Top = 474
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRRetAR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit11: TdxDBButtonEdit
            Left = 165
            Top = 74
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'ARDisc'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit11ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit13: TdxDBButtonEdit
            Left = 165
            Top = 354
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRHpp'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit26: TdxDBButtonEdit
            Left = 165
            Top = 162
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPj'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit26ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit28: TdxDBButtonEdit
            Left = 165
            Top = 306
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjT'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit28ButtonClick
            ExistButtons = True
          end
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 340
          Width = 569
          Height = 69
          Caption = '[ Ledger Laba Rugi ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object Label37: TLabel
            Left = 10
            Top = 30
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Laba Berjalan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText34: TDBText
            Left = 320
            Top = 30
            Width = 200
            Height = 13
            DataField = 'LRekLaba'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 10
            Top = 382
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Kas Kecil :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText35: TDBText
            Left = 320
            Top = 382
            Width = 200
            Height = 13
            DataField = 'LDRKas'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 10
            Top = 334
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Hauling :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText36: TDBText
            Left = 320
            Top = 334
            Width = 200
            Height = 13
            DataField = 'LDRPjH'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 10
            Top = 406
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ongkir Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText38: TDBText
            Left = 320
            Top = 406
            Width = 200
            Height = 13
            DataField = 'LDRARO'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 10
            Top = 430
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Administrasi Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText39: TDBText
            Left = 320
            Top = 430
            Width = 200
            Height = 13
            DataField = 'LDRARA'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 10
            Top = 454
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Repacking Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText40: TDBText
            Left = 320
            Top = 454
            Width = 200
            Height = 13
            DataField = 'LDRARR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 10
            Top = 478
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Retur Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText41: TDBText
            Left = 320
            Top = 478
            Width = 200
            Height = 13
            DataField = 'LDRRetAR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 10
            Top = 358
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Harga Pokok Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText43: TDBText
            Left = 320
            Top = 358
            Width = 200
            Height = 13
            DataField = 'LDrhpp'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 10
            Top = 310
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Tambang :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText45: TDBText
            Left = 320
            Top = 310
            Width = 200
            Height = 13
            DataField = 'LDRPjT'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit33: TdxDBButtonEdit
            Left = 165
            Top = 26
            Width = 150
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'RekLaba'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit33ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit34: TdxDBButtonEdit
            Left = 165
            Top = 378
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRKas'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit7ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit35: TdxDBButtonEdit
            Left = 165
            Top = 330
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjH'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit9ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit37: TdxDBButtonEdit
            Left = 165
            Top = 402
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARO'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit14ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit38: TdxDBButtonEdit
            Left = 165
            Top = 426
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARA'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit30ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit39: TdxDBButtonEdit
            Left = 165
            Top = 450
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit31ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit40: TdxDBButtonEdit
            Left = 165
            Top = 474
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRRetAR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit42: TdxDBButtonEdit
            Left = 165
            Top = 354
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRHpp'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit44: TdxDBButtonEdit
            Left = 165
            Top = 306
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjT'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit28ButtonClick
            ExistButtons = True
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 412
          Width = 569
          Height = 85
          Caption = '[ Rekening Penerimaan ]'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          object Label40: TLabel
            Left = 10
            Top = 30
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Roda Jaya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText37: TDBText
            Left = 216
            Top = 30
            Width = 345
            Height = 27
            DataField = 'LRekJual'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 10
            Top = 382
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Kas Kecil :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText42: TDBText
            Left = 320
            Top = 382
            Width = 200
            Height = 13
            DataField = 'LDRKas'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 10
            Top = 334
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Hauling :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText44: TDBText
            Left = 320
            Top = 334
            Width = 200
            Height = 13
            DataField = 'LDRPjH'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 10
            Top = 406
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ongkir Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText46: TDBText
            Left = 320
            Top = 406
            Width = 200
            Height = 13
            DataField = 'LDRARO'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 10
            Top = 430
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Administrasi Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText47: TDBText
            Left = 320
            Top = 430
            Width = 200
            Height = 13
            DataField = 'LDRARA'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 10
            Top = 454
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Repacking Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText48: TDBText
            Left = 320
            Top = 454
            Width = 200
            Height = 13
            DataField = 'LDRARR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 10
            Top = 478
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Retur Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText49: TDBText
            Left = 320
            Top = 478
            Width = 200
            Height = 13
            DataField = 'LDRRetAR'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 10
            Top = 358
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Harga Pokok Penjualan :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText50: TDBText
            Left = 320
            Top = 358
            Width = 200
            Height = 13
            DataField = 'LDrhpp'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 10
            Top = 310
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pendapatan Tambang :'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText51: TDBText
            Left = 320
            Top = 310
            Width = 200
            Height = 13
            DataField = 'LDRPjT'
            DataSource = dsMain
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 10
            Top = 54
            Width = 150
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Tridaya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText52: TDBText
            Left = 216
            Top = 54
            Width = 345
            Height = 27
            DataField = 'LRekJualTIM'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit36: TdxDBButtonEdit
            Left = 165
            Top = 26
            Width = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'RekJual'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit36ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit41: TdxDBButtonEdit
            Left = 165
            Top = 378
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRKas'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit7ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit43: TdxDBButtonEdit
            Left = 165
            Top = 330
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjH'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit9ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit45: TdxDBButtonEdit
            Left = 165
            Top = 402
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARO'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit14ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit46: TdxDBButtonEdit
            Left = 165
            Top = 426
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARA'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit30ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit47: TdxDBButtonEdit
            Left = 165
            Top = 450
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRARR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit31ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit48: TdxDBButtonEdit
            Left = 165
            Top = 474
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRRetAR'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit8ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit49: TdxDBButtonEdit
            Left = 165
            Top = 354
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRHpp'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit13ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit50: TdxDBButtonEdit
            Left = 165
            Top = 306
            Width = 150
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'DRPjT'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit28ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit51: TdxDBButtonEdit
            Left = 165
            Top = 50
            Width = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyPress = buttonPPNKeluaranKeyPress
            DataField = 'RekJualTIM'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBButtonEdit51ButtonClick
            ExistButtons = True
          end
        end
      end
      object ts04: TdxTabSheet
        Caption = 'Warna'
        DesignSize = (
          592
          565)
        object dxButton12: TdxButton
          Left = 16
          Top = 14
          Width = 140
          Height = 29
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton12Click
          Caption = 'Ganti Warna'
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 180
          Top = 8
          Width = 300
          Height = 41
          Caption = 'Tool Bar Atas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dxButton7: TdxButton
          Left = 16
          Top = 57
          Width = 140
          Height = 29
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton7Click
          Caption = 'Ganti Warna'
          TabOrder = 2
        end
        object dxButton8: TdxButton
          Left = 16
          Top = 100
          Width = 140
          Height = 29
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton8Click
          Caption = 'Ganti Warna'
          TabOrder = 3
        end
        object dxButton9: TdxButton
          Left = 16
          Top = 143
          Width = 140
          Height = 29
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton9Click
          Caption = 'Ganti Warna'
          TabOrder = 4
        end
        object Panel3: TPanel
          Left = 180
          Top = 51
          Width = 300
          Height = 41
          Caption = 'Tool Bar Samping'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Panel4: TPanel
          Left = 180
          Top = 94
          Width = 300
          Height = 41
          Caption = 'Content Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Panel5: TPanel
          Left = 180
          Top = 137
          Width = 300
          Height = 41
          Caption = 'List'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dxButton10: TdxButton
          Tag = 3333
          Left = 117
          Top = 442
          Width = 100
          Height = 28
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
          OnClick = dxButton10Click
          Caption = '&Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 8
        end
        object dxButton11: TdxButton
          Tag = 4444
          Left = 218
          Top = 442
          Width = 100
          Height = 28
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
          OnClick = dxButton11Click
          Caption = '&Batal (Esc)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 9
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 594
    inherited sbLast: TSpeedButton
      Left = 566
    end
    inherited sbNext: TSpeedButton
      Left = 543
    end
    inherited sbPrev: TSpeedButton
      Left = 520
    end
    inherited sbFirst: TSpeedButton
      Left = 497
    end
    inherited sbPeriod: TSpeedButton
      Left = 469
    end
    inherited BvlPeriod: TBevel
      Left = 223
    end
    inherited laPeriod: TLabel
      Left = 227
    end
  end
  inherited quMain: TADOQuery
    AfterPost = quMainAfterPost
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      'Select * FROM SAMSSet')
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'CustId'
      Size = 50
      Lookup = True
    end
    object quMainLDGPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPb'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPb'
      Size = 50
      Lookup = True
    end
    object quMainLDGPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPj'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPj'
      Size = 50
      Lookup = True
    end
    object quMainDGPb: TStringField
      FieldName = 'DGPb'
      Size = 30
    end
    object quMainDGPj: TStringField
      FieldName = 'DGPj'
      Size = 30
    end
    object quMainCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object quMainSalesId: TStringField
      FieldName = 'SalesId'
      Size = 30
    end
    object quMainLsalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LsalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesId'
      Size = 50
      Lookup = True
    end
    object quMainDGTr: TStringField
      FieldName = 'DGTr'
      Size = 50
    end
    object quMainDGK: TStringField
      FieldName = 'DGK'
      Size = 50
    end
    object quMainDGS: TStringField
      FieldName = 'DGS'
      Size = 50
    end
    object quMainLDGTr: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGTr'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGTr'
      Size = 50
      Lookup = True
    end
    object quMainLDGK: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGK'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGK'
      Size = 50
      Lookup = True
    end
    object quMainLDGS: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGS'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGS'
      Size = 50
      Lookup = True
    end
    object quMainDGR: TStringField
      FieldName = 'DGR'
      Size = 50
    end
    object quMainDGPR: TStringField
      FieldName = 'DGPR'
      Size = 50
    end
    object quMainLDGR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGR'
      Size = 50
      Lookup = True
    end
    object quMainLDGPR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGPR'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGPR'
      Size = 50
      Lookup = True
    end
    object quMainDRPb: TStringField
      FieldName = 'DRPb'
      Size = 30
    end
    object quMainDRPj: TStringField
      FieldName = 'DRPj'
      Size = 30
    end
    object quMainLDRPb: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPb'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPb'
      Size = 50
      Lookup = True
    end
    object quMainLDRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPj'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningId'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGRPb: TStringField
      FieldName = 'DGRPb'
      Size = 30
    end
    object quMainDGRPj: TStringField
      FieldName = 'DGRPj'
      Size = 30
    end
    object quMainLDRKas: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRKas'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRKas'
      Size = 50
      Lookup = True
    end
    object quMainLDGRPj: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPj'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPj'
      Size = 50
      Lookup = True
    end
    object quMainDGC: TStringField
      FieldName = 'DGC'
      Size = 50
    end
    object quMainLDGC: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGC'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'DGC'
      Size = 50
      Lookup = True
    end
    object quMainsDPB: TStringField
      FieldName = 'sDPB'
      Size = 50
    end
    object quMainDGRBi: TStringField
      FieldName = 'DGRBi'
      Size = 30
    end
    object quMainLDGRBi: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRBi'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRBi'
      Size = 80
      Lookup = True
    end
    object quMainDGRPLL: TStringField
      FieldName = 'DGRPLL'
      Size = 30
    end
    object quMainLDGRPLL: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGRPLL'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPLL'
      Size = 80
      Lookup = True
    end
    object quMainCetak: TStringField
      FieldName = 'Cetak'
      Size = 1
    end
    object quMainFixPrice: TBCDField
      FieldName = 'FixPrice'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainHPrice: TBCDField
      FieldName = 'HPrice'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainDRKas: TStringField
      FieldName = 'DRKas'
    end
    object quMainLRekPembelian: TStringField
      FieldKind = fkLookup
      FieldName = 'LRekPembelian'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DGRPb'
      Size = 100
      Lookup = True
    end
    object quMainDRDp: TStringField
      FieldName = 'DRDp'
      Size = 50
    end
    object quMainLDGDP: TStringField
      FieldKind = fkLookup
      FieldName = 'LDGDP'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRDp'
      Lookup = True
    end
    object quMainDRO: TStringField
      FieldName = 'DRO'
      Size = 50
    end
    object quMainDRA: TStringField
      FieldName = 'DRA'
      Size = 50
    end
    object quMainDRR: TStringField
      FieldName = 'DRR'
      Size = 50
    end
    object quMainLDro: TStringField
      FieldKind = fkLookup
      FieldName = 'LDro'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRO'
      Size = 50
      Lookup = True
    end
    object quMainLdrr: TStringField
      FieldKind = fkLookup
      FieldName = 'Ldrr'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'drr'
      Size = 50
      Lookup = True
    end
    object quMainLDra: TStringField
      FieldKind = fkLookup
      FieldName = 'LDra'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRA'
      Size = 50
      Lookup = True
    end
    object quMainDRARA: TStringField
      FieldName = 'DRARA'
      Size = 50
    end
    object quMainDRARO: TStringField
      FieldName = 'DRARO'
      Size = 50
    end
    object quMainDRARR: TStringField
      FieldName = 'DRARR'
      Size = 50
    end
    object quMainDRRetAP: TStringField
      FieldName = 'DRRetAP'
      Size = 50
    end
    object quMainDRRetAR: TStringField
      FieldName = 'DRRetAR'
      Size = 50
    end
    object quMainLDRARA: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRARA'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRARA'
      Size = 50
      Lookup = True
    end
    object quMainLDRARO: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRARO'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRARO'
      Size = 50
      Lookup = True
    end
    object quMainLDRARR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRARR'
      LookupDataSet = quRek
      LookupKeyFields = 'rekeningid'
      LookupResultField = 'rekeningname'
      KeyFields = 'draro'
      Size = 50
      Lookup = True
    end
    object quMainLDRRetAP: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRRetAP'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRRetAP'
      Size = 50
      Lookup = True
    end
    object quMainLDRRetAR: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRRetAR'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRRetAR'
      Size = 50
      Lookup = True
    end
    object quMainAPDisc: TStringField
      FieldName = 'APDisc'
      Size = 50
    end
    object quMainARDisc: TStringField
      FieldName = 'ARDisc'
      Size = 50
    end
    object quMainLAPDisc: TStringField
      FieldKind = fkLookup
      FieldName = 'LAPDisc'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'APDisc'
      Size = 50
      Lookup = True
    end
    object quMainLARDisc: TStringField
      FieldKind = fkLookup
      FieldName = 'LARDisc'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'ARDisc'
      Size = 50
      Lookup = True
    end
    object quMainDRHpp: TStringField
      FieldName = 'DRHpp'
      Size = 50
    end
    object quMainLDrhpp: TStringField
      FieldKind = fkLookup
      FieldName = 'LDrhpp'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRHpp'
      Size = 50
      Lookup = True
    end
    object quMainDRPbJ: TStringField
      FieldName = 'DRPbJ'
      Size = 50
    end
    object quMainLDRPbJ: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPbJ'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPbJ'
      Size = 100
      Lookup = True
    end
    object quMainDRPjT: TStringField
      FieldName = 'DRPjT'
      Size = 50
    end
    object quMainDRPjH: TStringField
      FieldName = 'DRPjH'
      Size = 50
    end
    object quMainLDRPjT: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPjT'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'rekeningname'
      KeyFields = 'DRPj'
      Size = 100
      Lookup = True
    end
    object quMainLDRPjH: TStringField
      FieldKind = fkLookup
      FieldName = 'LDRPjH'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'DRPjH'
      Size = 100
      Lookup = True
    end
    object quMainRekPBBKB: TStringField
      FieldName = 'RekPBBKB'
      Size = 50
    end
    object quMainLPBBKB: TStringField
      FieldKind = fkLookup
      FieldName = 'LPBBKB'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'RekPBBKB'
      Size = 100
      Lookup = True
    end
    object quMainRekLaba: TStringField
      FieldName = 'RekLaba'
      Size = 50
    end
    object quMainLRekLaba: TStringField
      FieldKind = fkLookup
      FieldName = 'LRekLaba'
      LookupDataSet = quRek
      LookupKeyFields = 'RekeningID'
      LookupResultField = 'RekeningName'
      KeyFields = 'RekLaba'
      Size = 100
      Lookup = True
    end
    object quMainRekJual: TStringField
      FieldName = 'RekJual'
      Size = 50
    end
    object quMainLRekJual: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekJual'
      Size = 100
      Calculated = True
    end
    object quMainRekJualTIM: TStringField
      FieldName = 'RekJualTIM'
      Size = 100
    end
    object quMainLRekJualTIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekJualTIM'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    object Action1: TAction
      Category = 'Nav'
      Caption = 'Simpan'
      ShortCut = 114
    end
    object Action2: TAction
      Category = 'Nav'
      Caption = 'Batal'
      ShortCut = 27
    end
  end
  object quCust: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsCustomer')
    Left = 420
    Top = 48
  end
  object quWareHouse: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM INMsWareHouse')
    Left = 448
    Top = 48
  end
  object quSales: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARMsSales')
    Left = 476
    Top = 48
  end
  object quRek: TADOQuery
    Active = True
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsRekening')
    Left = 504
    Top = 48
  end
  object quGroupRek: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quMainBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsGroupRek')
    Left = 532
    Top = 48
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Options = [cdFullOpen]
    Left = 380
    Top = 52
  end
  object dsSetting: TDataSource
    DataSet = quSetting
    Left = 485
    Top = 133
  end
  object quSetting: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SysReport')
    Left = 456
    Top = 133
    object quSettingCompNameFontName: TStringField
      FieldName = 'CompNameFontName'
      Size = 50
    end
    object quSettingCompNameFontSize: TLargeintField
      FieldName = 'CompNameFontSize'
    end
    object quSettingLineLeftVisible: TStringField
      FieldName = 'LineLeftVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineRightVisible: TStringField
      FieldName = 'LineRightVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingLineSeparatorVisible: TStringField
      FieldName = 'LineSeparatorVisible'
      FixedChar = True
      Size = 1
    end
    object quSettingClFooter: TLargeintField
      FieldName = 'ClFooter'
    end
    object quSettingClTitle: TLargeintField
      FieldName = 'ClTitle'
    end
    object quSettingRptTitleFontName: TStringField
      FieldName = 'RptTitleFontName'
      Size = 50
    end
    object quSettingRptTitleFontSize: TLargeintField
      FieldName = 'RptTitleFontSize'
    end
    object quSettingClAtas: TLargeintField
      FieldName = 'ClAtas'
    end
    object quSettingClSamping: TLargeintField
      FieldName = 'ClSamping'
    end
    object quSettingClContent: TLargeintField
      FieldName = 'ClContent'
    end
    object quSettingClList: TLargeintField
      FieldName = 'ClList'
    end
  end
end
