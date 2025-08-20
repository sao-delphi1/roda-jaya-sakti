inherited fmINMsProduct: TfmINMsProduct
  Left = 218
  Top = 78
  Caption = 'Master Compartement'
  ClientHeight = 314
  ClientWidth = 824
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 265
    inherited pa3: TdxContainer
      Height = 86
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 302
    Width = 824
  end
  inherited pa2: TdxContainer
    Height = 265
  end
  inherited dxContainer7: TdxContainer
    Width = 631
    Height = 265
    inherited pcParent: TdxPageControl
      Width = 631
      Height = 265
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 460
          Top = 243
        end
        inherited bbCancel: TdxButton
          Left = 540
          Top = 243
        end
      end
    end
  end
  object dbgProduct: TdxDBGrid [5]
    Left = 193
    Top = 37
    Width = 631
    Height = 265
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ProductID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
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
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgProductProductID: TdxDBGridColumn
      Caption = 'Kode Compartement'
      CharCase = ecUpperCase
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductID'
    end
    object dbgProductName: TdxDBGridColumn
      Caption = 'Nama Compartement'
      CharCase = ecUpperCase
      Width = 226
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductDesc'
    end
    object dbgProductUpdDate: TdxDBGridColumn
      Caption = 'Last Updated'
      ReadOnly = True
      TabStop = False
      Width = 157
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgProductUser: TdxDBGridColumn
      Caption = 'Updated By'
      ReadOnly = True
      TabStop = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited paToolBar: TdxContainer
    Width = 824
    inherited sbLast: TSpeedButton
      Left = 787
    end
    inherited sbNext: TSpeedButton
      Left = 760
    end
    inherited sbPrev: TSpeedButton
      Left = 733
    end
    inherited sbFirst: TSpeedButton
      Left = 706
    end
    inherited sbPeriod: TSpeedButton
      Left = 680
    end
    inherited BvlPeriod: TBevel
      Left = 434
    end
    inherited laPeriod: TLabel
      Left = 438
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM INMsProduct')
    Left = 224
    object quMainProductID: TStringField
      FieldName = 'ProductID'
    end
    object quMainProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
      EditMask = 'DD MMMM YYYY'
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
