inherited fmAPRptBayarPO: TfmAPRptBayarPO
  Left = 253
  Top = 203
  Caption = 'Laporan Pembayaran PO'
  ClientHeight = 540
  ClientWidth = 1242
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1242
    Height = 81
    inherited laTitle: TLabel
      Visible = False
    end
    object DBText4: TDBText
      Left = 1151
      Top = 30
      Width = 67
      Height = 21
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'SuppName'
      DataSource = dsAct
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 4
      Width = 230
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object bbRefresh: TBitBtn
        Left = 129
        Top = 18
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
        Left = 4
        Top = 16
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 248
      Top = 4
      Width = 185
      Height = 72
      Caption = '[ Tampilkan PO ]'
      ItemIndex = 0
      Items.Strings = (
        'Belum Bayar'
        'Sudah Bayar'
        'Semua')
      TabOrder = 1
      OnClick = RadioGroup2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 440
      Top = 4
      Width = 185
      Height = 50
      Caption = '[ Company ]'
      ItemIndex = 0
      Items.Strings = (
        'Roda Jaya Sakti')
      TabOrder = 2
    end
  end
  inherited paCenter: TPanel
    Top = 81
    Width = 1242
    Height = 418
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 688
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
              SummaryField = 'total'
              SummaryFormat = '#,0.00'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
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
      object dgrReportColumn1: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Tgl PO'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Term'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Due Date'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JatuhTempo'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Total'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TTLPO'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bayar'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sisa'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Supplier'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 689
      Top = 1
      Width = 552
      Height = 416
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KonsinyasiInvID'
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
      DataSource = dsActDt
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
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'FPP'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KonsinyasiInvID'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'Tgl FPP'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransDate'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'Total'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TTLKJ'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bayar'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sisa'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 499
    Width = 1242
    inherited bbPreview: TBitBtn
      Left = 12
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 106
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 180
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 482
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
      Left = 597
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
      'select *,TTLPO-Bayar as Sisa from ('
      
        'select A.POID,A.SuppID,A.Term,A.Transdate,A.Term+A.Transdate as ' +
        'JatuhTempo,B.SuppName,A.TTLPO,'
      
        'ISNULL((SELECT SUM(CASE WHEN X.Jenis='#39'D'#39' THEN X.Amount ELSE X.Am' +
        'ount*-1 END)'
      
        'FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.Vouch' +
        'erID '
      
        'Where X.Note IN (SELECT DISTINCT Z.KonsinyasiInvID FROM APTrKons' +
        'inyasiInvSub Z Where Z.POID=A.POID) '
      
        'AND CONVERT(VARCHAR(10),Y.Transdate,112)<='#39'20210602'#39'),0) as Baya' +
        'r'
      'from APTrPurchaseOrderHd A'
      
        'inner join APMsSupplier B on A.SuppID=B.SuppID ) as K WHERE K.TT' +
        'LPO-K.Bayar<>0')
    object quActPOID: TStringField
      FieldName = 'POID'
    end
    object quActSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quActTerm: TIntegerField
      FieldName = 'Term'
      DisplayFormat = '#,0'
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/MM/YYYY'
    end
    object quActJatuhTempo: TDateTimeField
      FieldName = 'JatuhTempo'
      ReadOnly = True
      DisplayFormat = 'dd/MM/YYYY'
    end
    object quActSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quActTTLPO: TBCDField
      FieldName = 'TTLPO'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quActSisa: TBCDField
      FieldName = 'Sisa'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object quActDt: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsAct
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT K.*,K.TTLKJ-K.Bayar as Sisa FROM ('
      
        'select A.KonsinyasiInvID,B.TransDate,SubtotalM,SubtotalU,A.PPN,A' +
        '.DiscAmount,A.TTLKJ,A.pbbkb,A.ongkir,'
      
        'ISNULL((SELECT SUM(CASE WHEN X.Jenis='#39'D'#39' THEN X.Amount ELSE X.Am' +
        'ount*-1 END)'
      
        'FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.Vouch' +
        'erID '
      'Where X.Note=A.KonsinyasiInvID ),0) as Bayar'
      'from APTrKonsinyasiInvSub A '
      
        'inner join APTrKonsinyasiInvHd B on A.KonsinyasiInvID=B.Konsinya' +
        'siInvID'
      'WHERE A.POID=:POID ) as K')
    Left = 384
    Top = 4
    object quActDtKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quActDtSubtotalM: TBCDField
      FieldName = 'SubtotalM'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtSubtotalU: TBCDField
      FieldName = 'SubtotalU'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtDiscAmount: TBCDField
      FieldName = 'DiscAmount'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtpbbkb: TBCDField
      FieldName = 'pbbkb'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtongkir: TBCDField
      FieldName = 'ongkir'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActDtBayar: TBCDField
      FieldName = 'Bayar'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quActDtSisa: TBCDField
      FieldName = 'Sisa'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quActDtTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dsActDt: TDataSource
    DataSet = quActDt
    OnStateChange = dsActDtStateChange
    Left = 412
    Top = 4
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
