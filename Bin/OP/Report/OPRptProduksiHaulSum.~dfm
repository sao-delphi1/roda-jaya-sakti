inherited fmOPRptProduksiHaulSum: TfmOPRptProduksiHaulSum
  Left = 297
  Top = 160
  Caption = 'Laporan Produksi Hauler Summary'
  ClientHeight = 524
  ClientWidth = 1306
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1306
    Height = 68
    inherited laTitle: TLabel
      Left = 36
      Top = 16
      Visible = False
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 4
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
    Top = 68
    Width = 1306
    Height = 415
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 400
      Height = 413
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'NoUnit'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
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
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial Narrow'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
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
        Caption = 'Nomor Unit'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Retase'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Payload'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tonase'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Tonase'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Tonase'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BCM'
        SummaryFooterType = cstSum
        SummaryFooterField = 'BCM'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'BCM'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 401
      Top = 1
      Width = 904
      Height = 413
      Bands = <
        item
          Width = 538
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ProdId'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsActDt
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial Narrow'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'No Produksi'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProdId'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Digger'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Retase'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Payload'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tonase'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Tonase'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Tonase'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BCM'
        SummaryFooterType = cstSum
        SummaryFooterField = 'BCM'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'BCM'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'Delivery Point'
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NmMaster'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Shift'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = 'Material'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HslProduksi'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Area'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Caption = 'Driver Haul'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DriverH'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Caption = 'Driver Digger'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DriverD'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 483
    Width = 1306
    inherited bbPreview: TBitBtn
      Left = 1060
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 1154
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 1228
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 190
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
    object bbCancel: TBitBtn
      Left = 305
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
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      
        'select A.NoUnit,ISNULL(SUM(A.Qty),0) as Retase,A.Payload,ISNULL(' +
        'SUM(A.Tonase),0) as Tonase,ISNULL(SUM(A.BCM),0) as BCM from OPTr' +
        'ProduksiDtSN A '
      'INNER JOIN OPTrProduksiHd B on A.ProdID=B.ProdID'
      'GROUP BY A.NoUnit,A.Payload')
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActRetase: TBCDField
      FieldName = 'Retase'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 38
    end
    object quActPayload: TBCDField
      FieldName = 'Payload'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActTonase: TBCDField
      FieldName = 'Tonase'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
    end
    object quActBCM: TBCDField
      FieldName = 'BCM'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object quActDt: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsAct
    Parameters = <
      item
        Name = 'NoUnit'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.ProdId,D.TransDate as Tanggal,A.NoUnit,A.Qty,A.Payload,' +
        'A.Tonase,A.BCM,A.DelPoint,B.NmMaster,'
      
        'C.ItemId,C.FgArea,CASE WHEN C.FGShift='#39'1'#39' THEN '#39'Shift 1'#39' ELSE '#39'S' +
        'hift 2'#39' END as Shift,C.NoUnit as Digger,'
      
        ' E.NmMaster as HslProduksi,F.NmMaster as Area,G.SalesName as Dri' +
        'verH,H.SalesName as DriverD'
      'from OPTrProduksiDtSN A'
      
        'INNER JOIN OPTrProduksidt C on A.ProdID=C.ProdID AND A.NumAll=C.' +
        'NumAll AND A.ItemId=C.ItemId'
      'INNER JOIN OPTrProduksiHd D on C.ProdID=D.ProdID'
      'INNER JOIN AllMaster B on A.DelPoint=B.KdMaster'
      'INNER JOIN AllMaster E on C.ItemId=E.KdMaster'
      'INNER JOIN AllMaster F on C.FgArea=F.KdMaster'
      'INNER JOIN ARMsSales G on A.SalesID=G.SalesID'
      'INNER JOIN ARMsSales H on C.SalesID=H.SalesID'
      'Where A.NoUnit=:NoUnit'
      'ORDER BY D.TransDate')
    Left = 392
    Top = 4
    object quActDtProdId: TStringField
      FieldName = 'ProdId'
      Size = 50
    end
    object quActDtNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActDtQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtPayload: TBCDField
      FieldName = 'Payload'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtTonase: TBCDField
      FieldName = 'Tonase'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActDtBCM: TBCDField
      FieldName = 'BCM'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActDtDelPoint: TStringField
      FieldName = 'DelPoint'
      Size = 50
    end
    object quActDtNmMaster: TStringField
      FieldName = 'NmMaster'
      Size = 255
    end
    object quActDtItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object quActDtFgArea: TStringField
      FieldName = 'FgArea'
      Size = 50
    end
    object quActDtShift: TStringField
      FieldName = 'Shift'
      ReadOnly = True
      Size = 7
    end
    object quActDtHslProduksi: TStringField
      FieldName = 'HslProduksi'
      Size = 255
    end
    object quActDtArea: TStringField
      FieldName = 'Area'
      Size = 255
    end
    object quActDtDriverH: TStringField
      FieldName = 'DriverH'
      Size = 50
    end
    object quActDtDriverD: TStringField
      FieldName = 'DriverD'
      Size = 50
    end
    object quActDtDigger: TStringField
      FieldName = 'Digger'
      Size = 50
    end
    object quActDtTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
  end
  object dsActDt: TDataSource
    DataSet = quActDt
    OnStateChange = dsActDtStateChange
    Left = 420
    Top = 4
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1120
    Top = 24
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1156
    Top = 24
  end
end
