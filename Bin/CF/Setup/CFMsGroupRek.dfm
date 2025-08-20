inherited fmCFMsGroupRek: TfmCFMsGroupRek
  Left = 361
  Top = 245
  Caption = 'Master Group Rekening'
  ClientHeight = 434
  ClientWidth = 964
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 385
    inherited pa3: TdxContainer
      Height = 206
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 422
    Width = 964
  end
  inherited pa2: TdxContainer
    Height = 385
  end
  object dbgList: TdxDBGrid [4]
    Left = 193
    Top = 37
    Width = 771
    Height = 385
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ValutaID'
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
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgListGroupRekId: TdxDBGridColumn
      Caption = 'Kode Group Rekening'
      Width = 179
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupRekId'
    end
    object dbgListGroupRekName: TdxDBGridMaskColumn
      Caption = 'Nama Group Rekening'
      Width = 310
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GroupRekName'
    end
    object dbgListColumn6: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'Jenis'
      MinWidth = 16
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Urut'
      Descriptions.Strings = (
        'AKTIVA'
        'KEWAJIBAN'
        'MODAL'
        'PENDAPATAN'
        'BEBAN'
        'BIAYA/PEND LAIN'
        'PAJAK'
        'PEMBELIAN')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      ShowDescription = True
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object dbgListKomponen: TdxDBGridImageColumn
      Alignment = taLeftJustify
      Caption = 'KOMPONEN'
      MinWidth = 16
      Visible = False
      Width = 104
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Componen'
      Descriptions.Strings = (
        'Aktiva'
        'Passiva')
      ImageIndexes.Strings = (
        '0'
        '1')
      ShowDescription = True
      Values.Strings = (
        'A'
        'P')
    end
    object dbgListUpdDate: TdxDBGridColumn
      Caption = 'Last Updated'
      Color = 13676331
      TabStop = False
      Width = 126
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdDate'
    end
    object dbgListUpdUser: TdxDBGridColumn
      Caption = 'Updated By'
      Color = 13676331
      DisableEditor = True
      TabStop = False
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UpdUser'
    end
  end
  inherited paToolBar: TdxContainer
    Width = 964
    inherited sbLast: TSpeedButton
      Left = 936
    end
    inherited sbNext: TSpeedButton
      Left = 913
    end
    inherited sbPrev: TSpeedButton
      Left = 890
    end
    inherited sbFirst: TSpeedButton
      Left = 867
    end
    inherited sbPeriod: TSpeedButton
      Left = 839
    end
    inherited BvlPeriod: TBevel
      Left = 593
    end
    inherited laPeriod: TLabel
      Left = 597
    end
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsGroupRek'
      'ORDER BY GroupRekId')
    object quMainGroupRekId: TStringField
      FieldName = 'GroupRekId'
      Size = 30
    end
    object quMainGroupRekName: TStringField
      FieldName = 'GroupRekName'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainComponen: TStringField
      FieldName = 'Componen'
      Size = 1
    end
    object quMainUrut: TIntegerField
      FieldName = 'Urut'
    end
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
end
