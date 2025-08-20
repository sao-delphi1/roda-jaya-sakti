inherited fmAROtoAdjustment: TfmAROtoAdjustment
  Left = 548
  Top = 176
  Caption = 'Otorisasi Adjustment'
  ClientHeight = 538
  ClientWidth = 968
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 968
    Height = 97
    inherited laTitle: TLabel
      Width = 87
      Caption = 'Ototisasi'
    end
    object CheckBox1: TCheckBox
      Left = 175
      Top = 16
      Width = 186
      Height = 17
      Caption = 'PEMAKAIAN SPAREPART'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 175
      Top = 40
      Width = 170
      Height = 17
      Caption = 'PEMAKAIAN SOLAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 175
      Top = 64
      Width = 170
      Height = 17
      Caption = 'PEMAKAIAN OLI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited paCenter: TPanel
    Top = 97
    Width = 968
    Height = 400
    object dxDBGrid2: TdxDBGrid
      Left = 0
      Top = 176
      Width = 961
      Height = 193
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KonInvPelID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -12
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      DataSource = dsDetil
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -12
      PreviewFont.Name = 'Comic Sans MS'
      PreviewFont.Style = []
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'No Unit'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'Description No Unit'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid2Column6: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dxDBGridColumn3: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGridColumn4: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dxDBGridColumn5: TdxDBGridColumn
        Caption = 'Harga'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 497
    Width = 968
    inherited bbPreview: TBitBtn
      Left = 722
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 816
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 890
      Enabled = False
      Visible = False
    end
  end
  object dxDBGrid1: TdxDBGrid [3]
    Left = 0
    Top = 96
    Width = 961
    Height = 177
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KonInvPelID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Color = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -12
    BandFont.Name = 'Times New Roman'
    BandFont.Style = []
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Times New Roman'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -12
    PreviewFont.Name = 'Comic Sans MS'
    PreviewFont.Style = []
    object dxDBGrid1Column3: TdxDBGridColumn
      Caption = 'Tanggal'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransDate'
    end
    object dxDBGrid1Column1: TdxDBGridColumn
      Caption = 'Nota'
      Width = 140
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransID'
    end
    object dxDBGrid1Column2: TdxDBGridColumn
      Caption = 'Gudang'
      Width = 140
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WareHouseID'
    end
  end
  inherited quAct: TADOQuery
    Left = 344
    Top = 65484
  end
  inherited SCEdit: TdxEditStyleController
    Left = 508
    Top = 65488
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 540
    Top = 65488
  end
  inherited dsAct: TDataSource
    Left = 372
    Top = 65484
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM INTrAdjustmentHd where FLAGIN IN ('#39'PG'#39','#39'PS'#39','#39'PO'#39','#39 +
        'TB'#39')')
    Left = 416
    Top = 20
    object quMainTransID: TStringField
      FieldName = 'TransID'
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainAcknowledgeBy: TStringField
      FieldName = 'AcknowledgeBy'
      Size = 150
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFlagIN: TStringField
      FieldName = 'FlagIN'
      Size = 50
    end
    object quMainexpedisi: TStringField
      FieldName = 'expedisi'
      Size = 100
    end
    object quMainDriver: TStringField
      FieldName = 'Driver'
      Size = 100
    end
    object quMainnosj: TStringField
      FieldName = 'nosj'
      Size = 100
    end
    object quMainnosegel: TStringField
      FieldName = 'nosegel'
      Size = 100
    end
    object quMaintglupload: TDateTimeField
      FieldName = 'tglupload'
    end
    object quMainFgDivisi: TStringField
      FieldName = 'FgDivisi'
      Size = 50
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 440
    Top = 20
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'TransID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INTrAdjustmentDt WHERE TransID=:TransID'
      'ORDER BY UpdDate'
      '')
    Left = 516
    Top = 20
    object quDetilTransID: TStringField
      FieldName = 'TransID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quDetilLItemName: TStringField
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object quDetilFgStatus: TStringField
      FieldName = 'FgStatus'
      FixedChar = True
      Size = 1
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilAlasan: TStringField
      FieldName = 'Alasan'
      Size = 150
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLUOMID: TStringField
      FieldKind = fkLookup
      FieldName = 'LUOMID'
      LookupKeyFields = 'ItemID'
      LookupResultField = 'UOMId2'
      KeyFields = 'ItemID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quDetilRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 50
    end
    object quDetilLRekeningName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekeningName'
      Size = 100
      Calculated = True
    end
    object quDetilLTypeUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTypeUnit'
      Size = 100
      Calculated = True
    end
    object quDetilkmawal: TStringField
      FieldName = 'kmawal'
    end
    object quDetilkmakhir: TStringField
      FieldName = 'kmakhir'
    end
    object quDetilnomorban: TStringField
      FieldName = 'nomorban'
    end
    object quDetilJmlAwl: TBCDField
      FieldName = 'JmlAwl'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilSelisih: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Selisih'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quDetilStatusban: TStringField
      FieldName = 'Statusban'
    end
    object quDetilserial: TStringField
      FieldName = 'serial'
      Size = 50
    end
    object quDetilkeperluan: TStringField
      FieldName = 'keperluan'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilMRID: TStringField
      FieldName = 'MRID'
      Size = 50
    end
    object quDetilfgNum: TIntegerField
      FieldName = 'fgNum'
    end
    object quDetilLNama: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNama'
      Size = 100
      Calculated = True
    end
    object quDetilModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quDetilJual: TBCDField
      FieldName = 'Jual'
      Precision = 18
    end
    object quDetilLMerk: TStringField
      FieldKind = fkCalculated
      FieldName = 'LMerk'
      Size = 100
      Calculated = True
    end
    object quDetilLDivisi: TStringField
      FieldKind = fkCalculated
      FieldName = 'LDivisi'
      Size = 100
      Calculated = True
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    Left = 544
    Top = 20
  end
end
