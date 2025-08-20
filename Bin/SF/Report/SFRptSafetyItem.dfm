inherited fmSFRptSafetyItem: TfmSFRptSafetyItem
  Left = 434
  Top = 216
  Caption = 'Laporan Barang Safety'
  ClientHeight = 623
  ClientWidth = 1180
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1180
    Height = 105
    inherited laTitle: TLabel
      Left = 108
      Visible = False
    end
    object RadioGroup2: TRadioGroup
      Left = 152
      Top = 7
      Width = 97
      Height = 90
      Caption = '[ Show ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Until'
        'Period'
        'Month')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup2Click
    end
    object GroupBox2: TGroupBox
      Left = 251
      Top = 4
      Width = 154
      Height = 75
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object GroupBox1: TGroupBox
      Left = 251
      Top = 12
      Width = 310
      Height = 75
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object GroupBox3: TGroupBox
      Left = 252
      Top = 12
      Width = 253
      Height = 77
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      object dxDateEdit1: TdxDateEdit
        Left = 399
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dxTahun: TdxSpinEdit
        Left = 150
        Top = 31
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleController = SCEdit
      end
      object dxBulan: TdxImageEdit
        Left = 17
        Top = 31
        Width = 134
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'dxBulan'
        StyleController = SCEdit
        Descriptions.Strings = (
          'January'
          'Febuary'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'July'
          'Agustus'
          'September'
          'Oktober'
          'November'
          'Desember')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
    end
    object bbRefresh: TBitBtn
      Left = 565
      Top = 22
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
      TabOrder = 4
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
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 7
      Width = 137
      Height = 90
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Unit'
        'Karyawan'
        'Departemen')
      ParentFont = False
      TabOrder = 5
      OnClick = RadioGroup1Click
    end
  end
  inherited paCenter: TPanel
    Top = 105
    Width = 1180
    Height = 447
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1178
      Height = 445
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'SalesID'
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
      object dgrReportColumn1: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NIK'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jabatan'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Status'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FgActive'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Caption = 'Clearance'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Terima'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglTerima'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TglJatuhTempo'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 552
    Width = 1180
    Height = 71
    inherited bbPreview: TBitBtn
      Left = 934
      Top = 36
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 1028
      Top = 36
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 1102
      Top = 36
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 169
      Height = 17
      Caption = 'Tampilkan Belum Clearance'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object RadioGroup3: TRadioGroup
      Left = 8
      Top = 25
      Width = 249
      Height = 37
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'All'
        'Aktif'
        'Tdk Aktif')
      ParentFont = False
      TabOrder = 4
      OnClick = RadioGroup3Click
    end
    object bbExcel: TBitBtn
      Left = 669
      Top = 6
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 5
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
      TabOrder = 6
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
      'select K.*,'
      
        '(SELECT TOP 1 N.Transdate FROM INTrAdjustmentDt M Inner join INT' +
        'rAdjustmentHd N on M.TransID=N.TransID WHERE M.NoUnit=K.SalesID ' +
        'AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglTerima,'
      
        '(SELECT TOP 1 N.Transdate+K.JatuhTempo FROM INTrAdjustmentDt M I' +
        'nner join INTrAdjustmentHd N on M.TransID=N.TransID WHERE M.NoUn' +
        'it=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as' +
        ' TglJatuhTempo '
      'FROM ('
      
        'select DISTINCT A.SalesID,A.NIK,A.SalesName,A.Jabatan,A.FgActive' +
        ',B.ItemID,D.ItemName,B.Qty,'
      
        'ISNULL((SELECT SUM(X.qty) FROm SFTrClearanceDt X WHERE X.NoteID=' +
        'B.TransID AND X.ItemID=B.ItemID AND B.NoUnit=X.NoUnit AND X.FgCl' +
        'earance='#39'K'#39'),0) as Terima,'
      'ISNULL(CASE WHEN ISNULL(D.FGLama,'#39'D'#39')='#39'D'#39' THEN ISNULL(D.Lama,0) '
      
        'WHEN ISNULL(D.FGLama,'#39'D'#39')='#39'M'#39' THEN ISNULL(D.Lama*30,0) ELSE ISNU' +
        'LL(D.Lama*365,0) END,0) as JatuhTempo '
      'from ARMsSales A'
      'inner join INTrAdjustmentDt B on A.SalesID=B.NoUnit'
      
        'inner join INTrAdjustmentHd C on B.TransID=C.TransID AND C.FlagI' +
        'N='#39'PI'#39
      'inner join INMsItem D on B.ItemID=D.ItemId'
      ') as K')
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 30
    end
    object quActFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quActTerima: TBCDField
      FieldName = 'Terima'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 38
    end
    object quActJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
      ReadOnly = True
    end
    object quActTglTerima: TDateTimeField
      FieldName = 'TglTerima'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quActTglJatuhTempo: TDateTimeField
      FieldName = 'TglJatuhTempo'
      ReadOnly = True
      DisplayFormat = 'dd/MM/yyyy'
    end
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
