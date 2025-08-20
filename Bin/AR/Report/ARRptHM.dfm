inherited fmARRptHM: TfmARRptHM
  Left = 596
  Top = 265
  Caption = 'Penagihan Customer'
  ClientHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited laTitle: TLabel
      Width = 192
      Caption = 'Penagihan Customer'
    end
  end
  inherited paCenter: TPanel
    Height = 527
    object Label1: TLabel
      Left = 16
      Top = 85
      Width = 117
      Height = 16
      Caption = 'Variabel Checker :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 7
      Width = 364
      Height = 62
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 158
        Top = 28
        Width = 45
        Height = 17
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 28
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 215
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 105
      Top = 7
      Width = 253
      Height = 62
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
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
        Top = 24
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleController = SCEdit
      end
      object dxBulan: TdxImageEdit
        Left = 17
        Top = 24
        Width = 134
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
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
    object dbgList: TdxDBGrid
      Left = 1
      Top = 141
      Width = 431
      Height = 148
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CustID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -15
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
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
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Width = 161
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Sorted = csUp
        Width = 317
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object Panel2: TPanel
      Left = 16
      Top = 297
      Width = 185
      Height = 26
      Color = 14401101
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
    object dbgItem: TdxDBGrid
      Left = 1
      Top = 326
      Width = 448
      Height = 200
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NoUnit'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsUnit
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -15
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
    object Panel1: TPanel
      Left = 16
      Top = 113
      Width = 185
      Height = 26
      Color = 14401101
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object RadioButton3: TRadioButton
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
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
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
        OnClick = RadioButton3Click
      end
    end
    object bbCari: TdxButton
      Left = 208
      Top = 113
      Width = 110
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCariClick
      Caption = 'CARI PELANGGAN'
      TabOrder = 6
    end
    object dxButton1: TdxButton
      Left = 208
      Top = 297
      Width = 110
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CARI NO UNIT'
      TabOrder = 7
    end
    object GroupBox3: TGroupBox
      Left = 105
      Top = 7
      Width = 129
      Height = 62
      Caption = '[ Periode ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      object dxDateEdit2: TdxDateEdit
        Left = 399
        Top = 18
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dxTahunA: TdxSpinEdit
        Left = 22
        Top = 24
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleController = SCEdit
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 8
      Width = 85
      Height = 61
      ItemIndex = 0
      Items.Strings = (
        'Bulan'
        'Tahun')
      TabOrder = 9
      OnClick = RadioGroup1Click
    end
    object dxImageEdit1: TdxImageEdit
      Left = 140
      Top = 80
      Width = 134
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = 'HM'
      StyleController = SCEdit
      Descriptions.Strings = (
        'HM'
        'Day'
        'Month'
        'Year'
        'KG'
        'TON'
        'Retase'
        'Meter'
        'Liter'
        'Unit'
        'Hour'
        'Kamar'
        'Others')
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
        '11'
        '12')
      Values.Strings = (
        'HM'
        'Day'
        'Month'
        'Year'
        'KG'
        'TON'
        'Retase'
        'Meter'
        'Liter'
        'Unit'
        'Hour'
        'Kamar'
        'Others')
    end
  end
  inherited paBottom: TPanel
    Top = 568
    inherited bbPreview: TBitBtn
      OnClick = bbPreviewClick
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select CustID,CustName FROM ARMsCustomer')
    Left = 256
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
  end
  inherited dsAct: TDataSource
    Left = 284
  end
  object quUnit: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'SELECT NoUnit,Description FROM INMsNoUnit')
    Left = 320
    Top = 4
    object quUnitNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quUnitDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
  end
  object dsUnit: TDataSource
    DataSet = quUnit
    Left = 348
    Top = 4
  end
end
