inherited fmRptHutang: TfmRptHutang
  Left = 134
  Top = 277
  Caption = 'Laporan Rekap Hutang Supplier'
  ClientWidth = 1568
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1568
    Height = 88
    inherited laTitle: TLabel
      Enabled = False
      Visible = False
    end
    object grbKartu: TGroupBox
      Left = 419
      Top = 4
      Width = 271
      Height = 75
      Caption = '[ Payment Until ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object bbRefresh: TBitBtn
        Left = 149
        Top = 30
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
      object dtpDari: TDateTimePicker
        Left = 16
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
    object CheckBox1: TCheckBox
      Left = 696
      Top = 16
      Width = 150
      Height = 17
      Caption = 'APPROVED'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 696
      Top = 40
      Width = 150
      Height = 17
      Caption = 'WAITING'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 696
      Top = 64
      Width = 150
      Height = 17
      Caption = 'REJECTED'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 872
      Top = 7
      Width = 681
      Height = 69
      Caption = '[ FPP ]'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Pembelian PO/Tanpa PO'
        'Pembelian PO'
        'Pembelian Tanpa PO'
        'Pengajuan Kas')
      ParentFont = False
      TabOrder = 4
    end
    object RadioGroup2: TRadioGroup
      Left = 8
      Top = 7
      Width = 97
      Height = 69
      Caption = '[ Show ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'All'
        'Period')
      ParentFont = False
      TabOrder = 5
      OnClick = RadioGroup2Click
    end
    object GroupBox1: TGroupBox
      Left = 107
      Top = 4
      Width = 310
      Height = 75
      Caption = '[ Period ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
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
    object GroupBox2: TGroupBox
      Left = 107
      Top = 4
      Width = 154
      Height = 75
      Caption = '[ All ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object DateTimePicker3: TDateTimePicker
        Left = 16
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
    end
  end
  inherited paCenter: TPanel
    Top = 88
    Width = 1568
    Height = 406
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1566
      Height = 404
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'No_FPP'
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
      OnDblClick = dgrReportDblClick
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
      object dgrReportColumn2: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tanggal'
      end
      object dgrReportColumn1: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'No_FPP'
      end
      object dgrReportColumn21: TdxDBGridColumn
        Caption = 'Site'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Keperluan'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Supplier'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SubTotal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'SubTotal'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'SubTotal'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ongkir'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PBBKB'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Discount'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Disc'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Disc'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'Disc'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPN'
        SummaryFooterType = cstSum
        SummaryFooterField = 'PPN'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'PPN'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Total'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TTLKS'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TTLKS'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'TTLKS'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Caption = 'Pembayaran'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bayar'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Bayar'
        SummaryFooterFormat = '#,0'
        SummaryType = cstSum
        SummaryField = 'Bayar'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sisa'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Sisa'
        SummaryFooterFormat = '#,0'
        SummaryField = 'Sisa'
        SummaryFormat = '#,0'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Approval'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Otoby'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPh21'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPh23'
      end
      object dgrReportColumn20: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPh15'
      end
      object dgrReportColumn22: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPh26'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PPH42'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Rekening'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'norek'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Bank'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'bankname'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1568
    inherited bbPreview: TBitBtn
      Left = 882
      Top = 49
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 976
      Top = 49
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 1050
      Top = 49
      Enabled = False
      Visible = False
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 13
      Width = 369
      Height = 17
      Caption = 'TAMPILKAN YANG BELUM DIBAYAR'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox3Click
    end
    object bbExcel: TBitBtn
      Left = 669
      Top = 6
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 4
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
      Left = 784
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 5
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
      
        'select '#39'1'#39' as Kode,CONVERT(VARCHAR(10),A.TransDate,111) as Tangg' +
        'al,A.KonsinyasiInvId as No_FPP,A.Note,B.norek,B.bankname,'
      'B.SuppName,A.SubTotal,A.Ongkir,A.PBBKB,A.PPN,A.Disc,A.TTLKS,'
      
        'CASE WHEN A.FgOto='#39'Y'#39' THEN '#39'APPROVED'#39' WHEN A.FgOto='#39'T'#39' THEN '#39'WAI' +
        'TING'#39' ELSE '#39'REJECTED'#39' END as Approval,A.Otoby,'
      
        'ISNULL((CASE WHEN B.FgCompany='#39'O'#39' THEN (CASE WHEN B.FgNPWP='#39'Y'#39' T' +
        'HEN (A.SubTotalJ/2*5/100) ELSE (A.SubTotalJ/2*5/100)*20/100 END)' +
        ' ELSE 0 END),0) as PPh21,'
      
        'ISNULL((CASE WHEN B.FgCompany='#39'P'#39' THEN A.SubTotalJ*2/100 ELSE 0 ' +
        'END),0) as PPh23,A.PPH as PPH42,A.PPh15,A.PPh26,'
      
        'ISNULL((SELECT SUM(CASE WHEN X.Jenis='#39'D'#39' THEN X.Amount ELSE X.Am' +
        'ount*-1 END) FROM CFtrKKBBDt X Where X.Note=A.KonsinyasiInvID),0' +
        ') as Bayar,'
      'A.SiteID,A.TTLKS as Sisa'
      'from APTrKonsinyasiInvHd A'
      'inner join APMsSupplier B on A.SuppID=B.SuppID')
    object quActTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quActNo_FPP: TStringField
      FieldName = 'No_FPP'
      Size = 50
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quActnorek: TStringField
      FieldName = 'norek'
      Size = 100
    end
    object quActbankname: TStringField
      FieldName = 'bankname'
      Size = 100
    end
    object quActSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quActSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActTTLKS: TBCDField
      FieldName = 'TTLKS'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActApproval: TStringField
      FieldName = 'Approval'
      ReadOnly = True
      Size = 8
    end
    object quActOtoby: TStringField
      FieldName = 'Otoby'
      Size = 50
    end
    object quActPPh21: TBCDField
      FieldName = 'PPh21'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 14
    end
    object quActPPh23: TBCDField
      FieldName = 'PPh23'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 24
      Size = 8
    end
    object quActPPH42: TBCDField
      FieldName = 'PPH42'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quActKode: TStringField
      FieldName = 'Kode'
      ReadOnly = True
      Size = 1
    end
    object quActSisa: TBCDField
      FieldName = 'Sisa'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActOngkir: TBCDField
      FieldName = 'Ongkir'
      DisplayFormat = '#,0'
      Precision = 18
      Size = 0
    end
    object quActPBBKB: TBCDField
      FieldName = 'PBBKB'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActPPh15: TBCDField
      FieldName = 'PPh15'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quActPPh26: TBCDField
      FieldName = 'PPh26'
      Precision = 18
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
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
