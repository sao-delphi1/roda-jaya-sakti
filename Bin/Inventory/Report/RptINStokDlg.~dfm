inherited fmINRptStokDlg: TfmINRptStokDlg
  Left = 584
  Top = 4
  Caption = ''
  ClientHeight = 606
  ClientWidth = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 546
    inherited laTitle: TLabel
      Width = 274
      Caption = 'Laporan Stock Akhir Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 546
    Height = 524
    object CBDetil: TCheckBox
      Left = 20
      Top = 116
      Width = 116
      Height = 17
      Caption = 'Tampilkan Detil'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 6
      Width = 141
      Height = 51
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object dt2: TdxDateEdit
        Left = 13
        Top = 18
        Width = 116
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 9
      Top = 61
      Width = 53
      Height = 17
      Caption = '&All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 69
      Top = 61
      Width = 61
      Height = 17
      Caption = '&Select'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgWare: TdxDBGrid
      Left = 1
      Top = 80
      Width = 544
      Height = 153
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
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
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'Kode Gudang'
        Sorted = csUp
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'Nama Gudang'
        Width = 319
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object Panel1: TPanel
      Left = 11
      Top = 235
      Width = 278
      Height = 19
      BevelOuter = bvNone
      Color = 14401101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object rbselect2: TRadioButton
        Left = 64
        Top = 2
        Width = 61
        Height = 17
        Caption = '&Select'
        TabOrder = 0
        OnClick = rbselect2Click
      end
      object rbAll2: TRadioButton
        Left = 4
        Top = 2
        Width = 53
        Height = 17
        Caption = '&All'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbselect2Click
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 260
      Width = 544
      Height = 263
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
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
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Sorted = csUp
        Width = 400
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object bbCancel: TdxButton
      Left = 144
      Top = 235
      Width = 110
      Height = 23
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI'
      TabOrder = 6
    end
    object rbJenis: TRadioGroup
      Left = 957
      Top = 43
      Width = 135
      Height = 75
      Caption = '[ Berdasarkan ]'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Nama Barang'
        'Group Barang'
        'Type Barang')
      ParentCtl3D = False
      TabOrder = 8
      Visible = False
      OnClick = rbJenisClick
    end
    object CheckBox1: TCheckBox
      Left = 400
      Top = 56
      Width = 137
      Height = 17
      Caption = 'Tampilkan Modal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  inherited paBottom: TPanel
    Top = 565
    Width = 546
    inherited bbPreview: TBitBtn
      Left = 298
      Width = 96
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 394
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 468
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 225
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'SELECT ItemID,ItemName FROM INMsItem'
      'WHERE Ctk='#39'Y'#39
      'Order By GroupID,ProductID,ItemID')
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 260
    Top = 4
  end
  object ActionList: TActionList
    Left = 228
    Top = 8
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = bbPreviewClick
    end
  end
end
