inherited fmAPRptPOBlmTerima: TfmAPRptPOBlmTerima
  Left = 469
  Top = 140
  Caption = 'PO Belom Terima'
  ClientHeight = 524
  ClientWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1007
    Height = 105
    inherited laTitle: TLabel
      Width = 237
      Caption = 'PO Belom Terima Barang'
    end
    object bbRefresh: TdxButton
      Tag = 4444
      Left = 152
      Top = 56
      Width = 120
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbRefreshClick
      Caption = 'Refresh'
      TabOrder = 0
      TabStop = False
    end
    object bbFind: TdxButton
      Tag = 5555
      Left = 8
      Top = 64
      Width = 113
      Height = 33
      Cursor = crHandPoint
      Hint = 'Find Record'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      Caption = 'CARI (F10)'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      HotTrack = True
      TabOrder = 1
    end
  end
  inherited paCenter: TPanel
    Top = 105
    Width = 1007
    Height = 378
    object dxDBGrid1: TdxDBGrid
      Left = 0
      Top = 0
      Width = 961
      Height = 177
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KonInvPelID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -12
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -12
      PreviewFont.Name = 'Comic Sans MS'
      PreviewFont.Style = []
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'Tanggal'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransDate'
      end
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'Nota'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TransID'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'Gudang'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WareHouseID'
      end
    end
    object dxDBGrid2: TdxDBGrid
      Left = 0
      Top = 176
      Width = 961
      Height = 193
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KonInvPelID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -12
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      DataSource = dsDetil
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -12
      PreviewFont.Name = 'Comic Sans MS'
      PreviewFont.Style = []
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'No Unit'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'Description No Unit'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid2Column6: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
      end
      object dxDBGridColumn3: TdxDBGridColumn
        Caption = 'Jumlah'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Qty'
      end
      object dxDBGridColumn4: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dxDBGridColumn5: TdxDBGridColumn
        Caption = 'Harga'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Price'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 483
    Width = 1007
    inherited bbPreview: TBitBtn
      Left = 761
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 855
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 929
      Visible = False
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    Left = 244
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 272
    Top = 4
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    Left = 387
    Top = 4
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    Left = 416
    Top = 4
  end
end
