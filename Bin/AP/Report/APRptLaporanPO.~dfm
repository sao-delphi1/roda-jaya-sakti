inherited fmAPRptLaporanPO: TfmAPRptLaporanPO
  Left = 177
  Top = 16
  Caption = 'Laporan PO'
  ClientHeight = 573
  ClientWidth = 1134
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1134
    inherited laTitle: TLabel
      Width = 228
      Caption = 'Laporan Purchase Order'
    end
  end
  inherited paCenter: TPanel
    Width = 1134
    Height = 491
    object Label1: TLabel
      Left = 570
      Top = 3
      Width = 85
      Height = 16
      Caption = 'Jenis Barang :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 74
      Width = 1132
      Height = 416
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
              ColumnName = 'dgrReportColumn10'
              SummaryField = 'total'
              SummaryFormat = '#,0.00'
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
      object dgrReportColumn16: TdxDBGridColumn
        Caption = 'Company'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Nomor PO'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
        SummaryFooterType = cstCount
        SummaryFooterField = 'Total'
        SummaryFooterFormat = '#,0'
        SummaryType = cstCount
        SummaryField = 'Total'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'PRID'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Prid'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Terima'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JumTerima'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Disc'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'DPP'
        Sorted = csUp
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total'
        SummaryFooterFormat = '#,0.00'
        SummaryField = 'Total'
      end
      object dgrReportColumn20: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPN'
      end
      object dgrReportColumn21: TdxDBGridColumn
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Grandtotal'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Site'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteID'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Approved'
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Oto'
      end
      object dgrReportColumn17: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Username'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Caption = 'Note PO'
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'bnote'
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
    object bbExp: TBitBtn
      Left = 1032
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
      Left = 1076
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
    object cek1: TCheckBox
      Left = 570
      Top = 20
      Width = 87
      Height = 17
      Caption = 'ATK'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object cek2: TCheckBox
      Left = 570
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Inventaris'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object cek3: TCheckBox
      Left = 570
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Solar'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object cek4: TCheckBox
      Left = 670
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Ban'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object cek6: TCheckBox
      Left = 670
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Oli'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object cek7: TCheckBox
      Left = 786
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Sparepart'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object cek5: TCheckBox
      Left = 670
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Jasa'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object cek8: TCheckBox
      Left = 786
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Safety'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
    object CheckBox1: TCheckBox
      Left = 786
      Top = 52
      Width = 135
      Height = 17
      Caption = 'Maintenance'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 12
    end
    object cek9: TCheckBox
      Left = 898
      Top = 20
      Width = 119
      Height = 17
      Caption = 'Inventaris Unit'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object CheckBox2: TCheckBox
      Left = 898
      Top = 36
      Width = 119
      Height = 17
      Caption = 'Medical'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 14
    end
  end
  inherited paBottom: TPanel
    Top = 532
    Width = 1134
    inherited bbPreview: TBitBtn
      Left = -136
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = -42
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 32
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 856
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
      Left = 971
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
  object Button1: TButton [3]
    Left = 432
    Top = 64
    Width = 105
    Height = 25
    Caption = 'CARI BARANG '
    TabOrder = 3
    OnClick = Button1Click
  end
  object quReport: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      
        'SELECT B.WarehouseID,A.POID,C.ItemName,A.ItemID2 as ItemID,A.Pri' +
        'd,A.Jumlah,A.NoUnit,'
      
        'ISNULL((Select SUM(X.Jumlah) FROM APTrKonsinyasiDt X Where X.Not' +
        'e=A.PRID AND X.ItemID=A.ItemID2'
      
        'AND X.FgNum=A.NumAll),0) as JumTerima, A.UOMID,A.Price*(1-B.Disc' +
        '*0.01) as Price,A.Disc'
      
        ',A.Jumlah*A.Price*(1-B.Disc*0.01) as Total,B.SiteID, CONVERT(VAR' +
        'CHAR(12),B.Transdate,111) as Tgl'
      
        ',D.SuppName,C.TypeUnit, CASE WHEN A.FgOto='#39'Y'#39' THEN '#39'YA'#39' ELSE '#39'TI' +
        'DAK'#39' END as Oto,A.UpdUser as username'
      
        ',B.Note as bnote, A.Jumlah*A.Price*(1-B.Disc*0.01)*(B.NilaiTax*0' +
        '.01) as PPN,'
      
        'A.Jumlah*A.Price*(1-B.Disc*0.01)*(1+B.NilaiTax*0.01) as Grandtot' +
        'al'
      
        'FROM APTrPurchaseOrderDt A inner join APTrPurchaseOrderHd B on A' +
        '.POID=B.POID'
      
        'inner join INMsItem C on A.ItemID2=C.ItemID AND C.Jenis IN ('#39'XXX' +
        #39','#39'A'#39','#39'I'#39','#39'L'#39','#39'B'#39','#39'J'#39','#39'O'#39','#39'S'#39','#39'H'#39','#39'M'#39','#39'E'#39','#39'U'#39')'
      'inner join APMsSupplier D on D.SuppID=B.SuppID '
      
        'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '#39'20220901'#39' AND' +
        ' '#39'20220927'#39' ORDER BY B.TransDate')
    Left = 580
    Top = 8
    object quReportPOID: TStringField
      FieldName = 'POID'
    end
    object quReportItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quReportItemID: TStringField
      FieldName = 'ItemID'
    end
    object quReportPrid: TStringField
      FieldName = 'Prid'
      Size = 50
    end
    object quReportJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quReportJumTerima: TBCDField
      FieldName = 'JumTerima'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quReportUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quReportPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quReportDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quReportTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quReportSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quReportTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 12
    end
    object quReportSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quReportTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quReportOto: TStringField
      FieldName = 'Oto'
      ReadOnly = True
      Size = 5
    end
    object quReportWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
    object quReportUsername: TStringField
      FieldName = 'Username'
    end
    object quReportbnote: TStringField
      FieldName = 'bnote'
      Size = 500
    end
    object quReportNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quReportPPN: TBCDField
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quReportGrandtotal: TBCDField
      FieldName = 'Grandtotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = quReport
    Left = 608
    Top = 8
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 1032
    Top = 96
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 1084
    Top = 88
  end
end
