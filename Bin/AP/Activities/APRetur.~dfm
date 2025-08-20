inherited fmAPRetur: TfmAPRetur
  Left = 191
  Top = 392
  Caption = 'Retur Pembelian'
  ClientHeight = 484
  ClientWidth = 1478
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 435
    inherited pa3: TdxContainer
      Height = 256
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
    Top = 472
    Width = 1478
  end
  inherited pa2: TdxContainer
    Height = 435
  end
  inherited pcMain: TdxPageControl
    Width = 1285
    Height = 435
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 815
        Height = 472
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPaymentID: TdxDBGridMaskColumn
          Caption = 'Nota Retur'
          DisableEditor = True
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1285
        Height = 121
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14467152
        TabOrder = 0
        DesignSize = (
          1285
          121)
        object Label1: TLabel
          Left = 37
          Top = 18
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Caption = 'Nota Retur :'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 57
          Top = 42
          Width = 53
          Height = 17
          Alignment = taRightJustify
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
          Left = 56
          Top = 66
          Width = 54
          Height = 17
          Alignment = taRightJustify
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
          Left = 248
          Top = 64
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'LuSupplier'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 34
          Top = 90
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object bbSave: TdxButton
          Tag = 3333
          Left = 661
          Top = 24
          Width = 97
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
          TabOrder = 0
          TabStop = False
        end
        object bbCancel: TdxButton
          Tag = 4444
          Left = 759
          Top = 24
          Width = 97
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
          TabOrder = 1
          TabStop = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 120
          Top = 12
          Width = 188
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'ReturnID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 120
          Top = 36
          Width = 122
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 120
          Top = 60
          Width = 122
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
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
        object dxDBEdit2: TdxDBEdit
          Left = 120
          Top = 84
          Width = 497
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox1: TGroupBox
          Left = 879
          Top = 10
          Width = 298
          Height = 56
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          object Label21: TLabel
            Left = 23
            Top = 11
            Width = 36
            Height = 17
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 68
            Top = 12
            Width = 144
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 15
            Top = 32
            Width = 45
            Height = 17
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 68
            Top = 33
            Width = 144
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 121
        Width = 929
        Height = 256
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detil Retur Pembelian'
            Width = 985
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ReturnID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = dbgEnter
        AutoExpandOnSearch = False
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
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 103
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
          Width = 229
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgPurchaseID: TdxDBGridButtonColumn
          Caption = 'Nota Invoice'
          Width = 146
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPurchaseIDButtonClick
        end
        object dbgLocation: TdxDBGridButtonColumn
          Caption = 'Gudang'
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WareHouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgLocationButtonClick
        end
        object dbgValuta: TdxDBGridColumn
          Caption = 'Valuta'
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CValuta'
        end
        object dbgPrice: TdxDBGridButtonColumn
          Caption = 'Harga'
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgPriceButtonClick
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgColumn8: TdxDBGridBlobColumn
          Caption = 'Keterangan'
          Visible = False
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
          BlobKind = bkMemo
        end
        object dbgColumn9: TdxDBGridColumn
          Caption = 'PPN'
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LFgtax'
        end
        object dbgColumn10: TdxDBGridColumn
          Caption = 'Total'
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATotal'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 377
        Width = 1285
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        Color = 14467152
        TabOrder = 2
        object Shape10: TShape
          Left = 524
          Top = 5
          Width = 403
          Height = 27
          Brush.Color = 15259016
        end
        object DBText4: TDBText
          Left = 830
          Top = 8
          Width = 72
          Height = 22
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 530
          Top = 8
          Width = 74
          Height = 22
          Alignment = taRightJustify
          Caption = 'TOTAL :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object dxButton3: TdxButton
          Left = 292
          Top = 59
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
          OnClick = dxButton3Click
          Caption = 'Cetak (F9)'
          TabOrder = 0
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 2
          Top = 3
          Width = 95
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
          TabOrder = 1
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 98
          Top = 3
          Width = 95
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
          TabOrder = 2
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 194
          Top = 3
          Width = 95
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
          TabOrder = 3
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 290
          Top = 3
          Width = 95
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
          TabOrder = 4
          TabStop = False
        end
        object dxButton2: TdxButton
          Tag = 1111
          Left = 929
          Top = 3
          Width = 72
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = 'Tambah'
          TabOrder = 5
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 2222
          Left = 1002
          Top = 3
          Width = 72
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
          Caption = 'Hapus'
          TabOrder = 6
          TabStop = False
        end
        object dxButton5: TdxButton
          Tag = 4444
          Left = 1075
          Top = 3
          Width = 72
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton5Click
          Caption = 'Simpan'
          TabOrder = 7
          TabStop = False
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 1148
          Top = 3
          Width = 72
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton4Click
          Caption = 'Batal'
          TabOrder = 8
          TabStop = False
        end
      end
      object dbgBatch: TdxDBGrid
        Left = 929
        Top = 120
        Width = 354
        Height = 257
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Tanggal Expired'
            Width = 221
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TransID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -15
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsSn
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
        object dbgBatchKonsinyasiID: TdxDBGridMaskColumn
          Visible = False
          Width = 295
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
        end
        object dbgBatchItemID: TdxDBGridMaskColumn
          Visible = False
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgBatchSNID: TdxDBGridButtonColumn
          Caption = 'Kode Produksi'
          Width = 163
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
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgBatchUpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dbgBatchJumlah: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgBatchExpDate: TdxDBGridDateColumn
          Caption = 'Exp Date'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ExpDate'
        end
        object dbgBatchColumn8: TdxDBGridMaskColumn
          Visible = False
          Width = 369
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1478
    inherited sbLast: TSpeedButton
      Left = 1450
    end
    inherited sbNext: TSpeedButton
      Left = 1427
    end
    inherited sbPrev: TSpeedButton
      Left = 1404
    end
    inherited sbFirst: TSpeedButton
      Left = 1381
    end
    inherited sbPeriod: TSpeedButton
      Left = 1353
    end
    inherited BvlPeriod: TBevel
      Left = 1107
    end
    inherited laPeriod: TLabel
      Left = 1111
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrReturnHd')
    Left = 224
    object quMainReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
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
    object quMainFlagRetur: TStringField
      FieldName = 'FlagRetur'
      FixedChar = True
      Size = 10
    end
    object quMainLuSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSupplier'
      LookupDataSet = quSup
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 80
      Lookup = True
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
      Size = 50
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
      Size = 50
    end
    object quMainTTLRetur: TBCDField
      FieldName = 'TTLRetur'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainTTLPPN: TBCDField
      FieldName = 'TTLPPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainRekeningP: TStringField
      FieldName = 'RekeningP'
      Size = 50
    end
    object quMainTTLDiskon: TBCDField
      FieldName = 'TTLDiskon'
      Precision = 18
    end
    object quMainRekeningDisc: TStringField
      FieldName = 'RekeningDisc'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'ReturnID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.* '
      'from APTrReturnDt A  '
      ' WHERE ReturnID=:ReturnID')
    object quDetilReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
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
    object quDetilLuItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quDetilLWareHouse: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouse'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
    end
    object quDetilCValuta: TStringField
      FieldKind = fkCalculated
      FieldName = 'CValuta'
      Size = 50
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilCRate: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CRate'
      Calculated = True
    end
    object quDetilnumAll: TAutoIncField
      FieldName = 'numAll'
      ReadOnly = True
    end
    object quDetilLFgtax: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFgtax'
      Size = 10
      Calculated = True
    end
    object quDetilATotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ATotal'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SuppID, SuppName,'#39'Supplier Pembelian'#39' as Status, Address ' +
        'FROM APMsSupplier '
      'UNION ALL'
      
        'SELECT CustID, CustName,'#39'Supplier Konsinyasi'#39' as Status, Address' +
        ' FROM ARMsCustomer'
      'ORDER BY SuppID,SuppName')
    Left = 496
    Top = 144
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 312
    Top = 268
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 272
    Top = 36
  end
  object quPurchase: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <
      item
        Name = 'SuppID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select purchaseID from APTrPurchaseHd where SuppID = :SuppID')
    Left = 312
    Top = 296
  end
  object quPurchaseDt: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from APTrPurchaseDt')
    Left = 576
    Top = 240
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse ')
    Left = 468
    Top = 308
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <
      item
        Name = 'ReturnId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select ISNULL(TTLRetur,0) as Total ,ISNULL(TTLPPN,0) as PPN FROM' +
        ' APTrReturnHD'
      'Where ReturnID=:ReturnId')
    Left = 620
    Top = 340
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quTotalPPN: TBCDField
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 648
    Top = 340
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'ReturnID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'ItemId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'purchaseid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.* '
      'from APTrReturnSN A  '
      ' WHERE ReturnID=:ReturnID And ItemID=:ItemId'
      'and purchaseid=:purchaseid'
      '')
    Left = 1260
    Top = 260
    object quSNSNID: TStringField
      FieldName = 'SNID'
      OnChange = quSNSNIDChange
      Size = 30
    end
    object quSNReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
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
    object quSNQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNExpDate: TDateTimeField
      FieldName = 'ExpDate'
    end
    object quSNNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
  end
  object dsSn: TDataSource
    DataSet = quSN
    OnStateChange = dsDetilStateChange
    Left = 1288
    Top = 260
  end
end
