inherited fmCFTrUangMakan: TfmCFTrUangMakan
  Left = 324
  Top = 170
  Caption = 'Daftar Uang Muka Pembelian'
  ClientHeight = 388
  ClientWidth = 714
  PixelsPerInch = 96
  TextHeight = 13
  object Shape6: TShape [0]
    Left = 292
    Top = 401
    Width = 228
    Height = 23
    Brush.Color = 13676331
  end
  object Label1: TLabel [2]
    Left = 200
    Top = 49
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'No Transaksi :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [3]
    Left = 200
    Top = 70
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tanggal :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel [4]
    Left = 200
    Top = 203
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Keterangan :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [5]
    Left = 240
    Top = 513
    Width = 113
    Height = 23
    Caption = 'Detil Transaksi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 200
    Top = 92
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Supplier :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText5: TDBText [7]
    Left = 391
    Top = 93
    Width = 54
    Height = 17
    AutoSize = True
    DataField = 'LSalesName'
    DataSource = dsMain
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText [8]
    Left = 396
    Top = 403
    Width = 120
    Height = 17
    Alignment = taRightJustify
    DataField = 'SubTotal'
    DataSource = dsTotal
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel [9]
    Left = 280
    Top = 401
    Width = 76
    Height = 23
    Alignment = taRightJustify
    Caption = 'Sub Total'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [10]
    Left = 200
    Top = 159
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Jumlah DP :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [11]
    Left = 200
    Top = 116
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Nota PO :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [12]
    Left = 200
    Top = 137
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valuta :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel [13]
    Left = 200
    Top = 181
    Width = 100
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Rekening DP :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 339
    inherited pa3: TdxContainer
      Height = 160
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 376
    Width = 714
  end
  inherited pa2: TdxContainer
    Height = 339
  end
  inherited paToolBar: TdxContainer
    Width = 714
    inherited sbLast: TSpeedButton
      Left = 677
    end
    inherited sbNext: TSpeedButton
      Left = 650
    end
    inherited sbPrev: TSpeedButton
      Left = 623
    end
    inherited sbFirst: TSpeedButton
      Left = 596
    end
    inherited sbPeriod: TSpeedButton
      Left = 570
    end
    inherited BvlPeriod: TBevel
      Left = 324
    end
    inherited laPeriod: TLabel
      Left = 328
    end
  end
  object dxDBEdit1: TdxDBEdit [18]
    Left = 306
    Top = 46
    Width = 135
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    AutoSize = False
    DataField = 'UMID'
    DataSource = dsMain
    StyleController = SCEdit
    Height = 23
  end
  object GroupBox2: TGroupBox [19]
    Left = 308
    Top = 312
    Width = 275
    Height = 52
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object Label10: TLabel
      Left = 26
      Top = 10
      Width = 31
      Height = 15
      Alignment = taRightJustify
      Caption = 'User :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 65
      Top = 10
      Width = 92
      Height = 17
      DataField = 'UpdUser'
      DataSource = dsMain
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 28
      Width = 41
      Height = 15
      Alignment = taRightJustify
      Caption = 'Waktu :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 65
      Top = 28
      Width = 192
      Height = 17
      DataField = 'UpdDate'
      DataSource = dsMain
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object dbgAbsen: TdxDBGrid [20]
    Left = 546
    Top = 425
    Width = 423
    Height = 158
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnEnter = dbgAbsenEnter
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsDetil
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -16
    HeaderFont.Name = 'Comic Sans MS'
    HeaderFont.Style = []
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgAbsenColumn1: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UMID'
    end
    object dbgAbsenColumn2: TdxDBGridDateColumn
      Caption = 'Tgl DP'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dbgAbsenColumn3: TdxDBGridColumn
      Caption = 'Jumlah'
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DTelat'
    end
    object dbgAbsenColumn4: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
  end
  object bbSave: TdxButton [21]
    Left = 307
    Top = 276
    Width = 97
    Height = 31
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    Action = ActSave
    Caption = 'Simpan (F3)'
    TabOrder = 7
  end
  object bbCancel: TdxButton [22]
    Left = 405
    Top = 276
    Width = 97
    Height = 31
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    Action = ActCancel
    Caption = 'Batal (Esc)'
    TabOrder = 8
  end
  object dxDBDateEdit1: TdxDBDateEdit [23]
    Left = 306
    Top = 68
    Width = 103
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'Transdate'
    DataSource = dsMain
    StyleController = SCEdit
    Height = 23
  end
  object dxDBButtonEdit1: TdxDBButtonEdit [24]
    Left = 306
    Top = 90
    Width = 79
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'SalesID'
    DataSource = dsMain
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit1ButtonClick
    Height = 23
    ExistButtons = True
  end
  object dxDBEdit2: TdxDBEdit [25]
    Left = 306
    Top = 200
    Width = 335
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'Note'
    DataSource = dsMain
    StyleController = SCEdit
    Height = 73
  end
  object dxButton1: TdxButton [26]
    Left = 494
    Top = 514
    Height = 20
    Hint = 'Save Changes'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Enabled = False
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Cetak'
    TabOrder = 12
  end
  object bbTambah: TdxButton [27]
    Tag = 1111
    Left = 205
    Top = 569
    Width = 80
    Hint = 'New Data'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbTambahClick
    Caption = 'Tambah'
    TabOrder = 13
  end
  object bbHapus: TdxButton [28]
    Tag = 2222
    Left = 292
    Top = 569
    Width = 80
    Hint = 'Delete Data'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbHapusClick
    Caption = 'Hapus'
    TabOrder = 14
  end
  object bbSimpan: TdxButton [29]
    Tag = 4444
    Left = 379
    Top = 569
    Width = 80
    Hint = 'Save Changes'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbSimpanClick
    Caption = 'Simpan'
    TabOrder = 15
  end
  object bbBatal: TdxButton [30]
    Tag = 4444
    Left = 492
    Top = 481
    Width = 80
    Hint = 'Cancel Changes'
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbBatalClick
    Caption = 'Batal'
    TabOrder = 16
  end
  object dxDBEdit3: TdxDBEdit [31]
    Left = 306
    Top = 156
    Width = 121
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'TTLMakan'
    DataSource = dsMain
    StyleController = SCEdit
    Height = 23
  end
  object dxDBButtonEdit2: TdxDBButtonEdit [32]
    Left = 306
    Top = 112
    Width = 135
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'POID'
    DataSource = dsMain
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit2ButtonClick
    Height = 23
    ExistButtons = True
  end
  object dxDBButtonEdit3: TdxDBButtonEdit [33]
    Left = 306
    Top = 134
    Width = 71
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'CurrID'
    DataSource = dsMain
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit3ButtonClick
    Height = 23
    ExistButtons = True
  end
  object dxDBButtonEdit4: TdxDBButtonEdit [34]
    Left = 306
    Top = 178
    Width = 121
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnKeyPress = dxDBDateEdit1KeyPress
    AutoSize = False
    DataField = 'RekeningDP'
    DataSource = dsMain
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit4ButtonClick
    Height = 23
    ExistButtons = True
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFTrUangMakanHd')
    object quMainUMID: TStringField
      FieldName = 'UMID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFgStatus: TStringField
      FieldName = 'FgStatus'
      Size = 1
    end
    object quMainsalesid: TStringField
      FieldName = 'salesid'
    end
    object quMainLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 200
      Calculated = True
    end
    object quMainTTLMakan: TBCDField
      FieldName = 'TTLMakan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      Size = 50
    end
    object quMainRekeningDP: TStringField
      FieldName = 'RekeningDP'
      Size = 50
    end
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'UMID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CFTrUangMakanDt'
      'WHERE UMID=:UMID')
    object quDetilUMID: TStringField
      FieldName = 'UMID'
    end
    object quDetilSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quDetilDTelat: TBCDField
      FieldName = 'DTelat'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilTanggal: TDateTimeField
      FieldName = 'Tanggal'
      DisplayFormat = 'dd/MM/yyyy'
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'Select * From ARMsSales')
    Left = 228
    Top = 457
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 400
    Top = 4
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'UMID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'Select SUM(DTelat) as SubTotal FROM CFTrUangMakanDt Where UMID=:' +
        'UMID')
    Left = 600
    Top = 329
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 628
    Top = 329
  end
end
