inherited fmAPOtoFPP: TfmAPOtoFPP
  Left = 279
  Top = 96
  Caption = 'Otorisasi FPP'
  ClientHeight = 452
  ClientWidth = 959
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 959
    Height = 89
    inherited laTitle: TLabel
      Width = 135
      Caption = 'Otorisasi FPP'
    end
  end
  inherited paCenter: TPanel
    Top = 89
    Width = 959
    Height = 322
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
        Caption = 'No Invoice'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KonInvPelID'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Caption = 'No Kontrak'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SaleID'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = 'Nama Customer'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Caption = 'Site'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteName'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = 'Keterangan'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Note'
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
    Top = 411
    Width = 959
    inherited bbPreview: TBitBtn
      Left = 713
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 807
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 881
      Enabled = False
      Visible = False
    end
  end
end
