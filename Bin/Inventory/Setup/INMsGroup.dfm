inherited fmINMsGroup: TfmINMsGroup
  Left = 544
  Top = 85
  Caption = 'Master Category'
  ClientHeight = 379
  ClientWidth = 751
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 330
    inherited pa3: TdxContainer
      Height = 151
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 367
    Width = 751
  end
  inherited pa2: TdxContainer
    Height = 330
  end
  inherited dxContainer7: TdxContainer
    Width = 558
    Height = 330
    inherited pcParent: TdxPageControl
      Width = 558
      Height = 330
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 411
          Top = 308
        end
        inherited bbCancel: TdxButton
          Left = 488
          Top = 308
        end
      end
    end
  end
  object dbgGroup: TdxDBGrid [5]
    Left = 193
    Top = 37
    Width = 558
    Height = 330
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
    object dbgGroupGroupID: TdxDBGridColumn
      Caption = 'Kode Group'
      CharCase = ecUpperCase
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupID'
    end
    object dbgGroupName: TdxDBGridColumn
      Caption = 'Nama Group'
      CharCase = ecUpperCase
      Width = 203
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupDesc'
    end
    object dbgGroupColumn5: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'Office'
      MinWidth = 16
      Visible = False
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FgGroup'
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
    object dbgGroupColumn6: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'Group Unit'
      MinWidth = 16
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupA'
      Descriptions.Strings = (
        'RAJA'
        'SUBCON')
      ImageIndexes.Strings = (
        '0'
        '1')
      ShowDescription = True
      Values.Strings = (
        'R'
        'S')
    end
    object dbgGroupColumn7: TdxDBGridImageColumn
      Alignment = taLeftJustify
      MinWidth = 16
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Jenis'
      Descriptions.Strings = (
        'Bukan Alat Berat'
        'Alat Berat')
      ImageIndexes.Strings = (
        '0'
        '1')
      ShowDescription = True
      Values.Strings = (
        'J'
        'A')
    end
    object dbgGroupUpdDate: TdxDBGridColumn
      Caption = 'Last Updated'
      ReadOnly = True
      TabStop = False
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgGroupUser: TdxDBGridColumn
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
    Width = 751
    inherited sbLast: TSpeedButton
      Left = 714
    end
    inherited sbNext: TSpeedButton
      Left = 687
    end
    inherited sbPrev: TSpeedButton
      Left = 660
    end
    inherited sbFirst: TSpeedButton
      Left = 633
    end
    inherited sbPeriod: TSpeedButton
      Left = 607
    end
    inherited BvlPeriod: TBevel
      Left = 361
    end
    inherited laPeriod: TLabel
      Left = 365
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      
        'SELECT *,FgGroup as GroupA,FgGroup as Jenis FROM INMsGroup order' +
        ' by GroupID')
    object quMainGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quMainGroupDesc: TStringField
      FieldName = 'GroupDesc'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFgGroup: TStringField
      FieldName = 'FgGroup'
      Size = 1
    end
    object quMainGroupA: TStringField
      FieldName = 'GroupA'
      ReadOnly = True
      Size = 1
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      ReadOnly = True
      Size = 1
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
