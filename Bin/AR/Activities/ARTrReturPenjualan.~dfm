inherited fmARTrReturPenjualan: TfmARTrReturPenjualan
  Left = 25
  Top = 99
  Caption = 'Retur Penjualan'
  ClientWidth = 1321
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      object bbReturn: TdxButton
        Tag = 5555
        Left = -33
        Top = -166
        Width = 97
        Height = 88
        Cursor = crHandPoint
        Hint = 'Find Record'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        OnClick = bbReturnClick
        Caption = ' Pengganti        &Retur'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        Layout = blGlyphBottom
        TabOrder = 0
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Width = 1321
  end
  inherited pcMain: TdxPageControl
    Width = 1128
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 776
        Height = 497
        Filter.Criteria = {00000000}
        object dbgListReturID: TdxDBGridMaskColumn
          Caption = 'Nota'
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tgl Retur'
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListColumn7: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 196
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LCustName'
        end
        object dbgListNote: TdxDBGridMemoColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 1128
        inherited ts0201: TdxTabSheet
          object Shape10: TShape [0]
            Left = 464
            Top = 428
            Width = 293
            Height = 27
            Brush.Color = 15259016
          end
          object Label2: TLabel [1]
            Left = 25
            Top = 44
            Width = 90
            Height = 17
            Alignment = taRightJustify
            Caption = 'Tanggal Retur :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel [2]
            Left = 79
            Top = 20
            Width = 36
            Height = 17
            Alignment = taRightJustify
            Caption = 'Nota :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [3]
            Left = 48
            Top = 68
            Width = 68
            Height = 17
            Alignment = taRightJustify
            Caption = 'Pelanggan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel [4]
            Left = 40
            Top = 93
            Width = 76
            Height = 17
            Alignment = taRightJustify
            Caption = 'Keterangan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel [5]
            Left = 3
            Top = 118
            Width = 141
            Height = 17
            Caption = 'Detil Retur Penjualan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object DBText3: TDBText [6]
            Left = 271
            Top = 69
            Width = 494
            Height = 17
            DataField = 'LCustName'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel [7]
            Left = 603
            Top = 632
            Width = 186
            Height = 20
            Caption = 'Serial Number per Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object lRet: TLabel [8]
            Left = 228
            Top = 730
            Width = 269
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'R'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText [9]
            Left = 560
            Top = 431
            Width = 181
            Height = 20
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = dsTotal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel [10]
            Left = 474
            Top = 431
            Width = 74
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          inherited bbSave: TdxButton
            Left = 878
            Top = 84
            Width = 99
            Font.Charset = ANSI_CHARSET
            Font.Height = -15
            Font.Name = 'Times New Roman'
            ParentFont = False
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 978
            Top = 84
            Width = 99
            Font.Charset = ANSI_CHARSET
            Font.Height = -15
            Font.Name = 'Times New Roman'
            ParentFont = False
            Caption = 'Batal (Esc)'
            TabStop = False
          end
          object GroupBox2: TGroupBox
            Left = 816
            Top = 4
            Width = 261
            Height = 63
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            object Label10: TLabel
              Left = 28
              Top = 14
              Width = 36
              Height = 17
              Alignment = taRightJustify
              Caption = 'User :'
            end
            object DBText2: TDBText
              Left = 73
              Top = 14
              Width = 132
              Height = 17
              DataField = 'UpdUser'
              DataSource = dsMain
            end
            object Label11: TLabel
              Left = 20
              Top = 36
              Width = 45
              Height = 17
              Alignment = taRightJustify
              Caption = 'Waktu :'
            end
            object DBText1: TDBText
              Left = 74
              Top = 35
              Width = 175
              Height = 17
              DataField = 'UpdDate'
              DataSource = dsMain
            end
          end
          object txtReturID: TdxDBEdit
            Left = 120
            Top = 16
            Width = 173
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = txtReturIDKeyPress
            DataField = 'ReturnID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 120
            Top = 40
            Width = 89
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = txtReturIDKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 120
            Top = 64
            Width = 149
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = txtReturIDKeyPress
            DataField = 'CustID'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = txtCustIDButtonClick
            ExistButtons = True
          end
          object dxDBEdit1: TdxDBEdit
            Left = 120
            Top = 88
            Width = 497
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = txtReturIDKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBGrid1: TdxDBGrid
            Left = 2
            Top = 138
            Width = 760
            Height = 288
            Bands = <
              item
              end>
            DefaultLayout = True
            KeyField = 'PenjualanDetilID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = dxDBGrid1Enter
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
            LookAndFeel = lfUltraFlat
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            object dxDBGrid1ItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1ItemIDButtonClick
            end
            object dxDBGrid1ItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Width = 242
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dxDBGrid1SaleId: TdxDBGridButtonColumn
              Caption = 'Nota Jual'
              Width = 144
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SaleId'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1SaleIdButtonClick
            end
            object dxDBGrid1WareHouseID: TdxDBGridColumn
              Caption = 'Gudang'
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseId'
            end
            object dxDBGrid1CurrId: TdxDBGridColumn
              Caption = 'Valuta'
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LCurrId'
            end
            object dxDBGrid1UserPrice: TdxDBGridButtonColumn
              Caption = 'Harga Jual'
              Width = 96
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1UserPriceButtonClick
            end
            object dxDBGrid1UpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 28
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid1Qty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dxDBGrid1UpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 30
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object dxButton3: TdxButton
            Left = 346
            Top = 427
            Width = 116
            Height = 30
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'CETAK'
            TabOrder = 9
          end
          object TmbBrg: TdxButton
            Tag = 1111
            Left = 2
            Top = 427
            Width = 85
            Height = 30
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = TmbBrgClick
            Caption = '(+) Barang'
            TabOrder = 10
          end
          object KrgBrg: TdxButton
            Tag = 2222
            Left = 88
            Top = 427
            Width = 85
            Height = 30
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = KrgBrgClick
            Caption = '(-) Barang'
            TabOrder = 11
          end
          object bbSimpanDetil: TdxButton
            Tag = 4444
            Left = 174
            Top = 427
            Width = 85
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
            TabOrder = 12
          end
          object BtlBrg: TdxButton
            Tag = 4444
            Left = 260
            Top = 427
            Width = 85
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
            TabOrder = 13
          end
          object dxDBGrid2: TdxDBGrid
            Left = 602
            Top = 690
            Width = 247
            Height = 166
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 8
            DataSource = dsSN
            Filter.Criteria = {00000000}
            HideFocusRect = True
            HideSelection = True
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid2ReturnID: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnID'
            end
            object dxDBGrid2SaleId: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SaleId'
            end
            object dxDBGrid2SNID: TdxDBGridButtonColumn
              Caption = 'Serial Number'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SNID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid2SNIDButtonClick
            end
            object dxDBGrid2ItemID: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
            end
            object dxDBGrid2Price: TdxDBGridCurrencyColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
              Nullable = False
            end
            object dxDBGrid2UpdDate: TdxDBGridDateColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid2UpdUser: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object dbgBatch: TdxDBGrid
            Left = 762
            Top = 138
            Width = 364
            Height = 287
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Tanggal Expired'
                Width = 363
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'TransID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            BandFont.Charset = ANSI_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -15
            BandFont.Name = 'Times New Roman'
            BandFont.Style = [fsBold]
            DataSource = dsLoot
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
              Width = 283
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnID'
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
            object dbgBatchColumn7: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dbgBatchExpDate: TdxDBGridDateColumn
              Caption = 'Tanggal Expired'
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ExpDate'
            end
            object dbgBatchColumn8: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SaleId'
            end
          end
          object dxButton2: TdxButton
            Tag = 1111
            Left = 761
            Top = 427
            Width = 70
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
            TabOrder = 15
            TabStop = False
          end
          object dxButton1: TdxButton
            Tag = 2222
            Left = 832
            Top = 427
            Width = 70
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
            TabOrder = 16
            TabStop = False
          end
          object dxButton5: TdxButton
            Tag = 4444
            Left = 903
            Top = 427
            Width = 70
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
            TabOrder = 17
            TabStop = False
          end
          object dxButton4: TdxButton
            Tag = 4444
            Left = 974
            Top = 427
            Width = 70
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
            TabOrder = 18
            TabStop = False
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1321
    inherited sbLast: TSpeedButton
      Left = 1293
    end
    inherited sbNext: TSpeedButton
      Left = 1270
    end
    inherited sbPrev: TSpeedButton
      Left = 1247
    end
    inherited sbFirst: TSpeedButton
      Left = 1224
    end
    inherited sbPeriod: TSpeedButton
      Left = 1196
    end
    inherited BvlPeriod: TBevel
      Left = 950
    end
    inherited laPeriod: TLabel
      Left = 954
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrReturPenjualanHd')
    object quMainReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainFlagRetur: TStringField
      FieldName = 'FlagRetur'
      Size = 5
    end
    object quMainLCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 50
      Lookup = True
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainTTLRetur: TBCDField
      FieldName = 'TTLRetur'
      Precision = 18
    end
    object quMainTTLPPN: TBCDField
      FieldName = 'TTLPPN'
      Precision = 18
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
      Size = 50
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
      Size = 50
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
  inherited ActionList: TActionList
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 115
    end
    object ActPrint: TAction
      Caption = 'ActPrint'
      ShortCut = 120
      OnExecute = dxButton3Click
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
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
      'SELECT * FROM ARTrReturPenjualanDt '
      'WHERE ReturnID=:ReturnID')
    object quDetilReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quDetilSaleId: TStringField
      FieldName = 'SaleId'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quDetilWareHouseId: TStringField
      FieldName = 'WareHouseId'
      Size = 50
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilLCurrId: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrId'
      LookupDataSet = quSale
      LookupKeyFields = 'KonInvPelID'
      LookupResultField = 'CurrID'
      KeyFields = 'SaleId'
      Size = 30
      Lookup = True
    end
    object quDetilLWareHouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouseName'
      LookupDataSet = quWareHouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseId'
      Size = 50
      Lookup = True
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsItem')
    Left = 408
    Top = 268
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
        Name = 'ReturnId'
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
        Size = 50
        Value = Null
      end
      item
        Name = 'SaleId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'WarehouseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrReturPenjualanDtSN '
      'WHERE ReturnId=:ReturnId AND ItemId=:ItemId AND SaleId=:SaleId'
      'AND Price=:Price AND WarehouseID=:WarehouseID')
    Left = 798
    Top = 710
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quSNReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quSNSaleId: TStringField
      FieldName = 'SaleId'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
      Size = 0
    end
    object quSNWareHouseId: TStringField
      FieldName = 'WareHouseId'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 826
    Top = 710
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 740
    Top = 84
  end
  object quSale: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelHD')
    Left = 768
    Top = 84
  end
  object quWareHouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse ')
    Left = 432
    Top = 268
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <
      item
        Name = 'returnId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ISNULL(TTLRetur,0) as Total,'
      'ISNULL(TTLPPN,0) as PPN FROM ARTrReturPenjualanHD'
      'Where returnId=:returnId')
    Left = 644
    Top = 244
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
    Left = 672
    Top = 244
  end
  object quLoot: TADOQuery
    Connection = dmMain.dbConn
    AfterPost = quLootAfterPost
    BeforeDelete = quLootBeforeDelete
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
        Name = 'ItemiD'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'saleid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'warehouseid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrReturPenjualanDtSN'
      'WHERE ReturnID=:ReturnID And ItemID=:ItemiD and saleid=:saleid'
      'And Price=:Price and warehouseid=:warehouseid')
    Left = 1100
    Top = 284
    object quLootSNID: TStringField
      FieldName = 'SNID'
      Size = 30
    end
    object quLootReturnID: TStringField
      FieldName = 'ReturnID'
      Size = 50
    end
    object quLootSaleId: TStringField
      FieldName = 'SaleId'
      Size = 50
    end
    object quLootItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quLootPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quLootWareHouseId: TStringField
      FieldName = 'WareHouseId'
      Size = 50
    end
    object quLootUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quLootUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quLootModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quLootPurchaseID: TStringField
      FieldName = 'PurchaseID'
    end
    object quLootFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
    object quLootQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quLootExpDate: TDateTimeField
      FieldName = 'ExpDate'
    end
    object quLootNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
  end
  object dsLoot: TDataSource
    DataSet = quLoot
    OnStateChange = dsDetilStateChange
    Left = 1128
    Top = 284
  end
end
