inherited fmSFRptClearance: TfmSFRptClearance
  Left = 486
  Top = 148
  Caption = 'Laporan Clearance'
  ClientWidth = 958
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 958
    Height = 81
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 310
      Height = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 136
        Top = 32
        Width = 25
        Height = 24
        Caption = 's/d'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 8
        Top = 30
        Width = 125
        Height = 32
        CalAlignment = dtaLeft
        Date = 38070
        Format = 'dd/MM/yyyy'
        Time = 38070
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 168
        Top = 30
        Width = 125
        Height = 32
        CalAlignment = dtaLeft
        Date = 38070
        Format = 'dd/MM/yyyy'
        Time = 38070
        Color = 16311512
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object bbRefresh: TBitBtn
      Left = 317
      Top = 33
      Width = 112
      Height = 34
      Hint = 'Refresh'
      Caption = '&Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
  inherited paCenter: TPanel
    Top = 81
    Width = 958
    Height = 413
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 956
      Height = 411
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
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      HeaderFont.Height = -13
      HeaderFont.Name = 'MS Sans Serif'
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
        Caption = 'Tanggal'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransDate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'No Transaksi'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dgrReportColumn3: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Jenis'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgClearance'
        Descriptions.Strings = (
          'Unit'
          'Karyawan'
          'Departemen')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        ShowDescription = True
        Values.Strings = (
          'U'
          'K'
          'D')
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'From'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kepada'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Nota Pemberian'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoTeID'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 958
    inherited bbPreview: TBitBtn
      Left = 112
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 206
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 280
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 735
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
      Left = 850
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
      
        'select B.TransDate,A.TransID,FgClearance,A.ItemID,A.NoUnit,C.Ite' +
        'mName,A.Qty,A.NoTeID,'
      
        'CASE WHEN A.FgClearance='#39'U'#39' THEN F.Description WHEN A.FgClearanc' +
        'e='#39'K'#39' THEN D.SalesName ELSE E.DivisiName END as Kepada '
      
        'from SFTrClearanceDt A inner join SFTrClearanceHd B on A.TransID' +
        '=B.TransID'
      'inner join INMsItem C on A.ItemId=C.ItemID'
      'left join ARMsSales D on A.NoUnit=D.SalesID'
      'left join INMsDivisi E on A.NoUnit=E.DivisiID'
      'left join INMsNoUnit F on A.NoUnit=F.NoUnit')
    object quActTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quActTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quActFgClearance: TStringField
      FieldName = 'FgClearance'
      Size = 50
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quActNoTeID: TStringField
      FieldName = 'NoTeID'
      Size = 50
    end
    object quActKepada: TStringField
      FieldName = 'Kepada'
      ReadOnly = True
      Size = 100
    end
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
