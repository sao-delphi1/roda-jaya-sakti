inherited fmARMsSalesDt: TfmARMsSalesDt
  Left = 358
  Top = 395
  Caption = 'Detail Tanggungan'
  ClientHeight = 208
  ClientWidth = 1106
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 1106
    inherited sbLast: TSpeedButton
      Left = 1069
    end
    inherited sbNext: TSpeedButton
      Left = 1042
    end
    inherited sbPrev: TSpeedButton
      Left = 1015
    end
    inherited sbFirst: TSpeedButton
      Left = 988
    end
    inherited sbPeriod: TSpeedButton
      Left = 962
    end
    inherited BvlPeriod: TBevel
      Left = 716
    end
    inherited laPeriod: TLabel
      Left = 720
    end
  end
  object dbgMenu: TdxDBGrid [2]
    Left = 0
    Top = 37
    Width = 1105
    Height = 139
    Bands = <
      item
      end>
    DefaultLayout = True
    KeyField = 'ItemID'
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
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SalesID'
    end
    object dbgMenuNo: TdxDBGridColumn
      Caption = 'No'
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemID'
    end
    object dbgMenuNama: TdxDBGridColumn
      Caption = 'Nama'
      Width = 198
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemName'
    end
    object dbgMenuJenis: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'Hubungan'
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Jenis'
      Descriptions.Strings = (
        'Ayah'
        'Ibu'
        'Saudara Kandung'
        'Kerabat'
        'Istri'
        'Suami'
        'Anak'
        'Lainnya')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      ShowDescription = True
      Values.Strings = (
        'A'
        'I'
        'S'
        'K'
        'IS'
        'SU'
        'AN'
        'L')
    end
    object dbgMenuBirthDate: TdxDBGridDateColumn
      Caption = 'Tgl Lahir'
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BirthDate'
    end
    object dbgMenuJenKel: TdxDBGridImageColumn
      Alignment = taLeftJustify
      MinWidth = 16
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JenKel'
      Descriptions.Strings = (
        'Pria'
        'Wanita')
      ImageIndexes.Strings = (
        '0'
        '1')
      ShowDescription = True
      Values.Strings = (
        'P'
        'W')
    end
    object dbgMenuNIK: TdxDBGridColumn
      Caption = 'KTP'
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NIK'
    end
    object dbgMenuAgama: TdxDBGridButtonColumn
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Agama'
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dbgMenuAgamaButtonClick
    end
    object dbgMenuSuku: TdxDBGridButtonColumn
      Visible = False
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Suku'
      Buttons = <
        item
          Default = True
        end>
    end
    object dbgMenuAlamat: TdxDBGridColumn
      Width = 171
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Address'
    end
    object dbgMenuPhone: TdxDBGridColumn
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Phone'
    end
    object dbgMenuNPWP: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NPWP'
    end
    object dbgMenuBPJSKet: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BPJSKet'
    end
    object dbgMenuBPJSKes: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BPJSKes'
    end
    object dbgMenuRekening: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rekening'
    end
    object dbgMenuBank: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Bank'
    end
    object dbgMenuUpdDate: TdxDBGridDateColumn
      Visible = False
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgMenuUpdUser: TdxDBGridMaskColumn
      Visible = False
      Width = 771
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  object TmbBrg: TdxButton [3]
    Tag = 1111
    Left = 2
    Top = 178
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
    Left = 86
    Top = 178
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
    Left = 171
    Top = 178
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
    Left = 256
    Top = 178
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
      'select * from armssalesdt')
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object quMainBirthDate: TDateTimeField
      FieldName = 'BirthDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 100
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainAgama: TStringField
      FieldName = 'Agama'
      Size = 100
    end
    object quMainJenKel: TStringField
      FieldName = 'JenKel'
      Size = 100
    end
    object quMainNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quMainNPWP: TStringField
      FieldName = 'NPWP'
      Size = 100
    end
    object quMainBPJSKes: TStringField
      FieldName = 'BPJSKes'
      Size = 100
    end
    object quMainBPJSKet: TStringField
      FieldName = 'BPJSKet'
      Size = 100
    end
    object quMainRekening: TStringField
      FieldName = 'Rekening'
      Size = 100
    end
    object quMainBank: TStringField
      FieldName = 'Bank'
      Size = 100
    end
    object quMainSuku: TStringField
      FieldName = 'Suku'
      Size = 50
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      Size = 50
    end
  end
end
