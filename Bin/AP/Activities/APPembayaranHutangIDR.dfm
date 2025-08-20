inherited fmAPPembayaranHutangIDR: TfmAPPembayaranHutangIDR
  Left = 53
  Top = 28
  Caption = 'Pembayaran Hutang'
  ClientHeight = 609
  ClientWidth = 868
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 560
    inherited pa3: TdxContainer
      Height = 381
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 597
    Width = 868
  end
  inherited pa2: TdxContainer
    Height = 560
  end
  inherited pcMain: TdxPageControl
    Width = 675
    Height = 560
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 513
        Height = 505
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Hutang'
          DisableEditor = True
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PaymentID'
        end
        object dbgListPaymentDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          DisableEditor = True
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListSuppId: TdxDBGridMaskColumn
          Caption = 'Kode Supplier'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dbgListLSuppname: TdxDBGridLookupColumn
          Caption = 'Nama Supplier'
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuSupplier'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label5: TLabel
        Left = 8
        Top = 75
        Width = 117
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 83
        Width = 117
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 48
        Top = 416
        Width = 32
        Height = 13
        Caption = 'Label7'
      end
      object Label8: TLabel
        Left = 48
        Top = 408
        Width = 50
        Height = 13
        Caption = 'Total Nota'
        Color = clBlack
        ParentColor = False
      end
      object Label9: TLabel
        Left = 8
        Top = 408
        Width = 32
        Height = 13
        Caption = 'Label9'
      end
      object Panel2: TPanel
        Left = 0
        Top = 497
        Width = 675
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 454
          Top = 3
          Width = 201
          Height = 34
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBText7: TDBText
            Left = 48
            Top = 9
            Width = 146
            Height = 20
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = dsTotal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 10
            Width = 43
            Height = 19
            Caption = 'Total :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object dxButton3: TdxButton
          Left = 363
          Top = 9
          Width = 88
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton3Click
          Caption = 'CETAK'
          TabOrder = 1
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 272
          Top = 9
          Width = 88
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 2
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 183
          Top = 9
          Width = 88
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 3
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 94
          Top = 9
          Width = 88
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Data'
          TabOrder = 4
          TabStop = False
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 5
          Top = 9
          Width = 88
          Height = 23
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Data'
          TabOrder = 5
          TabStop = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 675
        Height = 224
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 1
        DesignSize = (
          675
          224)
        object Label1: TLabel
          Left = 17
          Top = 15
          Width = 33
          Height = 19
          Alignment = taRightJustify
          Caption = 'Nota'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 17
          Top = 43
          Width = 53
          Height = 19
          Alignment = taRightJustify
          Caption = 'Tanggal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 17
          Top = 73
          Width = 55
          Height = 19
          Alignment = taRightJustify
          Caption = 'Supplier'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 239
          Top = 73
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'luSupplier'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 17
          Top = 192
          Width = 79
          Height = 19
          Alignment = taRightJustify
          Caption = 'Keterangan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 17
          Top = 105
          Width = 43
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valuta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText
          Left = 124
          Top = 103
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LCurrName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 17
          Top = 134
          Width = 36
          Height = 19
          Alignment = taRightJustify
          Caption = 'Bank'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText
          Left = 239
          Top = 134
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LBankName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 17
          Top = 162
          Width = 87
          Height = 19
          Alignment = taRightJustify
          Caption = 'No BG / Cek'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 239
          Top = 43
          Width = 64
          Height = 19
          Alignment = taRightJustify
          Caption = 'Tgl Cair :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 239
          Top = 103
          Width = 62
          Height = 23
          Caption = 'Rate Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 303
          Top = 104
          Width = 85
          Height = 20
          Alignment = taRightJustify
          DataField = 'Rate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 110
          Top = 15
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 110
          Top = 43
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 110
          Top = 73
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 110
          Top = 192
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 110
          Top = 105
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 110
          Top = 134
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 110
          Top = 162
          Width = 5
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 464
          Top = 162
          Width = 100
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
          Action = ActSave
          Caption = 'Simpan (F3)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 0
          TabStop = False
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 566
          Top = 162
          Width = 100
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
          Action = ActCancel
          Caption = 'Batal (Esc)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
          TabStop = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 124
          Top = 9
          Width = 188
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'PaymentID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 124
          Top = 39
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 307
          Top = 39
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Transdate1'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 124
          Top = 69
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SuppID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 124
          Top = 99
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 124
          Top = 129
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'BankID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object dxDBEdit3: TdxDBEdit
          Left = 124
          Top = 159
          Width = 300
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'BGCID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit2: TdxDBEdit
          Left = 124
          Top = 189
          Width = 525
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox1: TGroupBox
          Left = 419
          Top = 6
          Width = 249
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          object Label21: TLabel
            Left = 18
            Top = 8
            Width = 41
            Height = 19
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 68
            Top = 9
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 7
            Top = 29
            Width = 53
            Height = 19
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 69
            Top = 30
            Width = 174
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 224
        Width = 675
        Height = 273
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detil Pembayaran'
            Width = 417
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PaymentID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -20
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -16
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = [fsBold]
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgPurchaseID: TdxDBGridButtonColumn
          Caption = 'Nota Pembelian'
          Width = 154
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dbgPurchaseIDButtonClick
        end
        object dbgtgl: TdxDBGridColumn
          Caption = 'Tgl Nota'
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTglPb'
        end
        object dbgSuppName: TdxDBGridColumn
          Caption = 'Nama Supplier'
          Visible = False
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CSuppName'
        end
        object dbgPaymentValue: TdxDBGridColumn
          Caption = 'Nilai Pembayaran '
          Width = 134
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ValuePayment'
          SummaryFooterType = cstSum
          SummaryFooterField = 'ValuePayment'
          SummaryFooterFormat = 'Total Pembayaran : #0,00.00'
          SummaryType = cstSum
          SummaryField = 'ValuePayment'
          SummaryFormat = '#0,00'
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 868
    inherited sbLast: TSpeedButton
      Left = 840
    end
    inherited sbNext: TSpeedButton
      Left = 817
    end
    inherited sbPrev: TSpeedButton
      Left = 794
    end
    inherited sbFirst: TSpeedButton
      Left = 771
    end
    inherited sbPeriod: TSpeedButton
      Left = 743
    end
    inherited BvlPeriod: TBevel
      Left = 497
    end
    inherited laPeriod: TLabel
      Left = 501
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrPaymentHd ')
    object quMainPaymentID: TStringField
      FieldName = 'PaymentID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 400
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainluSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'luSupplier'
      LookupDataSet = quSup
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Lookup = True
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 50
      Lookup = True
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgBayar: TStringField
      FieldName = 'FgBayar'
      Size = 1
    end
    object quMainBankID: TStringField
      FieldName = 'BankID'
      Size = 30
    end
    object quMainBGCID: TStringField
      FieldName = 'BGCID'
      Size = 100
    end
    object quMainTransdate1: TDateTimeField
      FieldName = 'Transdate1'
    end
    object quMainLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankID'
      LookupResultField = 'BankName'
      KeyFields = 'BankID'
      Size = 100
      Lookup = True
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PaymentID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from APTrPaymentDt  WHERE PaymentID=:PaymentID'
      '')
    Left = 328
    object quDetilPaymentID: TStringField
      FieldName = 'PaymentID'
      Size = 50
    end
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quDetilValuePurchase: TBCDField
      FieldName = 'ValuePurchase'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilValuePayment: TBCDField
      FieldName = 'ValuePayment'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilCTglPb: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CTglPb'
      Calculated = True
    end
    object quDetilCSuppName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CSuppName'
      Size = 50
      Calculated = True
    end
    object quDetilBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quDetilLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankId'
      LookupResultField = 'BankName'
      KeyFields = 'BankId'
      Size = 50
      Lookup = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
    Left = 356
  end
  object quSup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from APMsSupplier order by suppname')
    Left = 700
    Top = 128
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 672
    Top = 128
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 420
    Top = 4
  end
  object quPb: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    Parameters = <>
    SQL.Strings = (
      'Select * FROM APTrPurchaseHd')
    Left = 780
    Top = 128
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'PaymentId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select isnull(Sum(ValuePayment ),0) as Total FROM APTrPaymentDt '
      'WHERE PaymentID=:PaymentID'
      '')
    Left = 548
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 576
    Top = 456
  end
  object quCal: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 448
    Top = 4
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 728
    Top = 128
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 752
    Top = 128
  end
  object quSisa: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 68
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 448
    Top = 368
  end
end
