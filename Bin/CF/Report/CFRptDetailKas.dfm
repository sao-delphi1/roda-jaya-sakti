inherited fmCFRptDetailKas: TfmCFRptDetailKas
  Left = 342
  Top = 394
  Caption = 'Detail Kas'
  ClientWidth = 1211
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1211
    Height = 113
    inherited laTitle: TLabel
      Width = 190
      Caption = 'Laporan Detail Kas'
    end
    object Label1: TLabel
      Left = 424
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Transaksi :'
    end
    object grbKartu: TGroupBox
      Left = 3
      Top = 45
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
    object CheckBox1: TCheckBox
      Left = 424
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Kas Masuk'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 424
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Kas Keluar'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox3: TCheckBox
      Left = 424
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Bank Masuk'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox4: TCheckBox
      Left = 424
      Top = 72
      Width = 97
      Height = 17
      Caption = 'Bank Keluar'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox5: TCheckBox
      Left = 424
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Jurnal Umum'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object RadioGroup1: TRadioGroup
      Left = 728
      Top = 16
      Width = 185
      Height = 87
      Caption = '[ Tampilkan ]'
      ItemIndex = 0
      Items.Strings = (
        'Lokasi ini'
        'Semua Lokasi'
        'Head Office'
        'Semua Site')
      TabOrder = 6
    end
    object CheckBox6: TCheckBox
      Left = 568
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Pembayaran Hutang'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox7: TCheckBox
      Left = 568
      Top = 40
      Width = 145
      Height = 17
      Caption = 'Pelunasan Piutang'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  inherited paCenter: TPanel
    Top = 113
    Width = 1211
    Height = 381
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1209
      Height = 379
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'VoucherID'
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
      Font.Height = -12
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
      HeaderFont.Height = -12
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
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VoucherID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransDate'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'COA'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'COA Name'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Rincian'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Amount'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'D/K'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jenis'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Bank'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BankName'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Nama'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Actor'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BNote'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Cara Bayar'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOP'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Caption = 'No Cek/BG'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoBGCek'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KdCab'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Caption = 'TXN'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FlagKKBB'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1211
    inherited bbPreview: TBitBtn
      Left = 133
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 227
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 301
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 669
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
      Left = 784
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
      
        'select A.VoucherID,B.TransDate,A.RekeningID,C.RekeningName,A.Not' +
        'e,Amount,A.Jenis,D.BankName,'
      
        'ISNULL(E.SuppName,B.Actor) as Actor,B.Note as BNote,B.MOP,ISNULL' +
        '(B.KdCab,'#39'HO'#39') as KdCab,NoBGCek,FlagKKBB'
      'from CFTrKKBBDt A '
      'inner join CFTrKKBBHd b on A.VoucherID=B.VoucherID'
      'inner join CFMsRekening C on A.RekeningID=C.RekeningID'
      'LEFT join CFMsBank D on B.BankID=D.BankID'
      'LEFT JOIN '
      '(select suppid,suppname from APMsSupplier union all'
      
        'select custid,custname from ARMsCustomer ) as E on B.Actor=E.Sup' +
        'pID')
    Left = 896
    object quActVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 50
    end
    object quActTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 30
    end
    object quActRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quActAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActJenis: TStringField
      FieldName = 'Jenis'
      Size = 1
    end
    object quActBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
    object quActActor: TStringField
      FieldName = 'Actor'
      ReadOnly = True
      Size = 200
    end
    object quActBNote: TStringField
      FieldName = 'BNote'
      Size = 500
    end
    object quActMOP: TStringField
      FieldName = 'MOP'
      Size = 10
    end
    object quActKdCab: TStringField
      FieldName = 'KdCab'
      ReadOnly = True
      Size = 10
    end
    object quActNoBGCek: TStringField
      FieldName = 'NoBGCek'
      Size = 100
    end
    object quActFlagKKBB: TStringField
      FieldName = 'FlagKKBB'
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 956
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 988
    Top = 4
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
    Left = 924
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
