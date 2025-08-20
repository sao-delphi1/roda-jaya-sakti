inherited fmINMutasiBan: TfmINMutasiBan
  Left = 669
  Top = 355
  Caption = 'fmINMutasiBan'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited laTitle: TLabel
      Width = 199
      Caption = 'Laporan Mutasi Ban'
    end
  end
  inherited paCenter: TPanel
    object GroupBox1: TGroupBox
      Left = 54
      Top = 7
      Width = 319
      Height = 70
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 133
        Top = 30
        Width = 47
        Height = 19
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 10
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 190
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll2: TRadioButton
      Left = 28
      Top = 84
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbAll2Click
    end
    object rbselect2: TRadioButton
      Left = 88
      Top = 84
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbAll2Click
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 328
      Width = 431
      Height = 124
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 3
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Kode Gudang'
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Gudang'
        Sorted = csUp
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 300
      Width = 185
      Height = 26
      Color = 14401101
      TabOrder = 4
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
      Top = 103
      Width = 432
      Height = 186
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 5
      DataSource = dsBan
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGridItemID: TdxDBGridColumn
        Caption = 'Part Number'
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dxDBGridItemName: TdxDBGridColumn
        Caption = 'Nama Barang'
        Sorted = csUp
        Width = 281
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
  end
  inherited paBottom: TPanel
    inherited bbPreview: TBitBtn
      OnClick = bbPreviewClick
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmswarehouse')
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quActWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
  end
  object quBan: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from inmsitem where jenis='#39'B'#39)
    Left = 256
    Top = 4
    object quBanItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quBanItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
  object dsBan: TDataSource
    DataSet = quBan
    Left = 284
    Top = 4
  end
end
