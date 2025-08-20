inherited fmMTMsService: TfmMTMsService
  Left = 380
  Top = 326
  Caption = 'Master Service/Perbaikan Unit'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited dxContainer7: TdxContainer
    inherited pcParent: TdxPageControl
      inherited ts01: TdxTabSheet
        object dbgUOM: TdxDBGrid
          Left = 0
          Top = 0
          Width = 597
          Height = 487
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ServiceId'
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
          object dbgUOMUOMId: TdxDBGridColumn
            Caption = 'ID'
            CharCase = ecUpperCase
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ServiceId'
          end
          object dbgUOMColumn4: TdxDBGridColumn
            Caption = 'Kode Service'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KdService'
          end
          object dbgUOMColumn5: TdxDBGridColumn
            Caption = 'Nama Perbaikan'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ServiceName'
          end
          object dbgUOMUpdDate: TdxDBGridColumn
            Caption = 'Last Updated'
            Color = clScrollBar
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgUOMUpdUser: TdxDBGridColumn
            Caption = 'Updated By'
            Color = clScrollBar
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
      end
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'select * from MTMsService')
    object quMainServiceId: TStringField
      FieldName = 'ServiceId'
      Size = 50
    end
    object quMainServiceName: TStringField
      FieldName = 'ServiceName'
      Size = 100
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainKdService: TStringField
      FieldName = 'KdService'
      Size = 50
    end
  end
end
