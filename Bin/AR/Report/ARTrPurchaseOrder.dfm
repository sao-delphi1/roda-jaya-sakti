inherited fmARTrPurchaseOrder: TfmARTrPurchaseOrder
  Left = 148
  Top = 144
  Caption = 'Transaksi Sales Order'
  ClientHeight = 501
  ClientWidth = 1099
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 1099
    inherited sbLast: TSpeedButton
      Left = 1062
    end
    inherited sbNext: TSpeedButton
      Left = 1035
    end
    inherited sbPrev: TSpeedButton
      Left = 1008
    end
    inherited sbFirst: TSpeedButton
      Left = 981
    end
    inherited sbPeriod: TSpeedButton
      Left = 955
    end
    inherited BvlPeriod: TBevel
      Left = 709
    end
    inherited laPeriod: TLabel
      Left = 713
    end
  end
  inherited paLeft: TdxContainer
    Height = 452
    inherited pa3: TdxContainer
      Height = 273
      object bbPOList: TdxButton
        Tag = 4444
        Left = -335
        Top = -208
        Width = 90
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbPOListClick
        Caption = 'Daftar PO'
        TabOrder = 0
        TabStop = False
      end
      object RbCetak: TRadioGroup
        Left = -335
        Top = -208
        Width = 90
        Height = 53
        Caption = '[ Cetak ]'
        ItemIndex = 0
        Items.Strings = (
          'Preview'
          'Cetak')
        TabOrder = 1
        Visible = False
      end
      object RbPO: TRadioGroup
        Left = -335
        Top = -208
        Width = 90
        Height = 66
        Caption = '[ Daftar / List ]'
        ItemIndex = 2
        Items.Strings = (
          'Per PO'
          'Semua PO'
          'Rekap PO')
        TabOrder = 2
        Visible = False
      end
      object RbTanggal: TRadioGroup
        Left = -335
        Top = -208
        Width = 135
        Height = 38
        Caption = '[ Tanggal ]'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Tgl PO'
          'Tgl Kirim')
        TabOrder = 3
        Visible = False
      end
      object dtDate: TdxDateEdit
        Left = -335
        Top = -208
        Width = 88
        TabOrder = 4
        Visible = False
        Date = -700000
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 489
    Width = 1099
  end
  inherited pa2: TdxContainer
    Height = 452
  end
  inherited dxContainer7: TdxContainer
    Width = 906
    Height = 452
    inherited pcParent: TdxPageControl
      Width = 906
      Height = 452
      inherited ts01: TdxTabSheet
        object DBText1: TDBText [0]
          Left = 202
          Top = 59
          Width = 148
          Height = 13
          DataField = 'LuCustName'
          DataSource = dsMain
        end
        object Label1: TLabel [1]
          Left = 26
          Top = 19
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nota PO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [2]
          Left = 28
          Top = 39
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tanggal :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [3]
          Left = 16
          Top = 59
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pelanggan :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [4]
          Left = 12
          Top = 100
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Transparent = True
        end
        object Label13: TLabel [5]
          Left = 5
          Top = 121
          Width = 148
          Height = 20
          Caption = 'Detail Sales Order'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Shape6: TShape [6]
          Left = 549
          Top = 357
          Width = 339
          Height = 22
          Brush.Color = 15259016
        end
        object Label3: TLabel [7]
          Left = 583
          Top = 359
          Width = 135
          Height = 19
          Alignment = taRightJustify
          Caption = 'Sub Total SO : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText [8]
          Left = 760
          Top = 359
          Width = 123
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel [9]
          Left = 52
          Top = 587
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lokasi :'
          Transparent = True
        end
        object Label7: TLabel [10]
          Left = 219
          Top = 587
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kota :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [11]
          Left = 376
          Top = 589
          Width = 148
          Height = 13
          DataField = 'LuCityDesc'
          DataSource = dsMain
        end
        object Label8: TLabel [12]
          Left = 24
          Top = 567
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'No PR/BPO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape3: TShape [13]
          Left = 549
          Top = 400
          Width = 339
          Height = 23
          Brush.Color = 15259016
        end
        object Label9: TLabel [14]
          Left = 596
          Top = 402
          Width = 122
          Height = 19
          Alignment = taRightJustify
          Caption = 'PPN              : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText6: TDBText [15]
          Left = 760
          Top = 402
          Width = 123
          Height = 16
          Alignment = taRightJustify
          DataField = 'Pajak'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape [16]
          Left = 549
          Top = 422
          Width = 339
          Height = 22
          Brush.Color = 15259016
        end
        object Label12: TLabel [17]
          Left = 603
          Top = 424
          Width = 115
          Height = 19
          Alignment = taRightJustify
          Caption = 'TOTAL SO : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText7: TDBText [18]
          Left = 760
          Top = 424
          Width = 123
          Height = 16
          Alignment = taRightJustify
          DataField = 'GrandTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel [19]
          Left = 198
          Top = 39
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tgl Kirim :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText8: TDBText [20]
          Left = 202
          Top = 79
          Width = 148
          Height = 13
          DataField = 'LProduct'
          DataSource = dsMain
        end
        object Label15: TLabel [21]
          Left = 30
          Top = 79
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Product :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape5: TShape [22]
          Left = 549
          Top = 378
          Width = 339
          Height = 23
          Brush.Color = 15259016
        end
        object Label16: TLabel [23]
          Left = 628
          Top = 380
          Width = 90
          Height = 19
          Alignment = taRightJustify
          Caption = 'Diskon : Rp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 671
          Top = 103
          Height = 24
          Caption = '&Simpan (F3)'
        end
        inherited bbCancel: TdxButton
          Left = 748
          Top = 103
          Height = 24
          Caption = '&Batal (F4)'
        end
        object dbg: TdxDBGrid
          Left = 3
          Top = 142
          Width = 902
          Height = 212
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'List Item(s)'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KonTransBrgID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 2
          OnEnter = dbgEnter
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object dbgPOID: TdxDBGridMaskColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dbgItemID: TdxDBGridButtonColumn
            Caption = 'Kode Barang'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgItemIDButtonClick
          end
          object dbgLuItemName: TdxDBGridColumn
            Caption = 'Nama Barang'
            ReadOnly = True
            TabStop = False
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LuItemName'
          end
          object dbgPRID: TdxDBGridButtonColumn
            Caption = 'Nota PR'
            Visible = False
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgPRIDButtonClick
          end
          object dbgQty: TdxDBGridColumn
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgUOMID: TdxDBGridButtonColumn
            Caption = 'Satuan'
            Width = 47
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMIDButtonClick
          end
          object dbgDiscItem: TdxDBGridColumn
            Caption = 'Disc Item'
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DiscItem'
          end
          object dbgDisc: TdxDBGridColumn
            Caption = 'Disc 1'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc'
          end
          object dbgDisc2: TdxDBGridColumn
            Caption = 'Disc 2'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'disc2'
          end
          object dbgDisc3: TdxDBGridColumn
            Caption = 'Disc 3'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'disc3'
          end
          object dbgPrice: TdxDBGridColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgTotalItem: TdxDBGridColumn
            Caption = 'Total Item'
            MaxLength = 20
            ReadOnly = True
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LTotalItem'
          end
          object dbgCTotal: TdxDBGridColumn
            Caption = 'Total'
            ReadOnly = True
            TabStop = False
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 3
          Top = 357
          Width = 89
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 3
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 92
          Top = 357
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 4
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 182
          Top = 357
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 5
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 272
          Top = 357
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 6
          TabStop = False
        end
        object GroupBox2: TGroupBox
          Left = 667
          Top = 4
          Width = 220
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          object Label10: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText3: TDBText
            Left = 53
            Top = 9
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label11: TLabel
            Left = 7
            Top = 30
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Waktu :'
          end
          object DBText4: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object bbCetak: TdxButton
          Tag = 4444
          Left = 408
          Top = 357
          Width = 90
          Height = 44
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbCetakClick
          Caption = 'Cetak SO'
          TabOrder = 8
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 4444
          Left = 179
          Top = 493
          Width = 90
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
          Caption = 'Estimasi'
          TabOrder = 9
          TabStop = False
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 98
          Top = 563
          Width = 215
          TabOrder = 10
          DataField = 'PRID'
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
          Left = 98
          Top = 583
          Width = 117
          TabOrder = 11
          DataField = 'Lokasi'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 256
          Top = 583
          Width = 117
          TabOrder = 12
          DataField = 'CityID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxButton2: TdxButton
          Tag = 4444
          Left = 3
          Top = 493
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = 'Cari'
          TabOrder = 13
          TabStop = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 82
          Top = 15
          Width = 167
          TabOrder = 14
          OnKeyPress = dxDBEdit1KeyPress
          CharCase = ecUpperCase
          DataField = 'POID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 82
          Top = 35
          Width = 84
          TabOrder = 15
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 250
          Top = 35
          Width = 89
          TabOrder = 16
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TglKirim'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 82
          Top = 55
          Width = 117
          TabOrder = 17
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'CustID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit5: TdxDBButtonEdit
          Left = 82
          Top = 75
          Width = 117
          TabOrder = 18
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'ProductID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit5ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 82
          Top = 95
          Width = 449
          TabOrder = 19
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBPajak: TdxDBImageEdit
          Left = 634
          Top = 401
          Width = 52
          TabOrder = 20
          OnKeyPress = dxDBEdit1KeyPress
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
        object dxDBEdit3: TdxDBEdit
          Left = 250
          Top = 15
          Width = 167
          Enabled = False
          TabOrder = 21
          OnKeyPress = dxDBEdit1KeyPress
          CharCase = ecUpperCase
          DataField = 'LuAdaDO'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit4: TdxDBEdit
          Left = 728
          Top = 379
          Width = 157
          TabOrder = 22
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Disc'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quMainBeforeEdit
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrPurchaseOrderHD')
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainTTLPO: TBCDField
      FieldName = 'TTLPO'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLuCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 80
      Lookup = True
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quMainLokasi: TStringField
      FieldName = 'Lokasi'
      Size = 100
    end
    object quMainCityID: TStringField
      FieldName = 'CityID'
      Size = 5
    end
    object quMainLuCityDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCityDesc'
      LookupDataSet = quCity
      LookupKeyFields = 'CityID'
      LookupResultField = 'CityDesc'
      KeyFields = 'CityID'
      Size = 80
      Lookup = True
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object quMainStatus: TIntegerField
      FieldName = 'Status'
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainProductID: TStringField
      FieldName = 'ProductID'
    end
    object quMainLProduct: TStringField
      FieldKind = fkCalculated
      FieldName = 'LProduct'
      Size = 100
      Calculated = True
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainLuAdaDO: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuAdaDO'
      Size = 200
      Calculated = True
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 115
    end
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PRID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPurchaseOrderDT'
      'WHERE POID=:POID AND PRID=:PRID')
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
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
      KeyFields = 'ItemID'
      Size = 80
      Lookup = True
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilDisc: TBCDField
      FieldName = 'Disc'
      OnChange = quDetilDiscChange
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetilJumlah: TIntegerField
      FieldName = 'Jumlah'
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      OnChange = quDetilUOMIDChange
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetildisc2: TBCDField
      FieldName = 'disc2'
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetildisc3: TBCDField
      FieldName = 'disc3'
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetildisc4: TBCDField
      FieldName = 'disc4'
      Precision = 18
    end
    object quDetildisc5: TBCDField
      FieldName = 'disc5'
      Precision = 18
    end
    object quDetilHarga: TBCDField
      FieldName = 'Harga'
      Precision = 18
    end
    object quDetilLTotalItem: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTotalItem'
      Size = 200
      Calculated = True
    end
    object quDetilDiscItem: TBCDField
      FieldName = 'DiscItem'
      Precision = 18
      Size = 0
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 548
    Top = 88
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,A.ItemName,A.ProductID,A.GroupID, '
      'B.ProductDesc,C.GroupDesc,A.UOMID,A.UOMID2'
      'FROM INMsItem A'
      'INNER JOIN INMsProduct B ON A.ProductID = B.ProductID'
      'INNER JOIN INMsGroup C ON A.GroupID = C.GroupID')
    Left = 576
    Top = 88
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
    object quItemProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
    object quItemGroupDesc: TStringField
      FieldName = 'GroupDesc'
      Size = 200
    end
    object quItemUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quItemUOMID2: TStringField
      FieldName = 'UOMID2'
    end
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT round(SUM(K.Jumlah*K.Total),0) as Total,round(CASE WHEN K' +
        '.FgTax='#39'Y'#39' THEN SUM(K.Jumlah*K.Total-K.DiscHD)*0.1 ELSE 0 END,0)' +
        ' as Pajak,'
      
        'round(CASE WHEN K.FgTax='#39'Y'#39' THEN SUM(K.Jumlah*K.Total-K.DiscHD)+' +
        ' SUM(K.Jumlah*K.Total-K.DiscHD)*0.1 ELSE SUM(K.Jumlah*K.Total-K.' +
        'DiscHD) END,0) as GrandTotal FROM ('
      
        'SELECT Y.DiscHD,Y.POID,Y.FgTax,Y.Jumlah,Y.Disc2-(Y.Disc2*Y.D3*0.' +
        '01) as Total FROM ('
      
        'SELECT X.POID,X.FgTax,X.Jumlah,(X.Price-X.Disc1)-(X.Price-X.Disc' +
        '1)*D2*0.01 as Disc2,D3,X.DiscHD   '
      'FROM ('
      
        'SELECT B.Disc as DiscHD,B.POID,B.FgTax,ISNULL(A.Jumlah-A.DiscIte' +
        'm,0) as Jumlah,A.Disc,ISNULL(A.Price,0) as Price,'
      
        'ISNULL(A.Price*A.Disc*0.01,0) as Disc1,ISNULL(A.Disc2,0) as D2,I' +
        'SNULL(A.Disc3,0) as D3'
      'FROM ARTrPurchaseOrderDT A'
      'INNER JOIN ARTrPurchaseOrderHD B ON A.POID=B.POID) as X'
      ') as Y) as K'
      'WHERE K.POID=:POID'
      'GROUP BY K.POID,K.FgTax'
      '')
    Left = 512
    Top = 301
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
    object quTotalGrandTotal: TBCDField
      FieldName = 'GrandTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 540
    Top = 301
  end
  object quCity: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CityID,CityDesc FROM ARMsCity')
    Left = 548
    Top = 116
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 276
    Top = 52
  end
end
