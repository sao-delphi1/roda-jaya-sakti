inherited fmARMsSalesRK: TfmARMsSalesRK
  Left = 525
  Top = 304
  Caption = 'Riwayat Kesehatan'
  ClientHeight = 429
  ClientWidth = 858
  PixelsPerInch = 96
  TextHeight = 13
  object Label18: TLabel [0]
    Left = 353
    Top = 398
    Width = 52
    Height = 21
    Caption = 'Caption'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 858
    inherited sbLast: TSpeedButton
      Left = 821
    end
    inherited sbNext: TSpeedButton
      Left = 794
    end
    inherited sbPrev: TSpeedButton
      Left = 767
    end
    inherited sbFirst: TSpeedButton
      Left = 740
    end
    inherited sbPeriod: TSpeedButton
      Left = 714
    end
    inherited BvlPeriod: TBevel
      Left = 468
    end
    inherited laPeriod: TLabel
      Left = 472
    end
  end
  object dbgMenu: TdxDBGrid [2]
    Left = 0
    Top = 36
    Width = 857
    Height = 357
    Bands = <
      item
      end>
    DefaultLayout = True
    KeyField = 'SalesID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Comic Sans MS'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfUltraFlat
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgMenuSalesID: TdxDBGridColumn
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
    object dbgMenuNo: TdxDBGridColumn
      Caption = 'No'
      Width = 42
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgMenuMCUDate: TdxDBGridDateColumn
      Caption = 'MCU Date'
      Width = 115
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MCUDate'
    end
    object dbgMenuMCUNo: TdxDBGridColumn
      Caption = 'MCU No'
      Width = 117
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MCUNo'
    end
    object dbgMenuMCULoc: TdxDBGridColumn
      Caption = 'Location (RS/Puskesmas)'
      Width = 166
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MCULocation'
    end
    object dbgMenuUpdDate: TdxDBGridDateColumn
      Visible = False
      Width = 93
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgMenuUpdUser: TdxDBGridMaskColumn
      Visible = False
      Width = 500
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
    object dbgMenuStatus: TdxDBGridImageColumn
      Alignment = taLeftJustify
      MinWidth = 16
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Status'
      Descriptions.Strings = (
        'FIT'
        'UNFIT')
      ImageIndexes.Strings = (
        '0'
        '1')
      ShowDescription = True
      Values.Strings = (
        'F'
        'U')
    end
    object dbgMenuNote: TdxDBGridColumn
      Width = 320
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Keterangan'
    end
  end
  object TmbBrg: TdxButton [3]
    Tag = 1111
    Left = 8
    Top = 397
    Width = 82
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = TmbBrgClick
    Caption = '(+) DATA'
    TabOrder = 2
    TabStop = False
  end
  object KrgBrg: TdxButton [4]
    Tag = 2222
    Left = 92
    Top = 397
    Width = 83
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = KrgBrgClick
    Caption = '(-) DATA'
    TabOrder = 3
    TabStop = False
  end
  object bbSimpanDetil: TdxButton [5]
    Tag = 4444
    Left = 177
    Top = 397
    Width = 83
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbSimpanDetilClick
    Caption = 'SAVE'
    TabOrder = 4
    TabStop = False
  end
  object BtlBrg: TdxButton [6]
    Tag = 4444
    Left = 263
    Top = 397
    Width = 83
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = BtlBrgClick
    Caption = 'DISCARD'
    TabOrder = 5
    TabStop = False
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from ARMsSalesRK'
      '')
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
    end
    object quMainKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object quMainMCUDate: TDateTimeField
      FieldName = 'MCUDate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = 'dd/MM/yyyy'
    end
    object quMainMCUNo: TStringField
      FieldName = 'MCUNo'
      Size = 50
    end
    object quMainMCULocation: TStringField
      FieldName = 'MCULocation'
      Size = 50
    end
    object quMainItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
  end
end
