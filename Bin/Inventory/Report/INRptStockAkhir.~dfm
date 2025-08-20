inherited fmINRptStockAkhir: TfmINRptStockAkhir
  Left = 114
  Top = 38
  Caption = 'Laporan Stok Akhir'
  ClientHeight = 560
  ClientWidth = 1150
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1150
    Height = 73
    inherited laTitle: TLabel
      Enabled = False
      Visible = False
    end
    object Label4: TLabel
      Left = 230
      Top = 29
      Width = 75
      Height = 20
      Caption = 'Gudang :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 8
      Width = 206
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object bbRefresh: TBitBtn
        Left = 105
        Top = 19
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
      object dtpsmp: TdxDateEdit
        Left = 13
        Top = 22
        Width = 87
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 308
      Top = 25
      Width = 69
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      ExistButtons = True
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 376
      Top = 25
      Width = 175
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      CharCase = ecUpperCase
      ReadOnly = True
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      StoredValues = 64
      ExistButtons = True
    end
  end
  inherited paCenter: TPanel
    Top = 73
    Width = 1150
    Height = 446
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1148
      Height = 444
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
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
      DataSource = dsAct
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
      object dgrReportColumn8: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Gudang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dgrReportColumn7: TdxDBGridColumn
        ReadOnly = True
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Layout'
      end
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Part Number'
        ReadOnly = True
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Nama Barang'
        ReadOnly = True
        Width = 220
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Type Unit'
        ReadOnly = True
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'typeunit'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Stock'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Stock'
        SummaryFooterFormat = '#,0.00'
        SummaryField = 'Stock'
        SummaryFormat = '#,0.00'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Satuan'
        ReadOnly = True
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Sites'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Barang'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Harga'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Lharga'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Total'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LTotal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'LTotal'
        SummaryFooterFormat = '#,0.00'
        SummaryField = 'LTotal'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 519
    Width = 1150
    inherited bbPreview: TBitBtn
      Left = 944
      Enabled = False
    end
    inherited bbPrint: TBitBtn
      Left = 945
      Enabled = False
    end
    inherited bbExit: TBitBtn
      Left = 1056
    end
    object bbExcel: TBitBtn
      Left = 929
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
  end
  inherited quAct: TADOQuery
    OnCalcFields = quActCalcFields
    SQL.Strings = (
      'SELECT L.*,0.00 as Harga FROM ('
      
        'SELECT K.*, ISNULL((SELECT SUM(Case WHEN X.FgTrans < 50  THEN X.' +
        'QTy ELSE X.Qty * - 1 END) '
      
        'FROM ALLITEM X Where CONVERT(VARCHAR(8),X.TransDate,112)<='#39'20220' +
        '707'#39' AND X.ItemID=K.ItemID AND X.WareHouseId=K.WarehouseId '
      'AND ISNULL(X.barang,'#39'-'#39')=ISNULL(K.barang,'#39'-'#39')),0) as Stock '
      
        'FROM ( select DISTINCT A.LayoutID as Layout,A.ItemID,B.ItemName,' +
        'B.UOMID,B.typeunit,A.WarehouseID,ISNULL(A.Barang,'#39'-'#39') as Barang'
      
        ',B.UserPrice from AllItem A inner join INMsItem B on A.ItemID=B.' +
        'ItemID ) as K '
      ') as L'
      
        'WHERE L.Stock<>0  ORDER BY L.WarehouseID,L.barang,L.ItemName,L.L' +
        'ayout')
    object quActLayout: TStringField
      FieldName = 'Layout'
      Size = 50
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 35
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActtypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 35
    end
    object quActBarang: TStringField
      FieldName = 'Barang'
      ReadOnly = True
      Size = 50
    end
    object quActUserPrice: TBCDField
      FieldName = 'UserPrice'
      Precision = 18
    end
    object quActStock: TBCDField
      FieldName = 'Stock'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object quActLharga: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Lharga'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActLTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LTotal'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 624
    Top = 8
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 652
    Top = 8
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    OnCalcFields = quActCalcFields
    Parameters = <>
    Left = 408
    Top = 4
  end
end
