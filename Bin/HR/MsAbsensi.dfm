inherited fmMsAbsensi: TfmMsAbsensi
  Left = 353
  Top = 310
  Caption = 'Absensi'
  ClientHeight = 554
  ClientWidth = 984
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 88
    Top = 70
    Width = 78
    Height = 13
    Caption = 'Now Loading ....'
    Visible = False
  end
  object ProgressBar1: TProgressBar [2]
    Left = 88
    Top = 51
    Width = 150
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 2
    Visible = False
  end
  object Button1: TButton [3]
    Left = 8
    Top = 48
    Width = 75
    Height = 34
    Caption = 'Upload Data'
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox [4]
    Left = 8
    Top = 88
    Width = 185
    Height = 57
    Caption = '[Tampilkan Data]'
    TabOrder = 3
    object ComboBox1: TComboBox
      Left = 8
      Top = 18
      Width = 92
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Januari'
      OnChange = ComboBox1Change
      Items.Strings = (
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
    end
    object Edit1: TEdit
      Left = 102
      Top = 18
      Width = 74
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'Edit1'
      OnChange = ComboBox1Change
    end
  end
  object RbCetak: TRadioGroup [5]
    Left = 200
    Top = 88
    Width = 113
    Height = 57
    Caption = '[Urut Berdasar]'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'ID Karyawan'
      'Tanggal'
      'NIK')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = ComboBox1Change
  end
  object TmbBrg: TdxButton [6]
    Tag = 1111
    Left = 5
    Top = 406
    Width = 91
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    Caption = '(+) Data'
    TabOrder = 5
    TabStop = False
  end
  object KrgBrg: TdxButton [7]
    Tag = 2222
    Left = 97
    Top = 406
    Width = 92
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    Caption = '(-) Data'
    TabOrder = 6
    TabStop = False
  end
  object bbSimpanDetil: TdxButton [8]
    Tag = 4444
    Left = 190
    Top = 406
    Width = 92
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    Caption = 'Update'
    TabOrder = 7
    TabStop = False
  end
  object BtlBrg: TdxButton [9]
    Tag = 4444
    Left = 3
    Top = 526
    Width = 92
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = BtlBrgClick
    Caption = 'Clear All'
    TabOrder = 8
    TabStop = False
  end
  inherited paToolBar: TdxContainer
    Width = 984
    inherited sbLast: TSpeedButton
      Left = 947
    end
    inherited sbNext: TSpeedButton
      Left = 920
    end
    inherited sbPrev: TSpeedButton
      Left = 893
    end
    inherited sbFirst: TSpeedButton
      Left = 866
    end
    inherited sbPeriod: TSpeedButton
      Left = 840
    end
    inherited BvlPeriod: TBevel
      Left = 772
      Width = 64
    end
    inherited laPeriod: TLabel
      Left = 788
      Width = 43
    end
  end
  object dgrReport: TdxDBGrid [11]
    Left = 0
    Top = 147
    Width = 984
    Height = 377
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
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    BandColor = clMoneyGreen
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = [fsBold]
    DataSource = dsMain
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
      Caption = 'Nama Karyawan'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LSalesName'
    end
    object dgrReportColumn2: TdxDBGridColumn
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NIK'
    end
    object dgrReportColumn3: TdxDBGridColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dgrReportColumn4: TdxDBGridColumn
      Caption = 'IN'
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JamMasuk'
    end
    object dgrReportColumn5: TdxDBGridColumn
      Caption = 'OUT'
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JamKeluar'
    end
    object dgrReportColumn6: TdxDBGridColumn
      Caption = 'EWH'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LEWH'
    end
    object dgrReportColumn7: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'Check'
      MinWidth = 16
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FgAbsen'
      Descriptions.Strings = (
        'CUTI'
        'ALPHA'
        'IZIN'
        'IZIN SAKIT'
        'DAY OFF/STANDBY'
        'IJIN BERBAYAR'
        'SAKIT'
        'NEW HIRE'
        'RESIGN')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
      ShowDescription = True
      Values.Strings = (
        'C'
        'A'
        'IJ'
        'IJS'
        'TBY'
        'LWP'
        'S'
        'X1'
        'X2')
    end
    object dgrReportColumn8: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'SP'
      MinWidth = 16
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FgSP'
      Descriptions.Strings = (
        'SP 1'
        'SP 2'
        'SP 3'
        'Tidak')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3')
      ShowDescription = True
      Values.Strings = (
        '1'
        '2'
        '3'
        'T')
    end
    object dgrReportColumn9: TdxDBGridColumn
      Caption = 'Shift'
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FgShift'
    end
    object dgrReportColumn10: TdxDBGridColumn
      Caption = 'Kode System'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
  end
  inherited quAct: TADOQuery
    Left = 288
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      
        'select A.*,B.NIK from trabsensi A inner join ArMsSales B on A.Sa' +
        'lesID=B.SalesID'
      '')
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object quMainFgKeluar: TStringField
      FieldName = 'FgKeluar'
      Size = 1
    end
    object quMainFgOff: TIntegerField
      FieldName = 'FgOff'
    end
    object quMainFgProses: TStringField
      FieldName = 'FgProses'
      Size = 1
    end
    object quMainLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 100
      Calculated = True
    end
    object quMainJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
      DisplayFormat = 'HH:MM'
    end
    object quMainJamKeluar: TDateTimeField
      FieldName = 'JamKeluar'
      DisplayFormat = 'HH:MM'
    end
    object quMainLNIK: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNIK'
      Size = 100
      Calculated = True
    end
    object quMainFgShift: TStringField
      FieldName = 'FgShift'
      Size = 10
    end
    object quMainNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quMainFgAbsen: TStringField
      FieldName = 'FgAbsen'
    end
    object quMainFgSP: TStringField
      FieldName = 'FgSP'
    end
    object quMainLEWH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LEWH'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 444
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 416
    Top = 8
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 320
    Top = 4
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 352
    Top = 4
  end
end
