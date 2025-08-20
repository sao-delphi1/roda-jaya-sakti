inherited fmRekapConfirmMR: TfmRekapConfirmMR
  Left = 219
  Top = 123
  Caption = 'Rekap Konfirmasi MR'
  ClientWidth = 1564
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1564
    Height = 46
    inherited laTitle: TLabel
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 0
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
      Left = 339
      Top = 6
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
      Left = 488
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Show All Site'
      TabOrder = 2
    end
    object RadioGroup2: TRadioGroup
      Left = 616
      Top = 0
      Width = 265
      Height = 41
      Caption = '[ Tanggal MR ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Periode dari sampai'
        'Periode s/d')
      TabOrder = 3
      OnClick = RadioGroup2Click
    end
    object grbKartu: TGroupBox
      Left = 885
      Top = 0
      Width = 311
      Height = 41
      Caption = '[ Periode ]'
      TabOrder = 4
      object Label2: TLabel
        Left = 24
        Top = 18
        Width = 25
        Height = 13
        Caption = 'Dari :'
      end
      object Label3: TLabel
        Left = 152
        Top = 19
        Width = 41
        Height = 13
        Caption = 'Sampai :'
      end
      object dtpSmp: TDateTimePicker
        Left = 200
        Top = 15
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
        TabOrder = 0
      end
      object dtpDari: TDateTimePicker
        Left = 56
        Top = 15
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
        TabOrder = 1
      end
    end
  end
  inherited paCenter: TPanel
    Top = 46
    Width = 1564
    Height = 484
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1562
      Height = 482
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
        Caption = 'MRID'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Part Number'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Type Unit'
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'typeunit'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
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
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_MR'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MRuser'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_PR'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRuser'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_PO'
      end
      object dgrReportColumn19: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POUser'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Tgl_HO'
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_terima_HO'
      end
      object dgrReportColumn20: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOuser'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_SJ'
      end
      object dgrReportColumn22: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SJuser'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_Terima'
      end
      object dgrReportColumn21: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TerimaUser'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_Keluar'
      end
      object dgrReportColumn23: TdxDBGridColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KeluarUser'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Tgl_Finish'
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl_Pasang'
      end
      object dgrReportColumn24: TdxDBGridColumn
        Caption = 'Finish User'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PasangUser'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Interval1'
      end
      object dgrReportColumn25: TdxDBGridColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Interval2'
      end
      object dgrReportColumn26: TdxDBGridColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Interval3'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1564
    inherited bbPreview: TBitBtn
      Left = 510
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 604
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 678
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1338
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
      Left = 1453
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
      
        'SELECT K.*,DATEDIFF(day,K.Tgl_MR,ISNULL(K.Tgl_Terima,GETDATE()))' +
        ' as Interval1,'
      
        'CASE WHEN DATEDIFF(day,ISNULL(K.Tgl_Keluar,GETDATE()),ISNULL(K.T' +
        'gl_Pasang,GETDATE()))<0 THEN 0 ELSE'
      
        'DATEDIFF(day,ISNULL(K.Tgl_Keluar,GETDATE()),ISNULL(K.Tgl_Pasang,' +
        'GETDATE())) END as Interval2,'
      
        'DATEDIFF(day,K.Tgl_MR,ISNULL(K.Tgl_Pasang,GETDATE())) as Interva' +
        'l3 FROM ('
      
        'select A.PRID,A.ItemID,C.ItemName,C.typeunit,A.NoUnit,A.Qty,C.UO' +
        'MID,B.Transdate as Tgl_MR,B.UpdUser as MRuser,'
      'ISNULL(E.Transdate,null) as Tgl_PR,E.UpdUser as PRuser,'
      
        'ISNULL((select TOP 1 Y.Transdate from APTrPurchaseOrderDt X inne' +
        'r join APTrPurchaseOrderHd Y on X.POID=Y.POID '
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.Transdate DESC),null) as Tgl_PO,'
      
        'ISNULL((select TOP 1 Y.UpdUser from APTrPurchaseOrderDt X inner ' +
        'join APTrPurchaseOrderHd Y on X.POID=Y.POID '
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.Transdate DESC),null) as POUser,'
      
        'ISNULL((select TOP 1 Y.Transdate from APTrKonsinyasiDt X inner j' +
        'oin APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID'
      
        'WHERE X.ItemID=D.ItemID AND X.Note=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.Transdate DESC),null) as Tgl_terima_HO,'
      
        'ISNULL((select TOP 1 Y.UpdUser from APTrKonsinyasiDt X inner joi' +
        'n APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID'
      
        'WHERE X.ItemID=D.ItemID AND X.Note=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.Transdate DESC),null) as HOuser,'
      
        'ISNULL((select TOP 1 Y.TransferDate from INTrTransferItemDt X in' +
        'ner join INTrTransferItemHd Y on X.TransferID=Y.TransferID'
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.TransferDate DESC),null) as Tgl_SJ,'
      
        'ISNULL((select TOP 1 Y.UpdUser from INTrTransferItemDt X inner j' +
        'oin INTrTransferItemHd Y on X.TransferID=Y.TransferID'
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.TransferDate DESC),null) as SJuser,'
      
        'ISNULL((select TOP 1 Y.Transdate from INTrAdjustmentDt X inner j' +
        'oin INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus='#39'T'#39
      'WHERE X.ItemID=D.ItemID AND Y.nosj IN ('
      
        'select TOP 1 X.TransferID from INTrTransferItemDt X inner join I' +
        'NTrTransferItemHd Y on X.TransferID=Y.TransferID'
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.TransferDate DESC)),null) as Tgl_Terima,'
      
        'ISNULL((select TOP 1 Y.UpdUser from INTrAdjustmentDt X inner joi' +
        'n INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus='#39'T'#39
      'WHERE X.ItemID=D.ItemID AND Y.nosj IN ('
      
        'select TOP 1 X.TransferID from INTrTransferItemDt X inner join I' +
        'NTrTransferItemHd Y on X.TransferID=Y.TransferID'
      
        'WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll o' +
        'rder by Y.TransferDate DESC)),null) as TerimaUser,'
      
        'ISNULL((select TOP 1 Y.Transdate from INTrAdjustmentDt X inner j' +
        'oin INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus='#39'K'#39
      'WHERE X.ItemID=D.ItemID AND X.MRID=A.PRID),null) as Tgl_Keluar,'
      
        'ISNULL((select TOP 1 Y.UpdUser from INTrAdjustmentDt X inner joi' +
        'n INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus='#39'K'#39
      'WHERE X.ItemID=D.ItemID AND X.MRID=A.PRID),null) as KeluarUser,'
      'ISNULL(A.ConfirmDate,null) as Tgl_Pasang,'
      'ISNULL(A.confirmby,null) as PasangUser'
      'from APTrPurchaseRequestDt A '
      
        'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID and B.FgForm' +
        '='#39'MR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID '
      
        'LEFT JOIN AptrpurchaseRequestDt D on A.PRID=D.MRID And D.FgNum=A' +
        '.NumAll AND A.ItemID=D.ItemID'
      'LEFT JOIN AptrpurchaseRequesthd E on D.PRID=E.PRID ) as K')
    Left = 512
    Top = 56
    object quActPRID: TStringField
      FieldName = 'PRID'
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActtypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActTgl_MR: TDateTimeField
      FieldName = 'Tgl_MR'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActMRuser: TStringField
      FieldName = 'MRuser'
    end
    object quActTgl_PR: TDateTimeField
      FieldName = 'Tgl_PR'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActPRuser: TStringField
      FieldName = 'PRuser'
    end
    object quActTgl_PO: TDateTimeField
      FieldName = 'Tgl_PO'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActPOUser: TStringField
      FieldName = 'POUser'
      ReadOnly = True
    end
    object quActTgl_terima_HO: TDateTimeField
      FieldName = 'Tgl_terima_HO'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActHOuser: TStringField
      FieldName = 'HOuser'
      ReadOnly = True
    end
    object quActTgl_SJ: TDateTimeField
      FieldName = 'Tgl_SJ'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActSJuser: TStringField
      FieldName = 'SJuser'
      ReadOnly = True
    end
    object quActTgl_Terima: TDateTimeField
      FieldName = 'Tgl_Terima'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActTerimaUser: TStringField
      FieldName = 'TerimaUser'
      ReadOnly = True
    end
    object quActTgl_Keluar: TDateTimeField
      FieldName = 'Tgl_Keluar'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActKeluarUser: TStringField
      FieldName = 'KeluarUser'
      ReadOnly = True
    end
    object quActTgl_Pasang: TDateTimeField
      FieldName = 'Tgl_Pasang'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActPasangUser: TStringField
      FieldName = 'PasangUser'
      ReadOnly = True
      Size = 50
    end
    object quActInterval1: TIntegerField
      FieldName = 'Interval1'
      ReadOnly = True
    end
    object quActInterval2: TIntegerField
      FieldName = 'Interval2'
      ReadOnly = True
    end
    object quActInterval3: TIntegerField
      FieldName = 'Interval3'
      ReadOnly = True
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 572
    Top = 56
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 604
    Top = 56
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
    Left = 540
    Top = 56
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
