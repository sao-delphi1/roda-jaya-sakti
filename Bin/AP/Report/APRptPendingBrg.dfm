inherited fmAPRptPendingBrg: TfmAPRptPendingBrg
  Left = 378
  Top = 296
  Caption = 'Laporan PR belum Terima'
  ClientHeight = 530
  ClientWidth = 1298
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1298
    Height = 0
  end
  inherited paCenter: TPanel
    Top = 0
    Width = 1298
    Height = 489
    object grbKartu: TGroupBox
      Left = 11
      Top = 6
      Width = 366
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label3: TLabel
        Left = 112
        Top = 25
        Width = 41
        Height = 13
        Caption = 'Sampai :'
      end
      object bbRefresh: TBitBtn
        Left = 257
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
        Left = 160
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
      object dtpdari: TDateTimePicker
        Left = 16
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
        TabOrder = 2
      end
    end
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 67
      Width = 1296
      Height = 421
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
      Align = alBottom
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Nomor PR'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PO'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'Terima (HO)'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Terima'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Sisa'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SisaPO'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Sisa'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SisaTerima'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Caption = 'Status'
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StatusA'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Divisi'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DivisiName'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteName'
      end
    end
    object CheckBox1: TCheckBox
      Left = 384
      Top = 45
      Width = 169
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 384
      Top = 6
      Width = 185
      Height = 37
      Caption = '[Bedasarkan]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Terima'
        'PO')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object CheckBox3: TCheckBox
      Left = 576
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Repair'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox4: TCheckBox
      Left = 576
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Pending'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox5: TCheckBox
      Left = 576
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Rejected'
      TabOrder = 6
    end
    object Button1: TButton
      Left = 720
      Top = 24
      Width = 105
      Height = 25
      Caption = 'CARI BARANG '
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  inherited paBottom: TPanel
    Top = 489
    Width = 1298
    inherited bbPreview: TBitBtn
      Left = 324
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 418
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 492
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1071
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
      Left = 1186
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
    Left = 616
    Top = 20
  end
  inherited dsAct: TDataSource
    Left = 644
    Top = 20
  end
  object quReport: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *,Qty-PO as SisaPO,Qty-Terima as SisaTerima FROM ('
      
        'select E.ItemName,A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.TypeUni' +
        't,A.NoUnit,CONVERT(VARCHAR(15),B.Transdate,111) as Tanggal,'
      'B.Transdate,B.SiteID,C.SiteName,D.DivisiName,'
      
        'ISNULL((SELECT SUM(X.Qty) FROM APTrPurchaseOrderDt X Where X.PRI' +
        'D=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as PO,'
      
        'ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiDt X Where X.Note=A' +
        '.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as Terima,A' +
        '.FgOto,'
      
        'CASE WHEN A.FgOto='#39'W'#39' THEN '#39'On Progress'#39' ELSE '#39'On Progress'#39' END ' +
        'as StatusA'
      'from APTrPurchaseRequestDt A '
      'Inner Join APTrPurchaseRequestHd B on A.PRID=B.PRID'
      'INNer join INmSItem E on A.ItemID=E.ItemId'
      'Inner Join INMsSites C on B.SiteID=C.SiteID'
      'Inner Join INMsDivisi D on B.DivisiID=D.DivisiID '
      ') as K ')
    Left = 436
    Top = 40
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
    object quReportTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quReportNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quReportTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 15
    end
    object quReportTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quReportSiteID: TStringField
      FieldName = 'SiteID'
    end
    object quReportSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quReportDivisiName: TStringField
      FieldName = 'DivisiName'
      Size = 50
    end
    object quReportPO: TBCDField
      FieldName = 'PO'
      ReadOnly = True
      Precision = 32
    end
    object quReportTerima: TBCDField
      FieldName = 'Terima'
      ReadOnly = True
      Precision = 32
    end
    object quReportSisaPO: TBCDField
      FieldName = 'SisaPO'
      ReadOnly = True
      Precision = 32
    end
    object quReportSisaTerima: TBCDField
      FieldName = 'SisaTerima'
      ReadOnly = True
      Precision = 32
    end
    object quReportItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quReportFgOto: TStringField
      FieldName = 'FgOto'
    end
    object quReportStatusA: TStringField
      FieldName = 'StatusA'
      ReadOnly = True
      Size = 11
    end
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = quReport
    Left = 464
    Top = 40
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 856
    Top = 48
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 892
    Top = 48
  end
end
