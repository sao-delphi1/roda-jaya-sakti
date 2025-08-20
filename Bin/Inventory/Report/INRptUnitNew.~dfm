inherited fmRptUnitNew: TfmRptUnitNew
  Left = 141
  Top = 77
  Caption = 'Laporan Pengeluaran Per Unit'
  ClientWidth = 1343
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1343
    Height = 121
    inherited laTitle: TLabel
      Visible = False
    end
    object Label1: TLabel
      Left = 245
      Top = 72
      Width = 57
      Height = 13
      Caption = 'Group Unit :'
    end
    object grbKartu: TGroupBox
      Left = 8
      Top = 6
      Width = 397
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label2: TLabel
        Left = 14
        Top = 25
        Width = 25
        Height = 13
        Caption = 'Dari :'
      end
      object Label3: TLabel
        Left = 146
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
      object dt1: TdxDateEdit
        Left = 43
        Top = 20
        Width = 99
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 190
        Top = 20
        Width = 100
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 244
      Top = 90
      Width = 43
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
      Left = 286
      Top = 90
      Width = 113
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
    object RadioGroup1: TRadioGroup
      Left = 413
      Top = 16
      Width = 244
      Height = 61
      Caption = '[ Tampilkan Harga ]'
      ItemIndex = 0
      Items.Strings = (
        'Harga Beli Terakhir'
        'Modal Pada Master'
        'Harga Jual Master')
      TabOrder = 3
    end
    object CheckBox8: TCheckBox
      Left = 414
      Top = 77
      Width = 227
      Height = 17
      Caption = 'Ambil Harga Modal Jika Harga Beli Kosong'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 65
      Width = 97
      Height = 17
      Caption = 'Sparepart'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 81
      Width = 97
      Height = 17
      Caption = 'Ban'
      TabOrder = 6
    end
    object CheckBox5: TCheckBox
      Left = 104
      Top = 65
      Width = 97
      Height = 17
      Caption = 'Oli'
      TabOrder = 7
    end
    object CheckBox6: TCheckBox
      Left = 104
      Top = 81
      Width = 97
      Height = 17
      Caption = 'Kanibal Unit'
      TabOrder = 8
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 97
      Width = 97
      Height = 17
      Caption = 'Solar'
      TabOrder = 9
    end
  end
  inherited paCenter: TPanel
    Top = 121
    Width = 1343
    Height = 373
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1341
      Height = 371
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
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Lokasi'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Caption = 'Layout'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LayoutID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'No Nota'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Type Unit'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID2'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Status'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Keperluan'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'keperluan'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'No Ban'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'nomorban'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KM'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Harga'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LHarga'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total'
        SummaryFooterFormat = '#,0.00'
        SummaryType = cstSum
        SummaryField = 'Total'
        SummaryFormat = '#,0.00'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1343
    inherited bbPreview: TBitBtn
      Left = 105
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 199
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 273
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 851
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
      Left = 966
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
    OnCalcFields = quActCalcFields
    SQL.Strings = (
      'SELECT TOP 1 K.*,'
      'K.WarehouseID as Lokasi FROM ( '
      
        'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.Tran' +
        'sDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit' +
        ','#39'-'#39') as NoUnit,A.Qty as Jumlah,C.UOMID2, '
      
        #39'Pakai'#39' as Status,A.Alasan as Note,A.keperluan,A.nomorban,A.KMaw' +
        'al as KM,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID'
      'from INTrAdjustmentDt A '
      
        'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagI' +
        'N='#39'PG'#39' '
      'inner join INMsItem C on A.ItemID=C.ItemId '
      'Where A.FgStatus IN ('#39'K'#39') '
      'UNION ALL '
      
        'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.Tran' +
        'sDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit' +
        ','#39'-'#39') as NoUnit,A.Qty,C.UOMID2, '
      #39'Pakai'#39' as Status,A.Alasan as Note,'
      'CASE WHEN A.keperluan='#39'H'#39' THEN '#39'Hauling'#39' '
      '     WHEN A.keperluan='#39'P'#39' THEN '#39'Produksi'#39' '
      '     WHEN A.keperluan='#39'J'#39' THEN '#39'Jetty'#39' '
      '     WHEN A.keperluan='#39'B'#39' THEN '#39'Alat Bantu'#39' '
      '     WHEN A.keperluan='#39'R'#39' THEN '#39'Alat Rental'#39' '
      
        '     WHEN A.keperluan='#39'M'#39' THEN '#39'Peminjaman'#39' ELSE '#39'Operasional'#39' E' +
        'ND as Keperluan,A.nomorban,A.KMAwal,C.UserPrice,B.WarehouseID,C.' +
        'DealerPrice,A.LayoutID '
      'from INTrAdjustmentDt A '
      
        'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagI' +
        'N='#39'PS'#39' '
      'inner join INMsItem C on A.ItemID=C.ItemId '
      'Where A.FgStatus IN ('#39'K'#39') '
      'UNION ALL '
      
        'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.Tran' +
        'sDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit' +
        ','#39'-'#39') as NoUnit,A.Qty,C.UOMID2, '
      
        'CASE WHEN A.FgStatus='#39'L'#39' THEN '#39'Spare'#39' WHEN A.FgStatus='#39'K'#39' THEN '#39 +
        'Pasang'#39' END as Status,A.Alasan as Note, '
      
        '(CASE WHEN A.statusban='#39'BR'#39' THEN '#39'Baru'#39' ELSE '#39'Bekas'#39' END),A.nomo' +
        'rban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID' +
        ' '
      'from INTrAdjustmentDt A '
      
        'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagI' +
        'N='#39'TB'#39' '
      'inner join INMsItem C on A.ItemID=C.ItemId '
      'Where A.FgStatus IN ('#39'K'#39','#39'T'#39','#39'S'#39') '
      'UNION ALL '
      
        'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.Tran' +
        'sDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
      
        'ISNULL(A.NoUnit,'#39'-'#39') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgSta' +
        'tus='#39'O'#39' THEN '#39'Tambah Oli'#39' ELSE '#39'Ganti Oli'#39' END as Status,A.Alasa' +
        'n as Note, '
      #39#39', '
      
        'A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,A.La' +
        'youtID '
      
        'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.Trans' +
        'ID=B.TransID AND B.FlagIN='#39'PO'#39' '
      
        'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (' +
        #39'K'#39','#39'O'#39') '
      'UNION ALL '
      
        'select '#39'KAN'#39',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDa' +
        'te,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,'#39'-' +
        #39') as NoUnit, '
      
        'A.Qty,C.UOMID2,'#39'Kanibal Unit dari '#39'+B.NoUnitSrc,'#39#39','#39#39','#39#39',B.KM,C.' +
        'UserPrice,B.WarehouseID,C.DealerPrice,'#39#39' '
      
        'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.T' +
        'ransID AND B.Fgoto='#39'Y'#39' '
      'inner join INMsItem C on A.ItemID=C.ItemID '
      
        ') as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID' +
        ' LEFT JOIN INMsNoUnit M on K.NoUnit=M.NoUnit ')
    Top = 65532
    object quActFlagIN: TStringField
      FieldName = 'FlagIN'
      ReadOnly = True
      Size = 50
    end
    object quActTransID: TStringField
      FieldName = 'TransID'
      ReadOnly = True
      Size = 50
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 12
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      ReadOnly = True
      Size = 150
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      ReadOnly = True
      Size = 100
    end
    object quActTypeUnit: TStringField
      FieldName = 'TypeUnit'
      ReadOnly = True
      Size = 100
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      ReadOnly = True
      Size = 50
    end
    object quActJumlah: TBCDField
      FieldName = 'Jumlah'
      ReadOnly = True
      Precision = 18
    end
    object quActUOMID2: TStringField
      FieldName = 'UOMID2'
      ReadOnly = True
    end
    object quActStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 68
    end
    object quActNote: TStringField
      FieldName = 'Note'
      ReadOnly = True
      Size = 150
    end
    object quActkeperluan: TStringField
      FieldName = 'keperluan'
      ReadOnly = True
      Size = 100
    end
    object quActnomorban: TStringField
      FieldName = 'nomorban'
      ReadOnly = True
    end
    object quActKM: TStringField
      FieldName = 'KM'
      ReadOnly = True
      Size = 50
    end
    object quActUserPrice: TBCDField
      FieldName = 'UserPrice'
      ReadOnly = True
      Precision = 18
    end
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
      ReadOnly = True
      Size = 50
    end
    object quActDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      ReadOnly = True
      Precision = 18
    end
    object quActLokasi: TStringField
      FieldName = 'Lokasi'
      ReadOnly = True
      Size = 50
    end
    object quActTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActLHarga: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LHarga'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quActLayoutID: TStringField
      FieldName = 'LayoutID'
      ReadOnly = True
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
    Top = 65532
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 560
    Top = 8
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 588
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
