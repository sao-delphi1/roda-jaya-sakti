inherited fmINRptInventaris: TfmINRptInventaris
  Left = 259
  Top = 244
  Caption = 'Inventaris'
  ClientHeight = 573
  ClientWidth = 1146
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1146
    Height = 73
    inherited laTitle: TLabel
      Width = 185
      Caption = 'Laporan Inventaris'
      Visible = False
    end
    object grbKartu: TGroupBox
      Left = 8
      Top = 8
      Width = 397
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Dari :'
      end
      object Label3: TLabel
        Left = 152
        Top = 25
        Width = 41
        Height = 13
        Caption = 'Sampai :'
      end
      object bbRefresh: TBitBtn
        Left = 305
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bbRefreshClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
          C43337777777777777F33444881B188444333777F3737337773333308881FF70
          33333337F3373337F3333330888BF770333333373F33F337333333330881F703
          3333333373F73F7333333333308B703333333333373F77333333333333080333
          3333333333777FF333333333301F103333333333377777FF3333333301B1F103
          333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
          333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
          C43337777777777777F334444444444444333777777777777733}
        NumGlyphs = 2
      end
      object dtpSmp: TDateTimePicker
        Left = 200
        Top = 21
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 38070.9999884259
        Format = 'dd/MM/yyyy'
        Time = 38070.9999884259
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object dtpDari: TDateTimePicker
        Left = 56
        Top = 21
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 38070
        Format = 'dd/MM/yyyy'
        Time = 38070
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
    end
  end
  inherited paCenter: TPanel
    Top = 73
    Width = 1146
    Height = 459
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1144
      Height = 457
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'TransID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Jumlah'
              SummaryFormat = '#,0.00'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -9
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Nota'
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID2'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Karyawan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Gudang'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
        SummaryFooterField = 'Jumlah'
        SummaryFooterFormat = '#,0.00'
        SummaryField = 'Jumlah'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Kode Karyawan'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'UpdUser'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'UpdDate'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 532
    Width = 1146
    inherited bbPrint: TBitBtn [0]
      Left = 26
      Visible = False
    end
    inherited bbExit: TBitBtn [1]
      Left = 28
      Visible = False
    end
    object bbExcel: TBitBtn [2]
      Left = 849
      Top = 6
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 3
      OnClick = bbExcelClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080808080808080808080808000008080800080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000808080000080808000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000008000808080
        0000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080
        000080000080000080000080008080800000808080008000008000FFFFFF0080
        00008000008000008000008000008000008000FFFFFF00800000800000800000
        80000080008080800000808080008000008000FFFFFF00800000800000800000
        8000008000008000FFFFFF008000008000008000FFFFFF008000008000808080
        0000808080008000008000FFFFFF008000008000008000008000008000FFFFFF
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFF008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFFFFFF
        FFFFFFFF008000FFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFF008000FFFFFF00
        8000008000008000008000008000008000FFFFFFFFFFFF008000008000808080
        0000808080008000008000FFFFFF008000FFFFFF008000008000008000008000
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFF008000008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFF0080
        00008000008000FFFFFFFFFFFFFFFFFF008000008000008000008000FFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080
        0000808080008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080008080800000808080008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800080808000008080808080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080800000}
    end
    object bbCancel: TBitBtn [3]
      Left = 963
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
      OnClick = bbCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
    inherited bbPreview: TBitBtn [4]
      Left = 20
      OnClick = bbPreviewClick
    end
    object CheckBox1: TCheckBox
      Left = 128
      Top = 13
      Width = 201
      Height = 17
      Caption = 'Lihat Yang Terakhir diberikan'
      TabOrder = 5
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT K.* FROM ( '
      
        'select B.FlagIN,A.TransID,B.Transdate,C.ItemName,A.ItemID,C.Type' +
        'Unit,ISNULL(A.NoUnit,'#39'-'#39') as NoUnit,D.SalesName,A.Qty as Jumlah,' +
        'C.UOMID2, '
      'A.Alasan as Note,B.WarehouseID,A.upddate,A.upduser '
      'from INTrAdjustmentDt A '
      
        'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagI' +
        'N='#39'PI'#39' '
      'inner join INMsItem C on A.ItemID=C.ItemId '
      'inner join ARMsSales D on A.NoUnit=D.SalesID'
      'Where A.FgStatus IN ('#39'K'#39') '
      
        ') as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID' +
        ' ')
    object quActFlagIN: TStringField
      FieldName = 'FlagIN'
      Size = 50
    end
    object quActTransID: TStringField
      FieldName = 'TransID'
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quActTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 100
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      ReadOnly = True
      Size = 50
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActUOMID2: TStringField
      FieldName = 'UOMID2'
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 150
    end
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quActupddate: TDateTimeField
      FieldName = 'upddate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActupduser: TStringField
      FieldName = 'upduser'
    end
  end
  inherited dsAct: TDataSource
    OnDataChange = dsActDataChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 856
    Top = 64
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 892
    Top = 64
  end
end
