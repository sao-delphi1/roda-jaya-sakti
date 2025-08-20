inherited fmAPRptLapPRBlmRealisasi: TfmAPRptLapPRBlmRealisasi
  Left = 251
  Top = 192
  Caption = ''
  ClientHeight = 599
  ClientWidth = 1278
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1278
    inherited laTitle: TLabel
      Width = 215
      Caption = 'Laporan PR Belum PO'
    end
  end
  inherited paCenter: TPanel
    Width = 1278
    Height = 517
    object grbKartu: TGroupBox
      Left = 11
      Top = 6
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
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 72
      Width = 1276
      Height = 444
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
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Part_Number'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nama_Barang'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'typeunit'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'PO'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JumPO'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteName'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DivisiID'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'User'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdUser'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Update'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UpdDate'
      end
      object dgrReportColumn14: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'keterangan'
      end
    end
    object bbExp: TBitBtn
      Left = 1158
      Top = 23
      Width = 41
      Height = 25
      Hint = 'Tampilkan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbColp: TBitBtn
      Left = 1202
      Top = 23
      Width = 41
      Height = 25
      Hint = 'Sembunyikan semua'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object CheckBox1: TCheckBox
      Left = 416
      Top = 30
      Width = 249
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 558
    Width = 1278
    inherited bbPreview: TBitBtn
      Left = -24
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 70
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 144
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1038
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
      Left = 1153
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
  object quReport: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.Item' +
        'ID as Part_Number,'
      'C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID,'
      
        'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.' +
        'PRID=A.PRID AND X.ItemID=A.ItemID),0) as JumPO,'
      'D.SiteName as SiteName,B.DivisiID,A.UpdUser,A.UpdDate,'
      
        'ISNULL((SELECT TOP 1 X.keterangan FROM APTrPurchaseOrderDt X INN' +
        'ER JOIN Aptrpurchaseorderhd Y on X.POID=Y.POID '
      'WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND '
      
        'X.FgNum=A.NumAll AND X.FgOto='#39#39'Y'#39#39' ORDER BY Y.Transdate DESC),'#39'-' +
        #39') as keterangan'
      'from APTrPurchaseRequestDt A '
      
        'inner join APTrPurchaseRequestHd b on a.PRID=b.prid AND B.FgForm' +
        '='#39'PR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID'
      'inner join INMsSites D on B.SiteID=D.SiteID')
    Left = 404
    Top = 8
    object quReportPRID: TStringField
      FieldName = 'PRID'
    end
    object quReportTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 12
    end
    object quReportPart_Number: TStringField
      FieldName = 'Part_Number'
    end
    object quReportNama_Barang: TStringField
      FieldName = 'Nama_Barang'
      Size = 150
    end
    object quReporttypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quReportNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quReportJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quReportUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quReportJumPO: TBCDField
      FieldName = 'JumPO'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quReportSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quReportDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quReportUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quReportUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quReportketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Size = 100
    end
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = quReport
    Left = 432
    Top = 8
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 960
    Top = 48
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 996
    Top = 48
  end
end
