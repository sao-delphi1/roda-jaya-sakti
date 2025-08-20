inherited fmINRptStokGudang: TfmINRptStokGudang
  Left = 590
  Top = 21
  Caption = 'Laporan Stok Gudang'
  ClientHeight = 660
  ClientWidth = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 621
    Height = 0
    inherited laTitle: TLabel
      Enabled = False
      Visible = False
    end
  end
  inherited paCenter: TPanel
    Top = 0
    Width = 621
    Height = 619
    object grbKartu: TGroupBox
      Left = 11
      Top = 6
      Width = 310
      Height = 115
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label2: TLabel
        Left = 14
        Top = 29
        Width = 51
        Height = 16
        Caption = 'Tanggal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 54
        Width = 80
        Height = 16
        Caption = 'Part Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 110
        Top = 54
        Width = 4
        Height = 16
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 110
        Top = 29
        Width = 4
        Height = 16
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbRefresh: TBitBtn
        Left = 124
        Top = 79
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object dt1: TdxDateEdit
        Left = 122
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object KodeDari: TdxButtonEdit
        Left = 122
        Top = 49
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 152
      Width = 619
      Height = 466
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseName'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsSearch
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
      HeaderFont.Name = 'Arial'
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
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Gudang'
        Sorted = csUp
        Width = 289
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
      object dbgListColumn4: TdxDBGridColumn
        Caption = 'Locater'
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LayoutID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Stock'
      end
      object dbgListColumn3: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 128
      Width = 221
      Height = 17
      Caption = 'Jangan Tampilkan Gudang yang kosong'
      TabOrder = 2
    end
  end
  inherited paBottom: TPanel
    Top = 619
    Width = 621
    inherited bbPreview: TBitBtn
      Left = 375
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 469
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 543
      Visible = False
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 532
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 564
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 392
    Top = 4
  end
  object quHitung: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 424
    Top = 4
  end
  object quCari: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 456
    Top = 4
  end
  object quSearch: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'SELECT WarehouseName,0.00 as Stock,'#39#39' as UOMID,WarehouseName as ' +
        'LayoutID'
      'FROM InMsWarehouse')
    Left = 320
    Top = 36
    object quSearchWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
    object quSearchUOMID: TStringField
      DisplayWidth = 20
      FieldName = 'UOMID'
      ReadOnly = True
    end
    object quSearchStock: TBCDField
      DisplayWidth = 20
      FieldName = 'Stock'
      ReadOnly = True
      Precision = 2
      Size = 20
    end
    object quSearchLayoutID: TStringField
      FieldName = 'LayoutID'
      Size = 100
    end
  end
  object dsSearch: TDataSource
    AutoEdit = False
    DataSet = quSearch
    Left = 348
    Top = 36
  end
end
