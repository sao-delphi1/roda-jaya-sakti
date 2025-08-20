inherited fmARMsWilayah: TfmARMsWilayah
  Left = 174
  Top = 141
  Caption = 'Master Wilayah'
  ClientHeight = 460
  ClientWidth = 974
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 411
    inherited pa3: TdxContainer
      Height = 232
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 448
    Width = 974
  end
  inherited pa2: TdxContainer
    Height = 411
  end
  inherited paToolBar: TdxContainer
    Width = 974
    inherited sbLast: TSpeedButton
      Left = 937
    end
    inherited sbNext: TSpeedButton
      Left = 910
    end
    inherited sbPrev: TSpeedButton
      Left = 883
    end
    inherited sbFirst: TSpeedButton
      Left = 856
    end
    inherited sbPeriod: TSpeedButton
      Left = 830
    end
    inherited BvlPeriod: TBevel
      Left = 584
    end
    inherited laPeriod: TLabel
      Left = 588
    end
  end
  object dbgWilayah: TdxDBGrid [5]
    Left = 193
    Top = 37
    Width = 781
    Height = 411
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
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -15
    HeaderFont.Name = 'Times New Roman'
    HeaderFont.Style = [fsBold]
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgWilayahWilayahID: TdxDBGridColumn
      Caption = 'Kode Wilayah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Width = 122
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WilayahID'
    end
    object dbgWilayahWilayahName: TdxDBGridColumn
      Caption = 'Wilayah'
      Width = 362
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WilayahName'
    end
    object dbgWilayahUpdDate: TdxDBGridColumn
      Caption = 'Last Update'
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgWilayahUpdUser: TdxDBGridColumn
      Caption = 'Updated By'
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARMsWilayah')
    object quMainWilayahID: TStringField
      FieldName = 'WilayahID'
    end
    object quMainWilayahName: TStringField
      FieldName = 'WilayahName'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
end
