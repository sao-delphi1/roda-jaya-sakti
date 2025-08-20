inherited fmINRptMsItemDlg: TfmINRptMsItemDlg
  Left = 266
  Top = 98
  Caption = ''
  ClientHeight = 489
  ClientWidth = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 492
    inherited laTitle: TLabel
      Left = 8
      Top = 4
      Width = 227
      Caption = 'Laporan Master Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 492
    Height = 407
    object rbAll: TRadioButton
      Left = 6
      Top = 196
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 70
      Top = 196
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 99
      Width = 490
      Height = 307
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 2
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemId: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Sorted = csUp
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemId'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object CheckBox1: TCheckBox
      Left = 200
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Status Aktif Saja'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 89
      Caption = '[ Urut ]'
      ItemIndex = 0
      Items.Strings = (
        'Nama Barang'
        'Part Number'
        'Type Unit'
        'Satuan')
      TabOrder = 4
    end
    object RadioGroup2: TRadioGroup
      Left = 200
      Top = 8
      Width = 185
      Height = 70
      Caption = '[ Jenis ]'
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Sparepart'
        'Inventaris')
      TabOrder = 5
    end
  end
  inherited paBottom: TPanel
    Top = 448
    Width = 492
    inherited bbPreview: TBitBtn
      Left = 246
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 340
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 414
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select  * FROM INMsItem')
    object quActItemID: TStringField
      FieldName = 'ItemID'
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActProductID: TStringField
      FieldName = 'ProductID'
    end
    object quActGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActGarantee: TStringField
      FieldName = 'Garantee'
      FixedChar = True
      Size = 1
    end
    object quActCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quActUserPrice: TBCDField
      FieldName = 'UserPrice'
      Precision = 18
    end
    object quActDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      Precision = 18
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActJangkaGarantee: TBCDField
      FieldName = 'JangkaGarantee'
      Precision = 18
      Size = 0
    end
    object quActMinimumStok: TBCDField
      FieldName = 'MinimumStok'
      Precision = 18
      Size = 0
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 380
    Top = 4
  end
end
