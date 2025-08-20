inherited fmINRptAssets: TfmINRptAssets
  Left = 325
  Top = 264
  Caption = 'Laporan Assets'
  ClientHeight = 432
  ClientWidth = 1324
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1324
    Height = 49
    inherited laTitle: TLabel
      Width = 147
      Caption = 'Laporan Assets'
    end
  end
  inherited paCenter: TPanel
    Top = 49
    Width = 1324
    Height = 342
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Periode :'
    end
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 38
      Width = 1322
      Height = 303
      Bands = <
        item
          Width = 1076
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'AssetsID'
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
      Align = alBottom
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
        Sorted = csUp
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AssetsID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AssetsName'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglBeli'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AssetsValue'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ValueSusut'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SisaBuku'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Disusut'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LamaSusut'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jenis'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Status'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglJual'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningD'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningK'
      end
    end
    object dt1: TdxDateEdit
      Left = 69
      Top = 9
      Width = 109
      TabOrder = 1
      Date = -700000
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object Button1: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Load'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 296
      Top = 11
      Width = 185
      Height = 17
      Caption = 'Show Only Active Assets'
      TabOrder = 3
    end
  end
  inherited paBottom: TPanel
    Top = 391
    Width = 1324
    inherited bbPreview: TBitBtn
      Left = 214
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 308
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 1225
      Top = 5
    end
    object bbExcel: TBitBtn
      Left = 1095
      Top = 5
      Width = 129
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
    SQL.Strings = (
      'Select K.*,K.AssetsValue-K.ValueSusut as SisaBuku FROM ('
      
        'select A.AssetsID,A.AssetsName,CONVERT(VARCHAR(10),A.tglbeli,103' +
        ') as TglBeli,'
      
        'CASE WHEN A.FgActive='#39'Y'#39' THEN '#39'-'#39' ELSE CONVERT(VARCHAR(10),A.tgl' +
        'jual,103) END as TglJual,A.AssetsValue,'
      'CASE WHEN A.AssetsType=1 THEN '#39'KENDARAAN'#39
      '     WHEN A.AssetsType=1 THEN '#39'TANAH'#39
      '     WHEN A.AssetsType=1 THEN '#39'MESIN/PERALATAN'#39
      
        '     WHEN A.AssetsType=1 THEN '#39'GEDUNG/BANGUNAN'#39' ELSE '#39'FURNITURE'#39 +
        ' END as Jenis,'
      '     A.FgActive, '
      
        'CASE WHEN A.FgSusut='#39'Y'#39' THEN '#39'YA'#39' ELSE '#39'TDK'#39' END as Disusut,A.te' +
        'rm as LamaSusut,'
      'CASE WHEN A.FgActive='#39'Y'#39' THEN '#39'ACTIVE'#39
      
        '     WHEN A.FgActive='#39'T'#39' THEN '#39'DISPOSAL'#39' ELSE '#39'SOLD'#39' END as Stat' +
        'us,'
      '     A.RekeningD,A.RekeningK,'
      
        '     (select SUM(X.JumlahD) from CFTrKKBBHd X Where X.VoucherNo=' +
        'A.AssetsID) as ValueSusut'
      ' from inmsassets A ) as K')
    Top = 12
    object quActAssetsID: TStringField
      FieldName = 'AssetsID'
    end
    object quActAssetsName: TStringField
      FieldName = 'AssetsName'
      Size = 50
    end
    object quActTglBeli: TStringField
      FieldName = 'TglBeli'
      ReadOnly = True
      Size = 10
    end
    object quActTglJual: TStringField
      FieldName = 'TglJual'
      ReadOnly = True
      Size = 10
    end
    object quActAssetsValue: TBCDField
      FieldName = 'AssetsValue'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quActJenis: TStringField
      FieldName = 'Jenis'
      ReadOnly = True
      Size = 15
    end
    object quActDisusut: TStringField
      FieldName = 'Disusut'
      ReadOnly = True
      Size = 3
    end
    object quActLamaSusut: TIntegerField
      FieldName = 'LamaSusut'
    end
    object quActStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 8
    end
    object quActRekeningD: TStringField
      FieldName = 'RekeningD'
    end
    object quActRekeningK: TStringField
      FieldName = 'RekeningK'
    end
    object quActValueSusut: TBCDField
      FieldName = 'ValueSusut'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
    end
    object quActSisaBuku: TBCDField
      FieldName = 'SisaBuku'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 38
    end
    object quActFgActive: TStringField
      FieldName = 'FgActive'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsAct: TDataSource
    Top = 12
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1026
    Top = 8
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1062
    Top = 8
  end
end
