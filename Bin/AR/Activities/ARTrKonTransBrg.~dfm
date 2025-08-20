inherited fmARTrKonTransBrg: TfmARTrKonTransBrg
  Left = 480
  Top = 107
  Caption = 'Delivery Order'
  ClientHeight = 662
  ClientWidth = 1285
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 613
    inherited pa3: TdxContainer
      Height = 434
      object dxButton1: TdxButton
        Left = -488
        Top = -175
        Width = 105
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'Cetak &Surat Jalan'
        TabOrder = 0
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 650
    Width = 1285
  end
  inherited pa2: TdxContainer
    Height = 613
  end
  inherited pcMain: TdxPageControl
    Width = 1092
    Height = 613
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 761
        Height = 513
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Konsinyasi'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonTransBrgID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Nota'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Sumber'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Sumber'
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuLocation'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustomer'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Caption = 'Keterangan'
          DisableEditor = True
          Width = 1204
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object DBText1: TDBText
        Left = 226
        Top = 110
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LuCustomer'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 202
        Top = 85
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LuLocation'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 12
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota DO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 10
        Top = 37
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 10
        Top = 87
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gudang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 10
        Top = 112
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Pelanggan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 10
        Top = 162
        Width = 100
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
      object Label23: TLabel
        Left = 232
        Top = 693
        Width = 38
        Height = 18
        Alignment = taRightJustify
        Caption = 'Valuta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 458
        Top = 59
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LuCurrName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 317
        Top = 693
        Width = 4
        Height = 18
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 74
        Top = 612
        Width = 44
        Height = 19
        Alignment = taRightJustify
        Caption = 'Jenis :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText3: TDBText
        Left = 210
        Top = 135
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LSalesName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 10
        Top = 137
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sales :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 10
        Top = 62
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota SO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 278
        Top = 37
        Width = 92
        Height = 17
        Alignment = taRightJustify
        Caption = 'PO Pelanggan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 287
        Top = 12
        Width = 83
        Height = 17
        Alignment = taRightJustify
        Caption = 'Nota Invoice :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 326
        Top = 62
        Width = 44
        Height = 17
        Alignment = taRightJustify
        Caption = 'Valuta :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 10
        Top = 187
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat Kirim :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 833
        Top = 159
        Width = 112
        Height = 33
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
        Action = ActSave
        Caption = '&Simpan (F3)'
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
        Left = 946
        Top = 159
        Width = 112
        Height = 33
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
        Action = ActCancel
        Caption = '&Batal (Esc)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
        TabStop = False
      end
      object dbg: TdxDBGrid
        Left = 1
        Top = 213
        Width = 704
        Height = 342
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Delivery Order'
            Width = 670
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonTransBrgID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -15
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -15
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = [fsBold]
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 146
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          TabStop = False
          Width = 207
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemName'
        end
        object dbgQty: TdxDBGridColumn
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Jumlah'
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Satuan'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
        end
        object dbgNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgColumn6: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Kode'
          MinWidth = 16
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgLoot'
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          ShowDescription = True
          Values.Strings = (
            'Y'
            'T')
        end
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 3
        Top = 557
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActTambahDetail
        TabOrder = 7
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 96
        Top = 557
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActDeleteDetail
        TabOrder = 3
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 189
        Top = 557
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 4
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 282
        Top = 557
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 5
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 4444
        Left = 487
        Top = 557
        Width = 201
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActPrint
        TabOrder = 6
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 816
        Top = 10
        Width = 249
        Height = 75
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        object Label21: TLabel
          Left = 26
          Top = 22
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 71
          Top = 23
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 18
          Top = 43
          Width = 45
          Height = 17
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 71
          Top = 44
          Width = 158
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 712
        Top = 642
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        Caption = 'Ubah No'
        TabOrder = 9
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 114
        Top = 6
        Width = 152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonTransBrgID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit3: TdxDBEdit
        Left = 333
        Top = 626
        Width = 192
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Status'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 378
        Top = 56
        Width = 74
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CurrID'
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
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 114
        Top = 31
        Width = 111
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 128
        Top = 606
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Jenis'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Spare Part'
          'Mesin')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'S'
          'M')
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 114
        Top = 81
        Width = 79
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseID'
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
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 114
        Top = 106
        Width = 103
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CustID'
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
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 114
        Top = 131
        Width = 87
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SalesID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
      object dxDBEdit2: TdxDBEdit
        Left = 114
        Top = 156
        Width = 599
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton5: TdxButton
        Left = 621
        Top = 643
        Width = 90
        Hint = 'Cancel Changes'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Multi'
        TabOrder = 19
        TabStop = False
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 114
        Top = 56
        Width = 152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SOID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 378
        Top = 31
        Width = 287
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POCust'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit5ButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object dbgBatch: TdxDBGrid
        Left = 705
        Top = 212
        Width = 385
        Height = 342
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Tanggal Expired'
            Width = 248
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonsinyasiID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -15
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -15
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = [fsBold]
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgBatchKonsinyasiID: TdxDBGridMaskColumn
          Visible = False
          Width = 387
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonTransBrgID'
        end
        object dbgBatchItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgBatchSNID: TdxDBGridButtonColumn
          Caption = 'Kode Produksi'
          Width = 153
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgBatchSNIDButtonClick
        end
        object dbgBatchUpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 142
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgBatchUpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dbgBatchJumlah: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgBatchColumn7: TdxDBGridDateColumn
          Caption = 'Tgl Expired'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Expdate'
        end
      end
      object dxButton2: TdxButton
        Tag = 1111
        Left = 704
        Top = 556
        Width = 70
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Tambah'
        TabOrder = 23
        TabStop = False
      end
      object dxButton6: TdxButton
        Tag = 2222
        Left = 775
        Top = 556
        Width = 70
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'Hapus'
        TabOrder = 24
        TabStop = False
      end
      object dxButton7: TdxButton
        Tag = 4444
        Left = 846
        Top = 556
        Width = 70
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Simpan'
        TabOrder = 25
        TabStop = False
      end
      object dxButton8: TdxButton
        Tag = 4444
        Left = 917
        Top = 556
        Width = 70
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Caption = 'Batal'
        TabOrder = 26
        TabStop = False
      end
      object dxDBEdit4: TdxDBEdit
        Left = 378
        Top = 6
        Width = 152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'InvoiceID'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        StoredValues = 64
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 114
        Top = 181
        Width = 599
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'AlamatKirim'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit7ButtonClick
        ExistButtons = True
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1285
    inherited sbLast: TSpeedButton
      Left = 1257
    end
    inherited sbNext: TSpeedButton
      Left = 1234
    end
    inherited sbPrev: TSpeedButton
      Left = 1211
    end
    inherited sbFirst: TSpeedButton
      Left = 1188
    end
    inherited sbPeriod: TSpeedButton
      Left = 1160
    end
    inherited BvlPeriod: TBevel
      Left = 914
    end
    inherited laPeriod: TLabel
      Left = 918
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    BeforeInsert = nil
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT A.* FROM ARTrKonTransBrgHd A')
    object quMainKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      OnChange = quMainCustIDChange
      Size = 50
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLuCustomer: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'LuCustomer'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 50
      Lookup = True
    end
    object quMainLuLocation: TStringField
      FieldKind = fkLookup
      FieldName = 'LuLocation'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Lookup = True
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      Size = 5
    end
    object quMainLuCurrName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuCurrName'
      Size = 100
      Calculated = True
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      Size = 1
    end
    object quMainLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 100
      Calculated = True
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 100
      Calculated = True
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      Size = 50
    end
    object quMainPOCust: TStringField
      FieldKind = fkCalculated
      FieldName = 'POCust'
      Size = 200
      Calculated = True
    end
    object quMainInvoiceID: TStringField
      FieldName = 'InvoiceID'
      Size = 50
    end
    object quMainDOID: TStringField
      FieldName = 'DOID'
      Size = 50
    end
    object quMainAlamatKirim: TStringField
      FieldName = 'AlamatKirim'
      Size = 200
    end
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = dxButton1Click
    end
    object ActDeleteDetail: TAction
      Category = 'Data'
      Caption = '(-) Barang'
      ShortCut = 46
      OnExecute = ActDeleteDetailExecute
    end
    object ActTambahDetail: TAction
      Category = 'Data'
      Caption = '(+) Barang'
      ShortCut = 45
      OnExecute = ActTambahDetailExecute
    end
  end
  inherited quDetil: TADOQuery
    BeforeInsert = nil
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonTransBrgID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ARTrKonTransBrgDt'
      'WHERE KonTransBrgID=:KonTransBrgID'
      'ORDER BY UpdDate')
    object quDetilKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      OnChange = quDetilQtyChange
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
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object quDetilUrut: TStringField
      FieldName = 'Urut'
      Size = 50
    end
    object quDetilNumAll: TIntegerField
      FieldName = 'NumAll'
    end
    object quDetilFgLoot: TStringField
      FieldName = 'FgLoot'
      FixedChar = True
      Size = 1
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      OnChange = quDetilJumlahChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quGudang: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 716
    Top = 372
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,A.ItemName,A.GroupID, A.Tipe,A.UOMID'
      'FROM INMsItem A')
    Left = 744
    Top = 372
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 716
    Top = 396
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 680
    Top = 172
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 708
    Top = 172
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 736
    Top = 172
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 764
    Top = 172
    object StringField1: TStringField
      FieldName = 'SuppID'
    end
    object StringField2: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'City'
      Size = 150
    end
    object StringField5: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'Phone'
    end
    object StringField7: TStringField
      FieldName = 'Fax'
    end
    object StringField8: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UpdDate'
    end
    object StringField10: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforeEdit = quSNBeforeEdit
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KontransBrgID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Urut'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKontransBrgDTSN'
      
        'WHERE KonTransBrgID=:KontransBrgID AND ItemID=:ItemID And Urut=:' +
        'Urut'
      '')
    Left = 880
    Top = 380
    object quSNSNID: TStringField
      FieldName = 'SNID'
      OnChange = quSNSNIDChange
      Size = 30
    end
    object quSNKonTransBrgID: TStringField
      FieldName = 'KonTransBrgID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
    object quSNQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quSNUrut: TStringField
      FieldName = 'Urut'
      Size = 50
    end
    object quSNExpdate: TDateTimeField
      FieldName = 'Expdate'
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 908
    Top = 380
  end
end
