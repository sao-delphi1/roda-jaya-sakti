inherited fmINMsUOM: TfmINMsUOM
  Left = 100
  Top = 34
  Caption = 'Master Satuan'
  ClientHeight = 458
  ClientWidth = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 409
    inherited pa3: TdxContainer
      Height = 230
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 446
    Width = 634
  end
  inherited pa2: TdxContainer
    Height = 409
  end
  object dbgUOM: TdxDBGrid [4]
    Left = 193
    Top = 37
    Width = 441
    Height = 409
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UOMId'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
      Caption = 'Satuan'
      CharCase = ecUpperCase
      Width = 127
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UOMId'
    end
    object dbgUOMUpdDate: TdxDBGridColumn
      Caption = 'Last Updated'
      Color = clScrollBar
      ReadOnly = True
      TabStop = False
      Width = 177
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
  inherited paToolBar: TdxContainer
    Width = 634
    inherited sbLast: TSpeedButton
      Left = 606
    end
    inherited sbNext: TSpeedButton
      Left = 583
    end
    inherited sbPrev: TSpeedButton
      Left = 560
    end
    inherited sbFirst: TSpeedButton
      Left = 537
    end
    inherited sbPeriod: TSpeedButton
      Left = 509
    end
    inherited BvlPeriod: TBevel
      Left = 263
    end
    inherited laPeriod: TLabel
      Left = 267
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    SQL.Strings = (
      'SELECT * FROM INMsUOM')
    object quMainUOMId: TStringField
      FieldName = 'UOMId'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD/MM/YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  inherited ActionList: TActionList
    inherited ActDetail: TAction
      Enabled = False
    end
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
end
