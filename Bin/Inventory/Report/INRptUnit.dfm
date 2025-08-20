inherited fmRptUnit: TfmRptUnit
  Left = 480
  Top = 188
  Caption = 'Laporan Pengeluaran Unit'
  ClientHeight = 673
  ClientWidth = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 538
    inherited laTitle: TLabel
      Width = 169
      Caption = 'Pengeluaran Unit'
    end
  end
  inherited paCenter: TPanel
    Width = 538
    Height = 591
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 57
      Height = 13
      Caption = 'Group Unit :'
    end
    object dbgItem: TdxDBGrid
      Left = 1
      Top = 143
      Width = 536
      Height = 191
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NoUnit'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGridItemID: TdxDBGridColumn
        Caption = 'No Unit'
        Sorted = csUp
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dxDBGridItemName: TdxDBGridColumn
        Width = 281
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Description'
      end
    end
    object bbCari: TdxButton
      Left = 176
      Top = 104
      Width = 97
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCariClick
      Caption = 'CARI NO UNIT'
      TabOrder = 1
    end
    object rbAll: TRadioButton
      Left = 12
      Top = 111
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbAllClick
    end
    object rbSelect: TRadioButton
      Left = 72
      Top = 111
      Width = 61
      Height = 17
      Caption = '&Select'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = rbSelectClick
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 3
      Width = 321
      Height = 60
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      object Label2: TLabel
        Left = 137
        Top = 26
        Width = 51
        Height = 20
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 22
        Width = 109
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 193
        Top = 22
        Width = 110
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object CheckBox1: TCheckBox
      Left = 344
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Sparepart'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 344
      Top = 25
      Width = 97
      Height = 17
      Caption = 'Ban'
      TabOrder = 6
    end
    object CheckBox3: TCheckBox
      Left = 344
      Top = 41
      Width = 97
      Height = 17
      Caption = 'Solar'
      TabOrder = 7
    end
    object CheckBox5: TCheckBox
      Left = 440
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Oli'
      TabOrder = 8
    end
    object CheckBox6: TCheckBox
      Left = 440
      Top = 25
      Width = 97
      Height = 17
      Caption = 'Kanibal Unit'
      TabOrder = 9
    end
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 370
      Width = 536
      Height = 219
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsSite
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -9
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dxDBGridMaskColumn1: TdxDBGridMaskColumn
        Caption = 'Kode Gudang'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dxDBGridMaskColumn2: TdxDBGridMaskColumn
        Caption = 'Nama Gudang'
        Sorted = csUp
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 340
      Width = 185
      Height = 26
      Color = 14401101
      TabOrder = 11
      object RadioButton1: TRadioButton
        Left = 19
        Top = 5
        Width = 53
        Height = 17
        Caption = '&All'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 82
        Top = 5
        Width = 61
        Height = 17
        Caption = '&Select'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton1Click
      end
    end
    object dxButton1: TdxButton
      Left = 224
      Top = 337
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CARI SITE'
      TabOrder = 12
    end
    object KodeDari: TdxButtonEdit
      Left = 68
      Top = 74
      Width = 43
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      ExistButtons = True
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 110
      Top = 74
      Width = 113
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      CharCase = ecUpperCase
      ReadOnly = True
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      StoredValues = 64
      ExistButtons = True
    end
    object CheckBox7: TCheckBox
      Left = 752
      Top = 194
      Width = 97
      Height = 17
      Caption = 'Kanibal Unit'
      TabOrder = 15
    end
    object RadioGroup1: TRadioGroup
      Left = 285
      Top = 64
      Width = 244
      Height = 61
      Caption = '[ Tampilkan Harga ]'
      ItemIndex = 0
      Items.Strings = (
        'Harga Beli Terakhir'
        'Modal Pada Master'
        'Harga Jual Master')
      TabOrder = 16
      OnClick = RadioGroup1Click
    end
    object CheckBox8: TCheckBox
      Left = 294
      Top = 125
      Width = 227
      Height = 17
      Caption = 'Ambil Harga Modal Jika Harga Beli Kosong'
      Checked = True
      State = cbChecked
      TabOrder = 17
    end
  end
  inherited paBottom: TPanel
    Top = 632
    Width = 538
    inherited bbPreview: TBitBtn
      Left = 292
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 386
    end
    inherited bbExit: TBitBtn
      Left = 460
    end
    object CheckBox4: TCheckBox
      Left = 11
      Top = 14
      Width = 150
      Height = 17
      Caption = 'Pisah Per Tanggal'
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmsnounit order by NoUnit')
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActFgGroup: TStringField
      FieldName = 'FgGroup'
    end
  end
  object quSite: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from inmswarehouse'
      'order by WarehouseName')
    Left = 256
    Top = 4
    object quSiteWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quSiteWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
    object quSiteAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quSiteCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quSiteContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 100
    end
    object quSitePhone: TStringField
      FieldName = 'Phone'
    end
    object quSiteFax: TStringField
      FieldName = 'Fax'
    end
    object quSiteUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSiteUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSitelogo: TBlobField
      FieldName = 'logo'
    end
    object quSiteFgOtoJkt: TStringField
      FieldName = 'FgOtoJkt'
      Size = 10
    end
  end
  object dsSite: TDataSource
    DataSet = quSite
    Left = 284
    Top = 4
  end
end
