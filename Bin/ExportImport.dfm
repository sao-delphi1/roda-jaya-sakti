inherited fmExportImport: TfmExportImport
  Left = 345
  Top = 204
  Caption = 'Export Import'
  ClientHeight = 672
  ClientWidth = 942
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 942
    inherited laTitle: TLabel
      Width = 138
      Caption = 'Export Import'
    end
  end
  inherited paCenter: TPanel
    Width = 942
    Height = 590
    object Label1: TLabel
      Left = 8
      Top = 569
      Width = 115
      Height = 13
      Caption = 'Sedang meng-Upload....'
      Visible = False
    end
    object dgrReport: TdxDBGrid
      Left = 0
      Top = 65
      Width = 937
      Height = 128
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'PRID'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      DataSource = dsReport
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
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
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MRID'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgForm'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note_1'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate_1'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser_1'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoPR'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteID'
      end
      object dgrReportColumn20: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'warehouseID'
      end
      object dgrReportColumn21: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DivisiID'
      end
      object dgrReportColumn22: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KdCab'
      end
      object dgrReportColumn23: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgSelesai'
      end
      object dgrReportColumn24: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ReqBy'
      end
      object dgrReportColumn25: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgOto'
      end
      object dgrReportColumn26: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoteOto'
      end
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 6
      Width = 397
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 1
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
        Top = 17
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
    object bbExcel: TBitBtn
      Left = 819
      Top = 195
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel PR'
      TabOrder = 2
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
    object Button1: TButton
      Left = 10
      Top = 195
      Width = 105
      Height = 30
      Caption = 'Upload Data PR'
      TabOrder = 3
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 550
      Width = 150
      Height = 17
      Min = 0
      Max = 100
      TabOrder = 4
      Visible = False
    end
    object dxDBGrid1: TdxDBGrid
      Left = 0
      Top = 230
      Width = 937
      Height = 123
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
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsPakai
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
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
      object dxDBGrid1Column1: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgStatus'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Alasan'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgJadi'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningID'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KMawal'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KMakhir'
      end
      object dxDBGrid1Column14: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nomorban'
      end
      object dxDBGrid1Column15: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JmlAwl'
      end
      object dxDBGrid1Column16: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Statusban'
      end
      object dxDBGrid1Column17: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'serial'
      end
      object dxDBGrid1Column18: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'keperluan'
      end
      object dxDBGrid1Column19: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransDate'
      end
      object dxDBGrid1Column20: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WareHouseID'
      end
      object dxDBGrid1Column21: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note_1'
      end
      object dxDBGrid1Column22: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AcknowledgeBy'
      end
      object dxDBGrid1Column23: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate_1'
      end
      object dxDBGrid1Column24: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Upduser_1'
      end
      object dxDBGrid1Column25: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FlagIN'
      end
      object dxDBGrid1Column26: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'expedisi'
      end
      object dxDBGrid1Column27: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Driver'
      end
      object dxDBGrid1Column28: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'nosegel'
      end
      object dxDBGrid1Column29: TdxDBGridColumn
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'nosj'
      end
    end
    object BitBtn1: TBitBtn
      Left = 760
      Top = 355
      Width = 174
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel Pemakaian'
      TabOrder = 6
      OnClick = BitBtn1Click
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
    object Button2: TButton
      Left = 10
      Top = 355
      Width = 145
      Height = 30
      Caption = 'Upload Data Pemakaian'
      TabOrder = 7
      OnClick = Button2Click
    end
    object dxDBGrid2: TdxDBGrid
      Left = 0
      Top = 390
      Width = 937
      Height = 123
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'POID'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsPinjam
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
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
      object dxDBGrid2Column1: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dxDBGrid2Column2: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dxDBGrid2Column3: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGrid2Column4: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dxDBGrid2Column5: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid2Column6: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dxDBGrid2Column7: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dxDBGrid2Column8: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dxDBGrid2Column9: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dxDBGrid2Column10: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dxDBGrid2Column11: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Administrasi'
      end
      object dxDBGrid2Column12: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WareHouseID'
      end
      object dxDBGrid2Column13: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DivisiID'
      end
      object dxDBGrid2Column14: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Warehouse2'
      end
      object dxDBGrid2Column15: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Site2'
      end
      object dxDBGrid2Column16: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Keterangan'
      end
    end
    object Button3: TButton
      Left = 10
      Top = 515
      Width = 143
      Height = 30
      Caption = 'Upload Data Peminjaman'
      TabOrder = 9
      OnClick = Button3Click
    end
    object BitBtn2: TBitBtn
      Left = 758
      Top = 515
      Width = 174
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel Peminjaman'
      TabOrder = 10
      OnClick = BitBtn2Click
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
  end
  inherited paBottom: TPanel
    Top = 631
    Width = 942
    inherited bbPreview: TBitBtn
      Left = 696
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 790
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 864
      Visible = False
    end
  end
  object quReport: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.UpdDate,A.UpdUser,' +
        'A.MRID,A.Jumlah,A.TypeUnit,A.NoUnit,'
      
        'B.Transdate,B.SalesID,B.FgForm,B.Note,B.UpdDate,B.UpdUser,B.NoPR' +
        ',B.SiteID,B.warehouseID,B.DivisiID,B.Acc1,B.Acc2,B.Acc3,'
      'B.KdCab,B.FgSelesai,A.ReqBy,A.FgOto,A.NoteOto'
      
        'from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B ' +
        'on A.PRID=B.PRID AND FgForm='#39'PR'#39)
    Left = 380
    Top = 64
    object quReportPRID: TStringField
      FieldName = 'PRID'
    end
    object quReportItemID: TStringField
      FieldName = 'ItemID'
    end
    object quReportQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quReportUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quReportNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quReportUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quReportUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quReportMRID: TStringField
      FieldName = 'MRID'
    end
    object quReportJumlah: TBCDField
      FieldName = 'Jumlah'
      Precision = 18
    end
    object quReportTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quReportNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quReportTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quReportSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quReportFgForm: TStringField
      FieldName = 'FgForm'
      Size = 2
    end
    object quReportNote_1: TStringField
      FieldName = 'Note_1'
      Size = 200
    end
    object quReportUpdDate_1: TDateTimeField
      FieldName = 'UpdDate_1'
    end
    object quReportUpdUser_1: TStringField
      FieldName = 'UpdUser_1'
    end
    object quReportNoPR: TStringField
      FieldName = 'NoPR'
    end
    object quReportSiteID: TStringField
      FieldName = 'SiteID'
    end
    object quReportwarehouseID: TStringField
      FieldName = 'warehouseID'
    end
    object quReportDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quReportAcc1: TStringField
      FieldName = 'Acc1'
      Size = 50
    end
    object quReportAcc2: TStringField
      FieldName = 'Acc2'
      Size = 50
    end
    object quReportAcc3: TStringField
      FieldName = 'Acc3'
      Size = 50
    end
    object quReportKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
    object quReportFgSelesai: TStringField
      FieldName = 'FgSelesai'
      Size = 30
    end
    object quReportReqBy: TStringField
      FieldName = 'ReqBy'
      Size = 50
    end
    object quReportFgOto: TStringField
      FieldName = 'FgOto'
    end
    object quReportNoteOto: TStringField
      FieldName = 'NoteOto'
      Size = 1000
    end
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = quReport
    Left = 408
    Top = 64
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1008
    Top = 72
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1044
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Left = 416
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 444
    Top = 8
  end
  object quPakai: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'A.TransID,A.ItemID,A.FgStatus,A.Qty,A.Alasan,A.UpdDate,A.UpdUser' +
        ',A.Price,A.FgJadi,A.RekeningID,A.NoUnit,A.KMawal,A.KMakhir,A.Nom' +
        'orban,A.JmlAwl,A.Statusban,A.serial,A.keperluan,A.TransID,'
      
        'B.TransDate,B.WareHouseID,B.Note as Note_1,B.AcknowledgeBy,B.Upd' +
        'Date as UpdDate_1,B.UpdUser as Upduser_1,B.FlagIN,B.expedisi,B.D' +
        'river,B.nosegel,B.nosj'
      
        'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.Trans' +
        'ID=B.TransID')
    Left = 380
    Top = 288
    object quPakaiTransID: TStringField
      FieldName = 'TransID'
    end
    object quPakaiItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quPakaiFgStatus: TStringField
      FieldName = 'FgStatus'
      FixedChar = True
      Size = 1
    end
    object quPakaiQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quPakaiAlasan: TStringField
      FieldName = 'Alasan'
      Size = 150
    end
    object quPakaiUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quPakaiUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quPakaiPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quPakaiFgJadi: TStringField
      FieldName = 'FgJadi'
      Size = 50
    end
    object quPakaiRekeningID: TStringField
      FieldName = 'RekeningID'
    end
    object quPakaiNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quPakaiKMawal: TStringField
      FieldName = 'KMawal'
    end
    object quPakaiKMakhir: TStringField
      FieldName = 'KMakhir'
    end
    object quPakaiNomorban: TStringField
      FieldName = 'Nomorban'
    end
    object quPakaiJmlAwl: TBCDField
      FieldName = 'JmlAwl'
      Precision = 18
    end
    object quPakaiStatusban: TStringField
      FieldName = 'Statusban'
    end
    object quPakaiserial: TStringField
      FieldName = 'serial'
      Size = 50
    end
    object quPakaikeperluan: TStringField
      FieldName = 'keperluan'
      Size = 50
    end
    object quPakaiTransID_1: TStringField
      FieldName = 'TransID_1'
    end
    object quPakaiTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quPakaiWareHouseID: TStringField
      FieldName = 'WareHouseID'
    end
    object quPakaiNote_1: TStringField
      FieldName = 'Note_1'
      Size = 100
    end
    object quPakaiAcknowledgeBy: TStringField
      FieldName = 'AcknowledgeBy'
      Size = 150
    end
    object quPakaiUpdDate_1: TDateTimeField
      FieldName = 'UpdDate_1'
    end
    object quPakaiUpduser_1: TStringField
      FieldName = 'Upduser_1'
    end
    object quPakaiFlagIN: TStringField
      FieldName = 'FlagIN'
      Size = 50
    end
    object quPakaiexpedisi: TStringField
      FieldName = 'expedisi'
      Size = 100
    end
    object quPakaiDriver: TStringField
      FieldName = 'Driver'
      Size = 100
    end
    object quPakainosegel: TStringField
      FieldName = 'nosegel'
      Size = 100
    end
    object quPakainosj: TStringField
      FieldName = 'nosj'
      Size = 100
    end
  end
  object dsPakai: TDataSource
    AutoEdit = False
    DataSet = quPakai
    Left = 408
    Top = 288
  end
  object quPinjam: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select A.POID,ItemID,Qty,UOMID,ItemName,A.Note,NoUnit,CustID,Tra' +
        'nsdate,SalesID,Administrasi,WareHouseID,DivisiID,Warehouse2,Site' +
        '2,B.Note as Keterangan '
      'from ARTrPurchaseOrderDt A '
      'inner join ARTrPurchaseOrderHd B on A.POID=B.POID')
    Left = 380
    Top = 424
    object quPinjamPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quPinjamItemID: TStringField
      FieldName = 'ItemID'
    end
    object quPinjamQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quPinjamUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quPinjamItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object quPinjamNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quPinjamNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quPinjamCustID: TStringField
      FieldName = 'CustID'
    end
    object quPinjamTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quPinjamSalesID: TStringField
      FieldName = 'SalesID'
      Size = 200
    end
    object quPinjamAdministrasi: TBCDField
      FieldName = 'Administrasi'
      Precision = 18
    end
    object quPinjamWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quPinjamDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quPinjamWarehouse2: TStringField
      FieldName = 'Warehouse2'
      Size = 50
    end
    object quPinjamSite2: TStringField
      FieldName = 'Site2'
      Size = 50
    end
    object quPinjamKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
  end
  object dsPinjam: TDataSource
    AutoEdit = False
    DataSet = quPinjam
    Left = 408
    Top = 424
  end
end
