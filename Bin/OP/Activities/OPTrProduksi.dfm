inherited fmOPTrProduksi: TfmOPTrProduksi
  Left = 285
  Top = 65
  Caption = 'Input Hasil Produksi'
  ClientHeight = 551
  ClientWidth = 1039
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 502
    inherited pa3: TdxContainer
      Height = 323
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 539
    Width = 1039
  end
  inherited pa2: TdxContainer
    Height = 502
  end
  inherited dxContainer7: TdxContainer
    Width = 846
    Height = 502
    inherited pcParent: TdxPageControl
      Width = 846
      Height = 502
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 18
          Top = 28
          Width = 84
          Height = 17
          Alignment = taRightJustify
          Caption = 'No. Produksi :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [1]
          Left = 49
          Top = 52
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
        object Label3: TLabel [2]
          Left = 280
          Top = 28
          Width = 29
          Height = 17
          Alignment = taRightJustify
          Caption = 'Site :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText [3]
          Left = 431
          Top = 28
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'LSite'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [4]
          Left = 25
          Top = 76
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
        object Label5: TLabel [5]
          Left = 257
          Top = 52
          Width = 52
          Height = 17
          Alignment = taRightJustify
          Caption = 'Gudang :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText [6]
          Left = 431
          Top = 52
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'LGudang'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        inherited bbSave: TdxButton
          Left = 635
          Top = 69
          Width = 96
          Height = 25
          TabOrder = 5
        end
        inherited bbCancel: TdxButton
          Left = 732
          Top = 69
          Width = 96
          Height = 25
          TabOrder = 6
        end
        object dxDBEdit1: TdxDBEdit
          Left = 109
          Top = 24
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'ProdID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 109
          Top = 48
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 317
          Top = 24
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DataField = 'SiteID'
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
        object GroupBox1: TGroupBox
          Left = 631
          Top = 2
          Width = 205
          Height = 47
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
          object Label21: TLabel
            Left = 5
            Top = 10
            Width = 50
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 57
            Top = 10
            Width = 125
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 5
            Top = 27
            Width = 50
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 57
            Top = 27
            Width = 125
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 317
          Top = 48
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          DataField = 'Location'
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
        object dxDBEdit2: TdxDBEdit
          Left = 109
          Top = 72
          Width = 460
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dbg: TdxDBGrid
          Left = 0
          Top = 112
          Width = 844
          Height = 161
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'DIGGER'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'NoUnit'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
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
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowBands = True
          object dbgColumn1: TdxDBGridButtonColumn
            Caption = 'No Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn1ButtonClick
          end
          object dbgColumn6: TdxDBGridButtonColumn
            Caption = 'Driver'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LSalesName'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn6ButtonClick
          end
          object dbgColumn8: TdxDBGridButtonColumn
            Caption = 'Hasil Produksi'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LHasil'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn8ButtonClick
          end
          object dbgColumn11: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Shift'
            MinWidth = 16
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FGShift'
            Descriptions.Strings = (
              'Shift 1'
              'Shift 2')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              '1'
              '2')
          end
          object dbgColumn9: TdxDBGridButtonColumn
            Caption = 'Area'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FGArea'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn9ButtonClick
          end
          object dbgColumn10: TdxDBGridButtonColumn
            Caption = 'Delivery'
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DelPoint'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn10ButtonClick
          end
          object dbgColumn2: TdxDBGridColumn
            Caption = 'Retase'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgColumn3: TdxDBGridButtonColumn
            Caption = 'Satuan'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
          end
          object dbgColumn4: TdxDBGridColumn
            Caption = 'Tonase'
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgColumn7: TdxDBGridColumn
            Caption = 'Total'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgColumn5: TdxDBGridBlobColumn
            Caption = 'Keterangan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
            BlobKind = bkMemo
          end
        end
        object dxDBGrid1: TdxDBGrid
          Left = 1
          Top = 302
          Width = 842
          Height = 173
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'HAULER'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemId'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = dxDBGrid1Click
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsSN
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
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
          object dxDBGrid1Column5: TdxDBGridButtonColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBGrid1Column5ButtonClick
          end
          object dxDBGrid1Column6: TdxDBGridButtonColumn
            Caption = 'Driver'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LSalesName'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBGrid1Column6ButtonClick
          end
          object dxDBGrid1Column8: TdxDBGridButtonColumn
            Caption = 'Delivery Point'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DelPoint'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBGrid1Column8ButtonClick
          end
          object dxDBGrid1Column1: TdxDBGridButtonColumn
            Caption = 'Kode Item'
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemId'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBGrid1Column1ButtonClick
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Hasil Produksi'
            Visible = False
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LHasil'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Caption = 'Retase'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Payload'
          end
          object dxDBGrid1Column10: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tonase'
          end
          object dxDBGrid1Column7: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BCM'
          end
          object dxDBGrid1Column4: TdxDBGridBlobColumn
            Caption = 'Keterangan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
            BlobKind = bkMemo
          end
          object dxDBGrid1Column11: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai1'
          end
          object dxDBGrid1Column12: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai2'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 1
          Top = 275
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
          TabOrder = 8
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 93
          Top = 275
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
          TabOrder = 9
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 186
          Top = 275
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
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 279
          Top = 275
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
          TabOrder = 11
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 1111
          Left = 1
          Top = 475
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
          OnClick = dxButton1Click
          Caption = '(+) Barang'
          TabOrder = 13
          TabStop = False
        end
        object dxButton2: TdxButton
          Tag = 2222
          Left = 93
          Top = 475
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
          OnClick = dxButton2Click
          Caption = '(-) Barang'
          TabOrder = 14
          TabStop = False
        end
        object dxButton3: TdxButton
          Tag = 4444
          Left = 186
          Top = 475
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
          OnClick = dxButton3Click
          Caption = 'Simpan'
          TabOrder = 15
          TabStop = False
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 279
          Top = 475
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
          OnClick = dxButton4Click
          Caption = 'Batal'
          TabOrder = 16
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1039
    inherited sbLast: TSpeedButton
      Left = 1002
    end
    inherited sbNext: TSpeedButton
      Left = 975
    end
    inherited sbPrev: TSpeedButton
      Left = 948
    end
    inherited sbFirst: TSpeedButton
      Left = 921
    end
    inherited sbPeriod: TSpeedButton
      Left = 895
    end
    inherited BvlPeriod: TBevel
      Left = 649
    end
    inherited laPeriod: TLabel
      Left = 653
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from optrproduksihd')
    object quMainProdID: TStringField
      FieldName = 'ProdID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/MM/yyyy hh:mm:ss'
    end
    object quMainKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
    object quMainLSite: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSite'
      Size = 100
      Calculated = True
    end
    object quMainLGudang: TStringField
      FieldKind = fkCalculated
      FieldName = 'LGudang'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 760
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'prodid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from optrproduksidt where prodid=:prodid'
      '')
    object quDetilProdID: TStringField
      FieldName = 'ProdID'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quDetilLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 200
      Calculated = True
    end
    object quDetilFGShift: TStringField
      FieldName = 'FGShift'
      Size = 10
    end
    object quDetilTotalP: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalP'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object quDetilLHasil: TStringField
      FieldKind = fkCalculated
      FieldName = 'LHasil'
      Size = 100
      Calculated = True
    end
    object quDetilFgArea: TStringField
      FieldName = 'FgArea'
      Size = 50
    end
    object quDetilDelPoint: TStringField
      FieldName = 'DelPoint'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    AfterDelete = quSNAfterDelete
    OnCalcFields = quSNCalcFields
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'prodid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
      
        'select * from optrproduksidtSN where prodid=:prodid and NumAll=:' +
        'NumAll'
      ''
      '')
    Left = 396
    Top = 4
    object quSNProdID: TStringField
      FieldName = 'ProdID'
      Size = 50
    end
    object quSNNumAll: TIntegerField
      FieldName = 'NumAll'
    end
    object quSNFgNum: TAutoIncField
      FieldName = 'FgNum'
      ReadOnly = True
    end
    object quSNItemId: TStringField
      FieldName = 'ItemId'
      Size = 100
    end
    object quSNQty: TBCDField
      FieldName = 'Qty'
      OnChange = quSNQtyChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNLHasil: TStringField
      FieldKind = fkCalculated
      FieldName = 'LHasil'
      Size = 100
      Calculated = True
    end
    object quSNBCM: TBCDField
      FieldName = 'BCM'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quSNSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quSNLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 100
      Calculated = True
    end
    object quSNDelPoint: TStringField
      FieldName = 'DelPoint'
      Size = 50
    end
    object quSNPayload: TBCDField
      FieldName = 'Payload'
      OnChange = quSNPayloadChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNNilai1: TBCDField
      FieldName = 'Nilai1'
      OnChange = quSNNilai1Change
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNNilai2: TBCDField
      FieldName = 'Nilai2'
      OnChange = quSNNilai2Change
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quSNTonase: TBCDField
      FieldName = 'Tonase'
      OnChange = quSNTonaseChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 424
    Top = 4
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 584
    Top = 4
  end
end
