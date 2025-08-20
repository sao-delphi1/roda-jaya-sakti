inherited fmAPRptPOBlmTerima: TfmAPRptPOBlmTerima
  Left = 308
  Top = 296
  Caption = 'Laporan PO Belum diterima'
  ClientWidth = 1370
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1370
    Height = 66
    inherited laTitle: TLabel
      Visible = False
    end
    object Label1: TLabel
      Left = 568
      Top = 35
      Width = 17
      Height = 13
      Caption = 'hari'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 290
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 99
        Top = 18
        Width = 16
        Height = 13
        Caption = 's/d'
      end
      object dt1: TdxDateEdit
        Left = 7
        Top = 14
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object bbCancel: TdxButton
        Left = 211
        Top = 13
        Width = 72
        Height = 23
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Version = '1.0.2e'
        OnClick = bbCancelClick
        Caption = 'REFRESH'
        TabOrder = 1
      end
      object dt2: TdxDateEdit
        Left = 121
        Top = 14
        Width = 87
        TabOrder = 2
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object CheckBox1: TCheckBox
      Left = 368
      Top = 14
      Width = 169
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object ComboBox1: TComboBox
      Left = 304
      Top = 21
      Width = 57
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'RJS'
      Items.Strings = (
        'RJS'
        'TIM'
        'TPM')
    end
    object CheckBox2: TCheckBox
      Left = 368
      Top = 34
      Width = 153
      Height = 17
      Caption = 'Tampilkan sudah lebih dari'
      TabOrder = 3
    end
    object dxTahun: TdxSpinEdit
      Left = 521
      Top = 29
      Width = 42
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      StyleController = SCEdit
      Value = 3
    end
  end
  inherited paCenter: TPanel
    Top = 66
    Width = 1370
    Height = 428
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1368
      Height = 426
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
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandColor = clMoneyGreen
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
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
        Caption = 'Tanggal'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Transdate'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Nomor PO'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Nomor PR'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Nama Supplier'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Type Unit'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeUnit'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Nomor Unit'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Caption = 'Terima'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'terima'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sisa'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Caption = 'Site'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteID'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1370
    inherited bbPreview: TBitBtn
      Left = 264
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 358
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 432
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 1007
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
    object BitBtn1: TBitBtn
      Left = 1122
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
      OnClick = BitBtn1Click
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
      
        'SELECT K.POID,K.Transdate,K.PRID,M.SuppName,K.ItemID,L.ItemName,' +
        'K.TypeUnit,K.NoUnit,K.Qty,K.UOMID,K.terima,ISNULL(K.Qty-K.Terima' +
        ',0) as Sisa,K.SiteID,K.WarehouseID FROM ('
      
        'select A.POID,A.ItemID2 as ItemID,A.UOMID,A.TypeUnit,A.NoUnit,A.' +
        'Qty,B.Transdate,A.Price,B.SiteID,B.WarehouseID,B.SuppID,A.PRID,'
      'ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X '
      
        'Where X.Note=A.PRID AND X.POID=A.POID AND X.ItemID=A.ItemID2 AND' +
        ' X.FgNum=A.NumAll),0) as Terima'
      
        'from APTrPurchaseOrderDt A inner join APTrPurchaseOrderHd B on A' +
        '.POID=B.POID AND B.warehouseID='#39'RJS'#39
      ') as K'
      'INNER JOIN INMsItem L on K.ItemID=L.ItemID AND L.Ctk='#39'Y'#39
      'INNER JOIN APMsSupplier M on K.SuppID=M.SuppID'
      'WHERE K.Qty-K.Terima<>0')
    Left = 584
    object quActPOID: TStringField
      FieldName = 'POID'
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quActPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quActSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActterima: TBCDField
      FieldName = 'terima'
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
    object quActSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
    Left = 612
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
