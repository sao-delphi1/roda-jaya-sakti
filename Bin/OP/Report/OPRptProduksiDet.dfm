inherited fmOPRptProduksiDet: TfmOPRptProduksiDet
  Left = 289
  Top = 364
  Caption = 'Laporan Produksi Detail'
  ClientWidth = 1333
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1333
    Height = 72
    inherited laTitle: TLabel
      Visible = False
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 7
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
    Top = 72
    Width = 1333
    Height = 422
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1331
      Height = 420
      Bands = <
        item
          Caption = 'Digger'
          Width = 1263
        end
        item
          Caption = 'Hauler'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ProdID'
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
      Align = alClient
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
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'No Transaksi'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProdID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Kode Site'
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nomor Unit'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Driver'
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Shift'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Area'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgArea'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Dig Location'
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NamaArea'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Material Type'
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Material'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Tonase'
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'Nomor Unit'
        Width = 82
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NoUnit_1'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Driver'
        Width = 133
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SalesName_1'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DelPoint'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Retase'
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Width = 70
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Payload'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 70
        BandIndex = 1
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
      object dgrReportColumn17: TdxDBGridColumn
        Width = 70
        BandIndex = 1
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
  end
  inherited paBottom: TPanel
    Width = 1333
    inherited bbPreview: TBitBtn
      Left = -89
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 5
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 79
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1102
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
      Left = 1217
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
      
        'select CONVERT(VARCHAR(10),C.TransDate,111) as Tanggal,A.ProdID,' +
        'C.SiteID,B.NoUnit,'
      
        'CASE WHEN B.FGShift='#39'1'#39' THEN '#39'Shift 1'#39' ELSE '#39'Shift 2'#39' END as Shi' +
        'ft,'
      'B.FgArea,D.NmMaster as NamaArea,B.ItemId,E.NmMaster as Material,'
      
        'B.Jumlah,B.NumAll,F.SalesName,A.NoUnit,G.SalesName,A.Qty,A.Paylo' +
        'ad,A.Tonase,A.BCM,A.DelPoint'
      'from OPTrProduksiDtSN A'
      
        'INNER JOIN OPTrProduksiDt B on A.ProdID=B.ProdID AND A.NumAll=B.' +
        'NumAll '
      'INNER JOIN OPTrProduksiHd C on C.ProdID=B.ProdID '
      'LEFT JOIN AllMaster D on B.FgArea=D.KdMaster AND D.FgMaster='#39'E'#39
      'LEFT JOIN AllMaster E on B.ItemId=E.KdMaster AND E.FgMaster='#39'H'#39
      'LEFt JOIN ARMsSales F on B.SalesID=F.SalesId'
      'LEFt JOIN ARMsSales G on A.SalesID=G.SalesId'
      'ORDER BY C.TransDate,C.SiteID,B.NoUnit,B.FGShift,B.NumAll')
    object quActTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quActProdID: TStringField
      FieldName = 'ProdID'
      Size = 50
    end
    object quActSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActShift: TStringField
      FieldName = 'Shift'
      ReadOnly = True
      Size = 7
    end
    object quActFgArea: TStringField
      FieldName = 'FgArea'
      Size = 50
    end
    object quActNamaArea: TStringField
      FieldName = 'NamaArea'
      Size = 255
    end
    object quActItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object quActMaterial: TStringField
      FieldName = 'Material'
      Size = 255
    end
    object quActJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActNoUnit_1: TStringField
      FieldName = 'NoUnit_1'
      Size = 50
    end
    object quActSalesName_1: TStringField
      FieldName = 'SalesName_1'
      Size = 50
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActPayload: TBCDField
      FieldName = 'Payload'
      Precision = 18
    end
    object quActTonase: TBCDField
      FieldName = 'Tonase'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActBCM: TBCDField
      FieldName = 'BCM'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActDelPoint: TStringField
      FieldName = 'DelPoint'
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1176
    Top = 24
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1212
    Top = 24
  end
end
