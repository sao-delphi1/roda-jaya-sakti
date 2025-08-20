inherited fmAPKonsinyasi: TfmAPKonsinyasi
  Left = 195
  Top = 46
  Caption = 'Penerimaan Barang'
  ClientHeight = 543
  ClientWidth = 1163
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 494
    inherited pa3: TdxContainer
      Height = 315
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
    Top = 531
    Width = 1163
  end
  inherited pa2: TdxContainer
    Height = 494
  end
  inherited pcMain: TdxPageControl
    Width = 970
    Height = 494
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 1046
        Height = 504
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Terima Konsinyasi'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
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
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          DisableEditor = True
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Lokasi'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Lokasi'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LWareHouseName'
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
      object Label1: TLabel
        Left = 19
        Top = 607
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota DO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label2: TLabel
        Left = 19
        Top = 30
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 19
        Top = 55
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supplier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 217
        Top = 56
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LSuppName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 19
        Top = 79
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gudang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 201
        Top = 77
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LWareHouseName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 103
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 19
        Top = 8
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota BPB :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 19
        Top = 575
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota PO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 43
        Top = 655
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Site :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 225
        Top = 653
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LSites'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 43
        Top = 679
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Divisi :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 225
        Top = 677
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LDivisi'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 278
        Top = 575
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'Lsitespo'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 705
        Top = 94
        Width = 120
        Height = 28
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
        Action = ActSave
        Caption = 'Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 5
        TabStop = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 826
        Top = 94
        Width = 120
        Height = 28
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
        Action = ActCancel
        Caption = 'Batal (Esc)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 6
        TabStop = False
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 128
        Width = 970
        Height = 308
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Penerimaan Barang'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonsinyasiID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -12
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
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
        object dbgColumn12: TdxDBGridColumn
          Caption = 'Part Order'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemID'
        end
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Part Number'
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 174
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgColumn8: TdxDBGridColumn
          Caption = 'Type Unit'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'typeunit'
        end
        object dbgColumn9: TdxDBGridColumn
          Caption = 'No Unit'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nounit'
        end
        object dbgCurrID: TdxDBGridButtonColumn
          Caption = 'Valuta'
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgCurrIDButtonClick
        end
        object dbgQty: TdxDBGridColumn
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Jumlah'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Harga'
          Visible = False
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgColumn10: TdxDBGridButtonColumn
          Caption = 'Rak'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LayoutID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgColumn10ButtonClick
        end
        object dbgUOM: TdxDBGridColumn
          Caption = 'Satuan'
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
        end
        object dbgNote: TdxDBGridColumn
          Caption = 'Nomor PR'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgColumn11: TdxDBGridColumn
          Caption = 'Nomor PO'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POID'
        end
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 2
        Top = 438
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 8
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 97
        Top = 438
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 9
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 192
        Top = 438
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 10
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 287
        Top = 438
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 11
        TabStop = False
      end
      object dxButton1: TdxButton
        Tag = 4444
        Left = 382
        Top = 438
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'Cetak (F9)'
        TabOrder = 12
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 608
        Top = 6
        Width = 242
        Height = 63
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        object Label21: TLabel
          Left = 23
          Top = 15
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
          Left = 68
          Top = 16
          Width = 130
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
          Left = 15
          Top = 36
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
          Left = 68
          Top = 37
          Width = 130
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
      object dbgBatch: TdxDBGrid
        Left = 993
        Top = 576
        Width = 364
        Height = 124
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Tanggal Expired'
            Width = 363
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'KonsinyasiID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Visible = False
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
          Width = 283
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiID'
        end
        object dbgBatchItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgBatchSNID: TdxDBGridColumn
          Caption = 'Kode Produksi'
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
        end
        object dbgBatchUpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgBatchUpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dbgBatchFgJual: TdxDBGridMaskColumn
          Visible = False
          Width = 29
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgJual'
        end
        object dbgBatchFgSN: TdxDBGridMaskColumn
          Visible = False
          Width = 24
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgSN'
        end
        object dbgBatchJumlah: TdxDBGridColumn
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Jumlah'
        end
        object dbgBatchPrice: TdxDBGridCurrencyColumn
          Visible = False
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Nullable = False
        end
        object dbgBatchExpDate: TdxDBGridDateColumn
          Caption = 'Tanggal Expired'
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ExpDate'
        end
      end
      object dxButton2: TdxButton
        Tag = 1111
        Left = 1016
        Top = 710
        Width = 72
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Tambah'
        TabOrder = 15
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 2222
        Left = 1089
        Top = 710
        Width = 72
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'Hapus'
        TabOrder = 16
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 1235
        Top = 710
        Width = 72
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Batal'
        TabOrder = 17
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 1162
        Top = 710
        Width = 72
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Simpan'
        TabOrder = 18
        TabStop = False
      end
      object dxDBEdit3: TdxDBEdit
        Left = 110
        Top = 2
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'BPBID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit1: TdxDBEdit
        Left = 110
        Top = 602
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonsinyasiID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 110
        Top = 26
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 110
        Top = 570
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 110
        Top = 50
        Width = 99
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 110
        Top = 74
        Width = 83
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit2: TdxDBEdit
        Left = 110
        Top = 98
        Width = 475
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton6: TdxButton
        Tag = 4444
        Left = 543
        Top = 656
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'Jurnal'
        TabOrder = 21
        TabStop = False
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 134
        Top = 650
        Width = 83
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SiteID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 134
        Top = 674
        Width = 83
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'DivisiID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1163
    inherited sbLast: TSpeedButton
      Left = 1135
    end
    inherited sbNext: TSpeedButton
      Left = 1112
    end
    inherited sbPrev: TSpeedButton
      Left = 1089
    end
    inherited sbFirst: TSpeedButton
      Left = 1066
    end
    inherited sbPeriod: TSpeedButton
      Left = 1038
    end
    inherited BvlPeriod: TBevel
      Left = 792
    end
    inherited laPeriod: TLabel
      Left = 796
    end
  end
  inherited SCEdit: TdxEditStyleController
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Top = 4
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiHd')
    Left = 224
    object quMainKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
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
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quMainLSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 100
      Lookup = True
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainFgPosting: TStringField
      FieldName = 'FgPosting'
      Size = 1
    end
    object quMainBPBID: TStringField
      FieldName = 'BPBID'
      Size = 50
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainNoBPB: TStringField
      FieldName = 'NoBPB'
    end
    object quMainRekPersediaan: TStringField
      FieldName = 'RekPersediaan'
    end
    object quMainPPN: TStringField
      FieldName = 'PPN'
    end
    object quMainRekHD: TStringField
      FieldName = 'RekHD'
    end
    object quMainLRekPersediaan: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPersediaan'
      Size = 100
      Calculated = True
    end
    object quMainLPPN: TStringField
      FieldKind = fkCalculated
      FieldName = 'LPPN'
      Size = 100
      Calculated = True
    end
    object quMainLRekHD: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekHD'
      Size = 100
      Calculated = True
    end
    object quMainLSites: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSites'
      Size = 100
      Calculated = True
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quMainLDivisi: TStringField
      FieldKind = fkCalculated
      FieldName = 'LDivisi'
      Size = 50
      Calculated = True
    end
    object quMainLsitespo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lsitespo'
      Size = 100
      Calculated = True
    end
    object quMainLsiteid: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lsiteid'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Top = 4
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = dxButton1Click
    end
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonsinyasiID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiDt'
      'WHERE KonsinyasiID=:KonsinyasiID'
      'ORDER BY ItemID'
      ''
      ''
      ''
      '')
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilLuValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'LuValuta'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 80
      Lookup = True
    end
    object quDetilLuItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuItemName'
      Size = 200
      Calculated = True
    end
    object quDetilLUOM: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUOM'
      Size = 100
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quDetilNumAll: TIntegerField
      FieldName = 'NumAll'
    end
    object quDetilFgNum: TIntegerField
      FieldName = 'FgNum'
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      OnChange = quDetilJumlahChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetiltypeunit: TStringField
      FieldName = 'typeunit'
      Size = 50
    end
    object quDetilnounit: TStringField
      FieldName = 'nounit'
      Size = 50
    end
    object quDetilLsites: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lsites'
      Size = 100
      Calculated = True
    end
    object quDetilCurrID: TStringField
      FieldName = 'CurrID'
      Size = 50
    end
    object quDetilFgTerima: TStringField
      FieldName = 'FgTerima'
      Size = 1
    end
    object quDetilLayoutID: TStringField
      FieldName = 'LayoutID'
      Size = 50
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 100
    end
    object quDetilLItemID: TStringField
      FieldKind = fkCalculated
      FieldName = 'LItemID'
      Size = 100
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 668
    Top = 4
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 640
    Top = 4
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CurrID,CurrName FROM SAMsValuta')
    Left = 696
    Top = 4
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 400
    Top = 28
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforeEdit = quSNBeforeDelete
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonsinyasiID'
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
        Name = 'NumAll'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM APTrKonsinyasiDtSN'
      
        'WHERE KonsinyasiID=:KonsinyasiID AND ItemID=:ItemID AND NumAll=:' +
        'NumAll')
    Left = 920
    Top = 420
    object quSNKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quSNItemIDChange
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNFgJual: TStringField
      FieldName = 'FgJual'
      Size = 1
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
    object quSNJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quSNExpDate: TDateTimeField
      FieldName = 'ExpDate'
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quSNNumAll: TIntegerField
      FieldName = 'NumAll'
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 948
    Top = 420
  end
end
