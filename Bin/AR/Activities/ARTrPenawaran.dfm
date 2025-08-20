inherited fmARTrPenawaran: TfmARTrPenawaran
  Left = 284
  Top = 49
  Caption = ''
  ClientHeight = 491
  ClientWidth = 845
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 442
    inherited pa3: TdxContainer
      Height = 263
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 479
    Width = 845
  end
  inherited pa2: TdxContainer
    Height = 442
  end
  inherited dxContainer7: TdxContainer
    Width = 652
    Height = 442
    inherited pcParent: TdxPageControl
      Width = 652
      Height = 442
      inherited ts01: TdxTabSheet
        object Shape5: TShape [0]
          Left = 343
          Top = 412
          Width = 303
          Height = 27
          Brush.Color = 13676331
        end
        object Shape3: TShape [1]
          Left = 343
          Top = 386
          Width = 303
          Height = 27
          Brush.Color = 13676331
        end
        object Shape4: TShape [2]
          Left = 343
          Top = 360
          Width = 303
          Height = 27
          Brush.Color = 13676331
        end
        object Shape6: TShape [3]
          Left = 343
          Top = 334
          Width = 303
          Height = 27
          Brush.Color = 13676331
        end
        object Label1: TLabel [4]
          Left = 26
          Top = 16
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quotation No :'
        end
        object Label2: TLabel [5]
          Left = 50
          Top = 36
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tanggal :'
        end
        object Label3: TLabel [6]
          Left = 38
          Top = 76
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pelanggan :'
        end
        object Label4: TLabel [7]
          Left = 63
          Top = 96
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sales :'
        end
        object Label10: TLabel [8]
          Left = 347
          Top = 339
          Width = 68
          Height = 19
          Alignment = taRightJustify
          Caption = 'SubTotal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel [9]
          Left = 347
          Top = 365
          Width = 69
          Height = 19
          Alignment = taRightJustify
          Caption = 'Discount'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText [10]
          Left = 497
          Top = 340
          Width = 140
          Height = 17
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel [11]
          Left = 4
          Top = 181
          Width = 106
          Height = 16
          Caption = 'Detil Penawaran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label15: TLabel [12]
          Left = 487
          Top = 339
          Width = 6
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [13]
          Left = 229
          Top = 96
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LSalesName'
          DataSource = dsMain
        end
        object Label8: TLabel [14]
          Left = 487
          Top = 365
          Width = 6
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel [15]
          Left = 487
          Top = 417
          Width = 6
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText [16]
          Left = 497
          Top = 418
          Width = 140
          Height = 17
          Alignment = taRightJustify
          DataField = 'GT'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel [17]
          Left = 59
          Top = 116
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valuta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText6: TDBText [18]
          Left = 230
          Top = 116
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'LValuta'
          DataSource = dsMain
        end
        object Label25: TLabel [19]
          Left = 347
          Top = 417
          Width = 88
          Height = 19
          Alignment = taRightJustify
          Caption = 'Grand Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel [20]
          Left = 487
          Top = 390
          Width = 6
          Height = 19
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText12: TDBText [21]
          Left = 497
          Top = 391
          Width = 140
          Height = 17
          Alignment = taRightJustify
          DataField = 'Tax'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel [22]
          Left = 342
          Top = 76
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = 'UP :'
        end
        object Label33: TLabel [23]
          Left = 64
          Top = 136
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email :'
        end
        object Label18: TLabel [24]
          Left = 347
          Top = 390
          Width = 34
          Height = 19
          Alignment = taRightJustify
          Caption = 'PPN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel [25]
          Left = 445
          Top = 390
          Width = 38
          Height = 19
          Alignment = taRightJustify
          Caption = '10 %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [26]
          Left = 336
          Top = 96
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telp :'
        end
        object Label32: TLabel [27]
          Left = 340
          Top = 116
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax :'
        end
        object Label6: TLabel [28]
          Left = 34
          Top = 156
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Keterangan :'
        end
        object Label7: TLabel [29]
          Left = 10
          Top = 56
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kode Pelanggan :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 498
          Top = 154
        end
        inherited bbCancel: TdxButton
          Left = 575
          Top = 154
        end
        object GroupBox2: TGroupBox
          Left = 420
          Top = 1
          Width = 221
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label21: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText8: TDBText
            Left = 53
            Top = 9
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 7
            Top = 30
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Waktu :'
          end
          object DBText9: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 100
          Top = 12
          Width = 164
          Color = clWhite
          TabOrder = 3
          TabStop = False
          DataField = 'GBUID'
          DataSource = dsMain
          ReadOnly = True
          StyleController = SCEdit
          StoredValues = 64
        end
        object dbgPenawaran: TdxDBGrid
          Left = 4
          Top = 200
          Width = 645
          Height = 131
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 4
          OnEnter = dbgPenawaranEnter
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgPenawaranGBUID: TdxDBGridMaskColumn
            Visible = False
            Width = 415
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GBUID'
          end
          object dbgPenawaranUrut: TdxDBGridColumn
            Caption = 'No'
            TabStop = False
            Width = 40
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Urut'
          end
          object dbgPenawaranProduk: TdxDBGridColumn
            Width = 298
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Produk'
          end
          object dbgPenawaranDescription: TdxDBGridBlobColumn
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Description'
            BlobKind = bkMemo
          end
          object dbgPenawaranQty: TdxDBGridColumn
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgPenawaranPrice: TdxDBGridColumn
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgPenawaranTotal: TdxDBGridColumn
            Caption = 'Total'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
          object dbgPenawaranUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgPenawaranUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 170
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 5
          Top = 334
          Width = 82
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 5
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 88
          Top = 334
          Width = 83
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 6
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 258
          Top = 334
          Width = 83
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 7
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 172
          Top = 334
          Width = 83
          Height = 19
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 8
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 4444
          Left = 249
          Top = 366
          Width = 92
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'CETAK'
          TabOrder = 9
          TabStop = False
        end
        object rbTerm: TRadioGroup
          Left = 10
          Top = 353
          Width = 138
          Height = 87
          Caption = '[ Term ]'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Cash on Delivery'
            '7 Hari'
            '14 Hari'
            '30 Hari')
          ParentCtl3D = False
          TabOrder = 10
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 100
          Top = 32
          Width = 89
          TabOrder = 11
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 100
          Top = 52
          Width = 124
          TabOrder = 12
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CustID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object dxDBEdit3: TdxDBEdit
          Left = 100
          Top = 72
          Width = 238
          TabOrder = 13
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Customer'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit7: TdxDBEdit
          Left = 367
          Top = 72
          Width = 150
          TabOrder = 14
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'UP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 100
          Top = 92
          Width = 124
          TabOrder = 15
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'SalesID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 367
          Top = 92
          Width = 150
          TabOrder = 16
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Phone'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 100
          Top = 112
          Width = 124
          TabOrder = 17
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit8: TdxDBEdit
          Left = 367
          Top = 112
          Width = 150
          TabOrder = 18
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Fax'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit9: TdxDBEdit
          Left = 100
          Top = 132
          Width = 382
          TabOrder = 19
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Email'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit5: TdxDBEdit
          Left = 100
          Top = 152
          Width = 382
          TabOrder = 20
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit4: TdxDBEdit
          Left = 497
          Top = 363
          Width = 140
          TabOrder = 21
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Disc'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBPajak: TdxDBImageEdit
          Left = 390
          Top = 389
          Width = 49
          TabOrder = 22
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'FgTax'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object rgKoma: TRadioGroup
          Left = 151
          Top = 393
          Width = 142
          Height = 47
          Caption = '[ Angka belakang koma ]'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Pakai'
            'Tidak ')
          ParentCtl3D = False
          TabOrder = 23
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 845
    inherited sbLast: TSpeedButton
      Left = 808
    end
    inherited sbNext: TSpeedButton
      Left = 781
    end
    inherited sbPrev: TSpeedButton
      Left = 754
    end
    inherited sbFirst: TSpeedButton
      Left = 727
    end
    inherited sbPeriod: TSpeedButton
      Left = 701
    end
    inherited BvlPeriod: TBevel
      Left = 455
    end
    inherited laPeriod: TLabel
      Left = 459
    end
    object Label9: TLabel
      Left = 96
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Label9'
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrPenawaranHD')
    object quMainGBUID: TStringField
      FieldName = 'GBUID'
      Size = 50
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainCustomer: TStringField
      FieldName = 'Customer'
      Size = 200
    end
    object quMainUP: TStringField
      FieldName = 'UP'
      Size = 200
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainTTLGBU: TBCDField
      FieldName = 'TTLGBU'
      Precision = 18
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainLSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      Size = 100
      Lookup = True
    end
    object quMainLValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'LValuta'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Lookup = True
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainFlag: TStringField
      FieldName = 'Flag'
      Size = 1
    end
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 4
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
      ShortCut = 114
    end
    inherited ActCancel: TAction
      Caption = 'BATAL(F4)'
      ShortCut = 115
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'GBUID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPenawaranDt'
      'WHERE GBUID=:GBUID')
    object quDetilGBUID: TStringField
      FieldName = 'GBUID'
      Size = 50
    end
    object quDetilProduk: TStringField
      FieldName = 'Produk'
      Size = 100
    end
    object quDetilDescription: TStringField
      FieldName = 'Description'
      Size = 1000
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
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
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilUrut: TIntegerField
      FieldName = 'Urut'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select SalesID, SalesName From ARMsSales')
    Left = 396
    Top = 116
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
    Left = 364
    Top = 120
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 524
    Top = 402
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'GBUID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.SubTotal,CASE WHEN K.FgTax='#39'T'#39' THEN K.SubTotal-K.Disc E' +
        'LSE (K.SubTotal-K.Disc)+(K.SubTotal-K.Disc)*0.1 END as GT,'
      
        'CASE WHEN K.FgTax='#39'T'#39' THEN 0 ELSE (K.SubTotal-K.Disc)*0.1 END as' +
        ' Tax FROM ('
      
        'SELECT ISNULL(SUM(A.Qty*A.Price),0) as SubTotal,B.FgTax,B.GBUID,' +
        'B.Disc'
      
        'FROM ARTrPenawaranDt A INNER JOIN ARTrPenawaranHd B ON A.GBUID=B' +
        '.GBUID'
      'GROUP BY B.FgTax,B.GBUID,B.Disc) as K'
      'WHERE K.GBUID=:GBUID')
    Left = 496
    Top = 402
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quTotalTax: TBCDField
      FieldName = 'Tax'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
  end
end
