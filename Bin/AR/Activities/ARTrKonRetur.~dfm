inherited fmARTrKonRetur: TfmARTrKonRetur
  Left = 333
  Top = 286
  Caption = 'Retur Penjualan'
  ClientHeight = 463
  ClientWidth = 1365
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 414
    inherited pa3: TdxContainer
      Height = 235
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 451
    Width = 1365
  end
  inherited pa2: TdxContainer
    Height = 414
  end
  inherited pcMain: TdxPageControl
    Width = 1172
    Height = 414
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Filter.Criteria = {00000000}
        object dbgListKonReturID: TdxDBGridMaskColumn
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonReturID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListNote: TdxDBGridMemoColumn
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
        Width = 1172
        Height = 391
        inherited ts0201: TdxTabSheet
          object Label2: TLabel [0]
            Left = 43
            Top = 41
            Width = 53
            Height = 17
            Alignment = taRightJustify
            Caption = 'Tanggal :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel [1]
            Left = 58
            Top = 17
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
          object Label3: TLabel [2]
            Left = 29
            Top = 65
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
          object Label5: TLabel [3]
            Left = 21
            Top = 89
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
          object DBText3: TDBText [4]
            Left = 267
            Top = 63
            Width = 54
            Height = 17
            AutoSize = True
            DataField = 'LCustName'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          inherited bbSave: TdxButton
            Left = 595
            Top = 83
            Width = 110
            Font.Charset = ANSI_CHARSET
            Font.Height = -15
            Font.Name = 'Times New Roman'
            ParentFont = False
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 706
            Top = 83
            Width = 110
            Font.Charset = ANSI_CHARSET
            Font.Height = -15
            Font.Name = 'Times New Roman'
            ParentFont = False
            Caption = '&Batal (Esc)'
            TabStop = False
          end
          object txtKonReturID: TdxDBEdit
            Left = 101
            Top = 11
            Width = 207
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'KonReturID'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtTransDate: TdxDBDateEdit
            Left = 101
            Top = 35
            Width = 160
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'TransDate'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object txtCustID: TdxDBButtonEdit
            Left = 101
            Top = 59
            Width = 160
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'CustID'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            OnButtonClick = txtCustIDButtonClick
            ExistButtons = True
          end
          object dxDBEdit2: TdxDBEdit
            Left = 101
            Top = 83
            Width = 460
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyPress = txtKonReturIDKeyPress
            DataField = 'Note'
            DataSource = dsMain
            StyleController = SCEdit
          end
          object dxDBGrid1: TdxDBGrid
            Left = 2
            Top = 115
            Width = 804
            Height = 243
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Detail Barang yang di retur'
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
            TabOrder = 6
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
            ShowBands = True
            object dxDBGrid1ItemID: TdxDBGridButtonColumn
              Caption = 'Kode Barang'
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ItemID'
              Buttons = <
                item
                  Default = True
                end>
              ClickKey = 113
              OnButtonClick = dxDBGrid1ItemIDButtonClick
            end
            object dxDBGrid1ItemName: TdxDBGridColumn
              Caption = 'Nama Barang'
              Width = 259
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LItemName'
            end
            object dxDBGrid1Konsinyasi: TdxDBGridButtonColumn
              Caption = 'Nota DO'
              Width = 149
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KonTransBrgId'
              Buttons = <
                item
                  Default = True
                end>
              ClickKey = 113
              OnButtonClick = dxDBGrid1KonsinyasiButtonClick
            end
            object dxDBGrid1Lokasi: TdxDBGridButtonColumn
              Caption = 'Gudang'
              Width = 89
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WareHouseID'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid1LokasiButtonClick
            end
            object dxDBGrid1Qty: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Qty'
            end
            object dxDBGrid1Price: TdxDBGridColumn
              Caption = 'Harga'
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
            end
          end
          object TmbBrg: TdxButton
            Tag = 1111
            Left = 5
            Top = 361
            Width = 91
            Height = 26
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
            TabOrder = 7
            TabStop = False
          end
          object KrgBrg: TdxButton
            Tag = 2222
            Left = 97
            Top = 361
            Width = 92
            Height = 26
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
            TabOrder = 8
            TabStop = False
          end
          object BtlBrg: TdxButton
            Tag = 4444
            Left = 283
            Top = 361
            Width = 92
            Height = 26
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
            TabOrder = 9
            TabStop = False
          end
          object bbSimpanDetil: TdxButton
            Tag = 4444
            Left = 190
            Top = 361
            Width = 92
            Height = 26
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
            TabOrder = 10
            TabStop = False
          end
          object GroupBox1: TGroupBox
            Left = 864
            Top = 3
            Width = 286
            Height = 64
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            object Label21: TLabel
              Left = 24
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
              Top = 15
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
              Left = 15
              Top = 37
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
              Left = 67
              Top = 37
              Width = 198
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
          object dxButton1: TdxButton
            Tag = 4444
            Left = 376
            Top = 361
            Width = 121
            Height = 26
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            Action = ActPrint
            TabOrder = 12
            TabStop = False
          end
          object dbgBatch: TdxDBGrid
            Left = 806
            Top = 115
            Width = 364
            Height = 243
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
            TabOrder = 13
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
            object dbgBatchKonsinyasiID: TdxDBGridMaskColumn
              Visible = False
              Width = 283
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ReturnKonID'
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
            object dbgBatchJumlah: TdxDBGridColumn
              Caption = 'Jumlah'
              Width = 56
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
              FieldName = 'KonTransBrgId'
            end
          end
          object dxButton2: TdxButton
            Tag = 1111
            Left = 807
            Top = 360
            Width = 72
            Height = 27
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
            TabOrder = 14
            TabStop = False
          end
          object dxButton3: TdxButton
            Tag = 2222
            Left = 880
            Top = 360
            Width = 72
            Height = 27
            About = 'Design eXperience. '#169' 2002 M. Hoffmann'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Version = '1.0.2e'
            OnClick = dxButton3Click
            Caption = 'Hapus'
            TabOrder = 15
            TabStop = False
          end
          object dxButton5: TdxButton
            Tag = 4444
            Left = 953
            Top = 360
            Width = 72
            Height = 27
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
            TabOrder = 16
            TabStop = False
          end
          object dxButton4: TdxButton
            Tag = 4444
            Left = 1026
            Top = 360
            Width = 72
            Height = 27
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
            TabOrder = 17
            TabStop = False
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1365
    inherited sbLast: TSpeedButton
      Left = 1337
    end
    inherited sbNext: TSpeedButton
      Left = 1314
    end
    inherited sbPrev: TSpeedButton
      Left = 1291
    end
    inherited sbFirst: TSpeedButton
      Left = 1268
    end
    inherited sbPeriod: TSpeedButton
      Left = 1240
    end
    inherited BvlPeriod: TBevel
      Left = 994
    end
    inherited laPeriod: TLabel
      Left = 998
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturHd')
    object quMainKonReturID: TStringField
      FieldName = 'KonReturID'
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
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
      ShortCut = 114
    end
    inherited ActCancel: TAction
      Caption = 'BATAL (F4)'
      ShortCut = 27
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = ActPrintExecute
    end
  end
  inherited quDetil: TADOQuery
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonReturID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturDt WHERE KonReturID=:KonReturID')
    object quDetilKonReturID: TStringField
      FieldName = 'KonReturID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
    end
    object quDetilWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
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
      Precision = 18
    end
    object quDetilLItemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 30
      Lookup = True
    end
    object quDetilLWarehouseName: TStringField
      FieldKind = fkLookup
      FieldName = 'LWarehouseName'
      LookupDataSet = quLocation
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 50
      Lookup = True
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
    Left = 448
    Top = 8
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 536
    Top = 68
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 284
    Top = 296
  end
  object quLocation: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse order by Warehousename')
    Left = 312
    Top = 296
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'KonReturID'
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
        Size = 50
        Value = Null
      end
      item
        Name = 'kontransbrgid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonReturDtSN WHERE KonReturID=:KonReturID'
      'And ItemID=:ItemID and kontransBrgid=:kontransbrgid'
      '')
    Left = 1036
    Top = 268
    object quSNKonReturID: TStringField
      FieldName = 'KonReturID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quSNKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
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
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsDetilStateChange
    Left = 1064
    Top = 268
  end
end
