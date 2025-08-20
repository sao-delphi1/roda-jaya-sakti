inherited fmHRRptSumAbsen: TfmHRRptSumAbsen
  Left = 366
  Top = 135
  Caption = 'Laporan Summary Absensi'
  ClientWidth = 1186
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1186
    Height = 69
    inherited laTitle: TLabel
      Left = 156
      Top = 20
      Visible = False
    end
    object DBText24: TDBText
      Left = 388
      Top = 28
      Width = 160
      Height = 16
      DataField = 'Jumlah'
      DataSource = dsCalc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 301
      Top = 27
      Width = 84
      Height = 17
      Alignment = taRightJustify
      Caption = 'Jumlah HK :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 3
      Width = 287
      Height = 57
      TabOrder = 0
      object dxTahun: TdxSpinEdit
        Left = 102
        Top = 18
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleController = SCEdit
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 184
        Top = 18
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'REFRESH'
        TabOrder = 1
        TabStop = False
      end
      object dxBulan: TdxImageEdit
        Left = 9
        Top = 18
        Width = 94
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'dxBulan'
        StyleController = SCEdit
        Descriptions.Strings = (
          'Januari'
          'Februari'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'Juli'
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
  end
  inherited paCenter: TPanel
    Top = 69
    Width = 1186
    Height = 425
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1184
      Height = 423
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
        Caption = 'Kode System'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NIK'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Nama Karyawan'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn14: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jabatan'
      end
      object dgrReportColumn15: TdxDBGridColumn
        Caption = 'Department'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Div'
      end
      object dgrReportColumn16: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LChecker'
      end
      object dgrReportColumn12: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HK'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Masuk'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DayOff'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Caption = 'Izin Dibayar'
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IzinBerbayar'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sakit'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Izin'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IzinSakit'
      end
      object dgrReportColumn10: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cuti'
      end
      object dgrReportColumn11: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Alpha'
      end
      object dgrReportColumn13: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SP'
      end
      object dgrReportColumn17: TdxDBGridColumn
        Caption = 'New Hire'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'X1'
      end
      object dgrReportColumn18: TdxDBGridColumn
        Caption = 'Resign'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'X2'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1186
    inherited bbPreview: TBitBtn
      Left = 4
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 98
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 172
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 944
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
      Left = 1059
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
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
      
        'SELECT K.SalesID,L.SalesName,L.NIK,L.Jabatan,ISNULL(M.NmMaster,L' +
        '.department) as Div,'
      'SUM(A) as Masuk,'
      'SUM(B) as Alpha,'
      'SUM(C) as Sakit,'
      'SUM(D) as Izin,'
      'SUM(E) as IzinSakit,'
      'SUM(F) as IzinBerbayar,'
      'SUM(G) as DayOff,'
      'SUM(H) as Cuti,'
      'SUM(H) as X1,'
      'SUM(H) as X2,'
      'SUM(A+B+C+D+E+F+G+H+I+J) as HK,'
      'SUM(SP) as SP'
      'FROM ('
      'select A.SalesID,A.Tanggal,'
      
        'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'Y'#39' THEN (CASE WHEN ISNULL(JamMasuk' +
        ','#39#39')='#39#39' THEN 0 ELSE '
      
        '(CASE WHEN ISNULL(JamKeluar,'#39#39')='#39#39' THEN 0 ELSE 1 END) END) ELSE ' +
        '0 END As A,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'A'#39' THEN 1 ELSE 0 END as B,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'S'#39' THEN 1 ELSE 0 END as C,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'IJ'#39' THEN 1 ELSE 0 END as D,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'IJS'#39' THEN 1 ELSE 0 END as E,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'LWP'#39' THEN 1 ELSE 0 END as F,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'TBY'#39' THEN 1 ELSE 0 END as G,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'C'#39' THEN 1 ELSE 0 END as H,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'X1'#39' THEN 1 ELSE 0 END as I,'
      'CASE WHEN ISNULL(FgAbsen,'#39#39')='#39'X2'#39' THEN 1 ELSE 0 END as J,'
      'CASE WHEN A.Tanggal BETWEEN '
      
        '(select TOP 1 (CASE WHEN X.FgSP='#39'1'#39' THEN X.Tanggal ELSE X.Tangga' +
        'l END) from TrAbsensi X '
      
        'where X.fgsp<>'#39'T'#39' and X.Salesid=A.Salesid order by A.Tanggal des' +
        'c) '
      'AND'
      
        '(select TOP 1 (CASE WHEN X.FgSP='#39'1'#39' THEN X.Tanggal+90 ELSE X.Tan' +
        'ggal+180 END) from TrAbsensi X '
      
        'where X.fgsp<>'#39'T'#39' and X.Salesid=A.Salesid order by A.Tanggal des' +
        'c) THEN 1 ELSE 0 END as SP'
      'from TrAbsensi A '
      ') as K'
      'inner join ARMsSales L on K.SalesID=L.SalesID'
      'LEFT join AllMaster M on L.department=M.KdMaster'
      'WHERE CONVERT(VARCHAR(10),K.Tanggal,112) >= '#39'20210401'#39' AND'
      'CONVERT(VARCHAR(10),K.Tanggal,112) < '#39'20210501'#39
      
        'GROUP BY K.SalesID,L.SalesName,L.NIK,L.Jabatan,L.department,M.Nm' +
        'Master'
      ''
      ''
      '')
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quActJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 30
    end
    object quActDiv: TStringField
      FieldName = 'Div'
      ReadOnly = True
      Size = 255
    end
    object quActMasuk: TIntegerField
      FieldName = 'Masuk'
      ReadOnly = True
    end
    object quActAlpha: TIntegerField
      FieldName = 'Alpha'
      ReadOnly = True
    end
    object quActSakit: TIntegerField
      FieldName = 'Sakit'
      ReadOnly = True
    end
    object quActIzin: TIntegerField
      FieldName = 'Izin'
      ReadOnly = True
    end
    object quActIzinSakit: TIntegerField
      FieldName = 'IzinSakit'
      ReadOnly = True
    end
    object quActDayOff: TIntegerField
      FieldName = 'DayOff'
      ReadOnly = True
    end
    object quActCuti: TIntegerField
      FieldName = 'Cuti'
      ReadOnly = True
    end
    object quActHK: TIntegerField
      FieldName = 'HK'
      ReadOnly = True
    end
    object quActSP: TIntegerField
      FieldName = 'SP'
      ReadOnly = True
    end
    object quActLChecker: TStringField
      FieldKind = fkCalculated
      FieldName = 'LChecker'
      Size = 100
      Calculated = True
    end
    object quActX1: TIntegerField
      FieldName = 'X1'
      ReadOnly = True
    end
    object quActX2: TIntegerField
      FieldName = 'X2'
      ReadOnly = True
    end
    object quActIzinBerbayar: TIntegerField
      FieldName = 'IzinBerbayar'
      ReadOnly = True
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select 10 as Jumlah')
    Left = 384
    Top = 4
    object quCalcJumlah: TIntegerField
      FieldName = 'Jumlah'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object dsCalc: TDataSource
    DataSet = quCalc
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
