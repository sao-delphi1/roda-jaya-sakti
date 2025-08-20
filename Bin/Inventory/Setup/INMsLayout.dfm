inherited fmINMsLayout: TfmINMsLayout
  Left = 502
  Top = 310
  Caption = 'Master Layout / Rak'
  ClientWidth = 869
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Width = 869
  end
  inherited dxContainer7: TdxContainer
    Width = 676
    inherited pcParent: TdxPageControl
      Width = 676
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 505
        end
        inherited bbCancel: TdxButton
          Left = 585
        end
        object dbgUOM: TdxDBGrid
          Left = 0
          Top = 0
          Width = 676
          Height = 487
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LayoutID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgUOMColumn1: TdxDBGridColumn
            Caption = 'Kode Rak'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LayoutID'
          end
          object dbgUOMColumn2: TdxDBGridColumn
            Caption = 'Nama Rak'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LayoutName'
          end
          object dbgUOMColumn3: TdxDBGridBlobColumn
            Caption = 'Keterangan'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
            BlobKind = bkMemo
          end
          object dbgUOMColumn4: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Aktif'
            MinWidth = 16
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgActive'
            Descriptions.Strings = (
              'Ya'
              'Tidak')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              'Y'
              'T')
          end
          object dbgUOMColumn5: TdxDBGridColumn
            Caption = 'User'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgUOMColumn6: TdxDBGridColumn
            Caption = 'Time'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 869
    inherited sbLast: TSpeedButton
      Left = 832
    end
    inherited sbNext: TSpeedButton
      Left = 805
    end
    inherited sbPrev: TSpeedButton
      Left = 778
    end
    inherited sbFirst: TSpeedButton
      Left = 751
    end
    inherited sbPeriod: TSpeedButton
      Left = 725
    end
    inherited BvlPeriod: TBevel
      Left = 479
    end
    inherited laPeriod: TLabel
      Left = 483
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from inmslayout')
    object quMainLayoutID: TStringField
      FieldName = 'LayoutID'
      Size = 50
    end
    object quMainLayoutName: TStringField
      FieldName = 'LayoutName'
      Size = 100
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 10
    end
  end
end
