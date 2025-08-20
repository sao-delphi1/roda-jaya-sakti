inherited fmAPRptConfirmMR: TfmAPRptConfirmMR
  Caption = 'MR Belum Konfirm'
  ClientHeight = 528
  ClientWidth = 1078
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1078
    Height = 57
    inherited laTitle: TLabel
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 329
      Height = 41
      Caption = '[ Tampilkan ]'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Not Confirmed'
        'Confirmed'
        'All')
      TabOrder = 0
    end
    object BtlBrg: TdxButton
      Tag = 4444
      Left = 344
      Top = 15
      Width = 142
      Height = 35
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = BtlBrgClick
      Caption = 'REFRESH'
      TabOrder = 1
      TabStop = False
    end
    object CheckBox1: TCheckBox
      Left = 504
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Show All Site'
      TabOrder = 2
    end
  end
  inherited paCenter: TPanel
    Top = 57
    Width = 1078
    Height = 430
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1076
      Height = 428
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
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'MRID'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Konfirmasi'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgConfirm'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ConfirmDate'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ConfirmBy'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NumAll'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Site'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteName'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Request By'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Caption = 'Divisi'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DivisiName'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KdCab'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 487
    Width = 1078
    inherited bbPreview: TBitBtn
      Left = 168
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 262
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 336
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 854
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
      Left = 968
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
      
        'select A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.TypeUnit,A.NoUnit,' +
        'C.ItemName,ISNULL(A.FgConfirm,'#39'T'#39') as FgConfirm,A.ConfirmDate,A.' +
        'ConfirmBy,A.NumAll,'
      
        'CONVERT(VARCHAR(10),B.Transdate,111) as Tanggal,F.SiteName,D.Sal' +
        'esName,E.DivisiName,B.KdCab'
      
        'from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B ' +
        'on A.PRID=B.PRID AND B.FgForm='#39'MR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID'
      'inner join INMsSites F on B.SiteID=F.SiteID'
      'inner join ARMsSales D on B.SalesID=D.SalesID'
      'inner join INMsDivisi E on B.DivisiID=E.DivisiID'
      'WHERE ISNULL(A.FgConfirm,'#39'T'#39')='#39'T'#39)
    Left = 552
    Top = 8
    object quActPRID: TStringField
      FieldName = 'PRID'
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quActTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActFgConfirm: TStringField
      FieldName = 'FgConfirm'
      ReadOnly = True
      Size = 10
    end
    object quActConfirmDate: TDateTimeField
      FieldName = 'ConfirmDate'
    end
    object quActConfirmBy: TStringField
      FieldName = 'ConfirmBy'
      Size = 50
    end
    object quActNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quActTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quActSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActDivisiName: TStringField
      FieldName = 'DivisiName'
      Size = 50
    end
    object quActKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
    Left = 580
    Top = 8
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
