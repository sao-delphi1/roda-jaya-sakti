inherited fmINTransfer: TfmINTransfer
  Left = 163
  Top = 132
  Caption = 'Transfer Barang'
  ClientHeight = 560
  ClientWidth = 1124
  PixelsPerInch = 96
  TextHeight = 14
  inherited paLeft: TdxContainer
    Height = 507
    inherited pa3: TdxContainer
      Height = 314
    end
    inherited paOperation: TdxContainer
      Top = 9
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 547
    Width = 1124
  end
  inherited pa2: TdxContainer
    Height = 507
  end
  inherited pcMain: TdxPageControl
    Width = 916
    Height = 507
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Kode Transfer'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Transfer'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferDate'
        end
        object dbgListWareHouseSrc: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Sumber'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseSrc'
        end
        object dbgListLwareHouseSrc: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Sumber'
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LwareHouseSrc'
        end
        object dbgListWareHouseDest: TdxDBGridMaskColumn
          Caption = 'Kode Gudang Tujuan'
          DisableEditor = True
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseDest'
        end
        object dbgListLWareHouseDest: TdxDBGridLookupColumn
          Caption = 'Nama Gudang Tujuan'
          DisableEditor = True
          Width = 289
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LWareHouseDest'
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
        Left = 41
        Top = 13
        Width = 99
        Height = 19
        Alignment = taRightJustify
        Caption = 'Nota Transaksi :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 87
        Top = 39
        Width = 53
        Height = 19
        Alignment = taRightJustify
        Caption = 'Tanggal :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 35
        Top = 66
        Width = 105
        Height = 19
        Alignment = taRightJustify
        Caption = 'Gudang Sumber :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 277
        Top = 64
        Width = 55
        Height = 19
        AutoSize = True
        DataField = 'LWareHouseScr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 42
        Top = 92
        Width = 98
        Height = 19
        Alignment = taRightJustify
        Caption = 'Gudang Tujuan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 277
        Top = 90
        Width = 55
        Height = 19
        AutoSize = True
        DataField = 'LWareHouseDest'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 63
        Top = 116
        Width = 77
        Height = 19
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 34
        Top = 178
        Width = 106
        Height = 19
        Alignment = taRightJustify
        Caption = 'Nama Ekspedisi :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 413
        Top = 178
        Width = 399
        Height = 19
        Alignment = taRightJustify
        Caption = 'Note : Untuk Mutasi Solar, Penginputan di Pengeluaran Solar'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText25: TDBText
        Left = 459
        Top = 449
        Width = 33
        Height = 33
        Alignment = taRightJustify
        DataField = 'JmlPrint'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText22: TDBText
        Left = 386
        Top = 39
        Width = 63
        Height = 19
        AutoSize = True
        DataField = 'LPT'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 200
        Width = 914
        Height = 250
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Barang yang di transfer'
            Width = 772
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
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
        HeaderFont.Height = -13
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
          Caption = 'Part Number'
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgColumn10: TdxDBGridButtonColumn
          Caption = 'Reference Part'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID2'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgColumn10ButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgLayout: TdxDBGridButtonColumn
          Caption = 'Rak'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LayoutID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgLayoutButtonClick
        end
        object dbgColumn5: TdxDBGridColumn
          Caption = 'Type Unit'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LTypeunit'
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgColumn6: TdxDBGridColumn
          Caption = 'Satuan'
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuOM'
        end
        object dbgColumn9: TdxDBGridButtonColumn
          Caption = 'Site'
          Visible = False
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SiteID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgColumn9ButtonClick
        end
        object dbgColumn7: TdxDBGridColumn
          Visible = False
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRID'
        end
        object dbgColumn8: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'note'
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 148
        Top = 8
        Width = 204
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'TransferID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 148
        Top = 34
        Width = 118
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransferDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 148
        Top = 60
        Width = 118
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseSrc'
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
        Left = 148
        Top = 86
        Width = 118
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'WareHouseDest'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBMemo1: TdxDBMemo
        Left = 148
        Top = 112
        Width = 456
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 61
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 668
        Top = 139
        Width = 112
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
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
        TabOrder = 6
        TabStop = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 781
        Top = 139
        Width = 112
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
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
        TabOrder = 7
        TabStop = False
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 2
        Top = 452
        Width = 82
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 9
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 85
        Top = 452
        Width = 83
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 10
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 169
        Top = 452
        Width = 83
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 11
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 253
        Top = 452
        Width = 83
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 12
        TabStop = False
      end
      object bbCetak: TdxButton
        Tag = 4444
        Left = 337
        Top = 452
        Width = 116
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbCetakClick
        Caption = 'Cetak (F9)'
        TabOrder = 13
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 636
        Top = 10
        Width = 265
        Height = 66
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        object Label21: TLabel
          Left = 29
          Top = 14
          Width = 36
          Height = 19
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 73
          Top = 15
          Width = 142
          Height = 18
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 18
          Top = 37
          Width = 47
          Height = 19
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 73
          Top = 38
          Width = 188
          Height = 18
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object dbgBatch: TdxDBGrid
        Left = 950
        Top = 450
        Width = 404
        Height = 222
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Tanggal Expired'
            Width = 363
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SNID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
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
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgBatchKonsinyasiID: TdxDBGridButtonColumn
          Visible = False
          Width = 283
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransferID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgBatchKonsinyasiIDButtonClick
        end
        object dbgBatchItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgBatchSNID: TdxDBGridButtonColumn
          Caption = 'Kode Produksi'
          Width = 156
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
        object dbgBatchColumn6: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgBatchColumn7: TdxDBGridDateColumn
          Caption = 'Expired Date'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ExpDate'
        end
      end
      object dxButton2: TdxButton
        Tag = 1111
        Left = 916
        Top = 364
        Width = 78
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Tambah'
        TabOrder = 16
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 2222
        Left = 995
        Top = 364
        Width = 78
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'Hapus'
        TabOrder = 17
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 1074
        Top = 364
        Width = 77
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Simpan'
        TabOrder = 18
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 1152
        Top = 364
        Width = 78
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Batal'
        TabOrder = 19
        TabStop = False
      end
      object dxDBEdit2: TdxDBEdit
        Left = 148
        Top = 172
        Width = 204
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'driver'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object CheckBox1: TCheckBox
        Left = 508
        Top = 457
        Width = 148
        Height = 18
        Caption = 'Tampilkan Nomor PO'
        TabOrder = 20
        Visible = False
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 266
        Top = 34
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        DataField = 'company'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1124
    inherited sbLast: TSpeedButton
      Left = 1094
    end
    inherited sbNext: TSpeedButton
      Left = 1069
    end
    inherited sbPrev: TSpeedButton
      Left = 1045
    end
    inherited sbFirst: TSpeedButton
      Left = 1020
    end
    inherited sbPeriod: TSpeedButton
      Left = 990
    end
    inherited BvlPeriod: TBevel
      Left = 725
    end
    inherited laPeriod: TLabel
      Left = 729
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from intrtransferitemhd')
    Left = 224
    object quMainTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quMainTransferDate: TDateTimeField
      FieldName = 'TransferDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainWareHouseSrc: TStringField
      FieldName = 'WareHouseSrc'
    end
    object quMainWareHouseDest: TStringField
      FieldName = 'WareHouseDest'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLWareHouseScr: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseScr'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseSrc'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object quMainLWareHouseDest: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseDest'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseDest'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object quMainFgTrf: TStringField
      FieldName = 'FgTrf'
      Size = 10
    end
    object quMainFgForm: TStringField
      FieldName = 'FgForm'
      Size = 50
    end
    object quMaindriver: TStringField
      FieldName = 'driver'
      Size = 100
    end
    object quMainLSource: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSource'
      Size = 100
      Calculated = True
    end
    object quMainLdest: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ldest'
      Size = 100
      Calculated = True
    end
    object quMaincompany: TStringField
      FieldName = 'company'
    end
    object quMainFgDivisi: TStringField
      FieldName = 'FgDivisi'
      Size = 50
    end
    object quMainJmlPrint: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'JmlPrint'
      Calculated = True
    end
    object quMainLPT: TStringField
      FieldKind = fkCalculated
      FieldName = 'LPT'
      Size = 200
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    object ActPrint: TAction
      Category = 'Nav'
      Caption = 'ActPrint'
      ShortCut = 120
    end
  end
  inherited quDetil: TADOQuery
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'TransferID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INTrTransferItemDt'
      'WHERE TransferID=:TransferID'
      ''
      '')
    object quDetilTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
      Size = 100
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      OnChange = quDetilQtyChange
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLuItemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID2'
      Lookup = True
    end
    object quDetilLTypeunit: TStringField
      FieldKind = fkLookup
      FieldName = 'LTypeunit'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'TypeUnit'
      KeyFields = 'ItemID2'
      Size = 100
      Lookup = True
    end
    object quDetilLUOM: TStringField
      FieldKind = fkLookup
      FieldName = 'LUOM'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'UOMID2'
      KeyFields = 'ItemID2'
      Size = 50
      Lookup = True
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quDetilnote: TStringField
      FieldName = 'note'
      Size = 100
    end
    object quDetilFgNum: TIntegerField
      FieldName = 'FgNum'
    end
    object quDetilSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilQtyK: TBCDField
      FieldName = 'QtyK'
      Precision = 18
    end
    object quDetilFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quDetilKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilLayout: TStringField
      FieldKind = fkLookup
      FieldName = 'Layout'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'Layout'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilLayoutID: TStringField
      FieldName = 'LayoutID'
      Size = 50
    end
    object quDetilItemID2: TStringField
      FieldName = 'ItemID2'
      Size = 100
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quGudang: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 560
    Top = 68
  end
  object dsGudang: TDataSource
    DataSet = quGudang
    Left = 588
    Top = 68
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsItem A')
    Left = 312
    Top = 296
    object quItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object quItemItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quItemProductID: TStringField
      FieldName = 'ProductID'
    end
    object quItemGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quItemUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quItemGarantee: TStringField
      FieldName = 'Garantee'
      FixedChar = True
      Size = 1
    end
    object quItemCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quItemUserPrice: TBCDField
      FieldName = 'UserPrice'
      Precision = 18
    end
    object quItemDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      Precision = 18
    end
    object quItemUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quItemUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quItemJangkaGarantee: TBCDField
      FieldName = 'JangkaGarantee'
      Precision = 18
    end
    object quItemMinimumStok: TBCDField
      FieldName = 'MinimumStok'
      Precision = 18
    end
    object quItemCtk: TStringField
      FieldName = 'Ctk'
      FixedChar = True
      Size = 1
    end
    object quItemKomisi: TBCDField
      FieldName = 'Komisi'
      Precision = 18
    end
    object quItemFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quItemNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object quItemJenis: TStringField
      FieldName = 'Jenis'
      Size = 1
    end
    object quItemTipe: TStringField
      FieldName = 'Tipe'
    end
    object quItemLokasi: TStringField
      FieldName = 'Lokasi'
      Size = 50
    end
    object quItemUOMID2: TStringField
      FieldName = 'UOMID2'
    end
    object quItemKonversi: TBCDField
      FieldName = 'Konversi'
      Precision = 18
    end
    object quItemItemName2: TStringField
      FieldName = 'ItemName2'
      Size = 200
    end
    object quItemSementara: TStringField
      FieldName = 'Sementara'
      Size = 500
    end
    object quItemFgUOMID: TStringField
      FieldName = 'FgUOMID'
    end
    object quItemtypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quItemmerk: TStringField
      FieldName = 'merk'
      Size = 50
    end
    object quItemLayout: TStringField
      FieldName = 'Layout'
      Size = 50
    end
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'TransferID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Itemid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INTrTransferItemSN'
      'WHERE TransferID=:TransferID'
      'AND ItemID=:Itemid'
      '')
    Left = 780
    Top = 332
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
    object quSNTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNWareHouseSrc: TStringField
      FieldName = 'WareHouseSrc'
      Size = 50
    end
    object quSNWareHouseDest: TStringField
      FieldName = 'WareHouseDest'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNExpDate: TDateTimeField
      FieldName = 'ExpDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsDetilStateChange
    Left = 808
    Top = 332
  end
  object quCetak: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 52
  end
end
