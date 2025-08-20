inherited fmINRptKanibal: TfmINRptKanibal
  Caption = 'Laporan Kanibal Unit'
  ClientHeight = 565
  ClientWidth = 1370
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1370
    inherited laTitle: TLabel
      Width = 162
      Caption = 'Laporan Kanibal'
    end
  end
  inherited paCenter: TPanel
    Width = 1370
    Height = 483
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
      Width = 1368
      Height = 410
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
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
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kerusakan'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Penyebab'
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Objection'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Action Plan'
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ActionPlan'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Komponen Awal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CompanySrc'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Unit Awal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnitSrc'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Type Awal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUn'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'KM Awal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KMSrc'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Komponen Akhir'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Company'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'Unit Akhir'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Type Akhir'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Description'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Caption = 'KM Akhir'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KM'
      end
      object dgrReportColumn17: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Otorisasi'
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 416
      Top = 8
      Width = 185
      Height = 57
      Caption = '[ Status Otorisasi ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Reject'
        'Pending'
        'Approved')
      TabOrder = 2
    end
  end
  inherited paBottom: TPanel
    Top = 524
    Width = 1370
    inherited bbPreview: TBitBtn
      Left = 458
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 552
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 626
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1146
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
      Left = 1260
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
      'select A.TransID,'
      'X.ItemID,X.Kerusakan,X.Note as Keterangan,X.Qty,'
      '           CASE WHEN X.ActionPlan='#39'OC'#39' THEN '#39'ORDER COMPONENT'#39' '
      '                WHEN X.ActionPlan='#39'RON'#39' THEN '#39'REPAIR ON SITE'#39' '
      '                ELSE '#39'REPAIR OFF SITE'#39' END AS ActionPlan, '
      '           CASE WHEN X.Objection='#39'NW'#39' THEN '#39'NORMAL WEAR'#39' '
      '                WHEN X.Objection='#39'PM'#39' THEN '#39'POOR MAINTENANCE'#39' '
      '                WHEN X.Objection='#39'PO'#39' THEN '#39'POOR OPERATION'#39' '
      '                WHEN X.Objection='#39'PF'#39' THEN '#39'PREMATURE FEATURE'#39' '
      '                WHEN X.Objection='#39'AC'#39' THEN '#39'ACCIDENT'#39' '
      '                ELSE '#39'OTHERS'#39' END AS Objection,'
      '           X.UpdDate,X.UpdUser,Y.ItemName,Y.UOMID,'
      'CASE WHEN A.Company='#39'RJS'#39' THEN '#39'RODA JAYA SAKTI'#39
      '     WHEN A.Company='#39'EBTL'#39' THEN '#39'ERA BARU TIMUR LESTARI'#39
      #9' WHEN A.Company='#39'DIL'#39' THEN '#39'DIMAS INDOMINERAL LAMPUNG'#39
      #9' WHEN A.Company='#39'OJP'#39' THEN '#39'OPTIMA JAYA PERKASA'#39
      #9' WHEN A.Company='#39'GP'#39' THEN '#39'GITA PERKASA'#39
      #9' WHEN A.Company='#39'IUP'#39' THEN '#39'INTI UTAMA PERKASA'#39
      #9' WHEN A.Company='#39'IGS'#39' THEN '#39'INDO GEMILANG SEJAHTERA'#39
      #9' WHEN A.Company='#39'AGT'#39' THEN '#39'ARAGATA MANDIRI SEJATI'#39
      #9' WHEN A.Company='#39'AT'#39' THEN '#39'ANDALAS TEKNIK'#39
      #9' ELSE '#39'KAISAR'#39' END AS Company,'
      'A.TransDate,A.SiteID,A.NoUnit,A.TypeUnit,'
      'CASE WHEN A.CompanySrc='#39'RJS'#39' THEN '#39'RODA JAYA SAKTI'#39
      '     WHEN A.CompanySrc='#39'EBTL'#39' THEN '#39'ERA BARU TIMUR LESTARI'#39
      #9' WHEN A.CompanySrc='#39'DIL'#39' THEN '#39'DIMAS INDOMINERAL LAMPUNG'#39
      #9' WHEN A.CompanySrc='#39'OJP'#39' THEN '#39'OPTIMA JAYA PERKASA'#39
      #9' WHEN A.CompanySrc='#39'GP'#39' THEN '#39'GITA PERKASA'#39
      #9' WHEN A.CompanySrc='#39'IUP'#39' THEN '#39'INTI UTAMA PERKASA'#39
      #9' WHEN A.CompanySrc='#39'IGS'#39' THEN '#39'INDO GEMILANG SEJAHTERA'#39
      #9' WHEN A.CompanySrc='#39'AGT'#39' THEN '#39'ARAGATA MANDIRI SEJATI'#39
      #9' WHEN A.CompanySrc='#39'AT'#39' THEN '#39'ANDALAS TEKNIK'#39
      #9' ELSE '#39'KAISAR'#39' END AS CompanySrc,'
      
        'A.NoUnitSrc,A.TypeUnitSrc,A.KM,A.KMSrc,A.Note,A.SiteSrc,C.SiteNa' +
        'me,B.SiteName as SiteNama,'
      'D.Description,E.Description as TypeUn,'#39'REJECTED'#39' as Otorisasi'
      'from INTrKanibalDt X '
      'inner join INTrKanibalHd A on A.TransID=X.TransID'
      'inner join INMsSites B on A.SiteID=B.SiteID'
      'inner join INMsSites C on A.SiteSrc=C.SiteID'
      'inner join INMsNoUnit D on A.NoUnit=D.NoUnit'
      'inner join INMsNoUnit E on A.NoUnitSrc=E.NoUnit'
      'inner join INMsItem Y on X.ItemID=Y.ItemID '
      '')
    Left = 588
    Top = 64
    object quReportTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quReportItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quReportKerusakan: TStringField
      FieldName = 'Kerusakan'
      Size = 500
    end
    object quReportKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object quReportQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quReportActionPlan: TStringField
      FieldName = 'ActionPlan'
      ReadOnly = True
      Size = 15
    end
    object quReportObjection: TStringField
      FieldName = 'Objection'
      ReadOnly = True
      Size = 17
    end
    object quReportUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quReportUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quReportItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quReportUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quReportCompany: TStringField
      FieldName = 'Company'
      ReadOnly = True
      Size = 25
    end
    object quReportTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quReportSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quReportNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quReportTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quReportCompanySrc: TStringField
      FieldName = 'CompanySrc'
      ReadOnly = True
      Size = 25
    end
    object quReportNoUnitSrc: TStringField
      FieldName = 'NoUnitSrc'
      Size = 50
    end
    object quReportTypeUnitSrc: TStringField
      FieldName = 'TypeUnitSrc'
      Size = 50
    end
    object quReportKM: TStringField
      FieldName = 'KM'
      Size = 50
    end
    object quReportKMSrc: TStringField
      FieldName = 'KMSrc'
      Size = 50
    end
    object quReportNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quReportSiteSrc: TStringField
      FieldName = 'SiteSrc'
      Size = 50
    end
    object quReportSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quReportSiteNama: TStringField
      FieldName = 'SiteNama'
      Size = 100
    end
    object quReportDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object quReportTypeUn: TStringField
      FieldName = 'TypeUn'
      Size = 100
    end
    object quReportOtorisasi: TStringField
      FieldName = 'Otorisasi'
      ReadOnly = True
      Size = 8
    end
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = quReport
    Left = 616
    Top = 64
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
