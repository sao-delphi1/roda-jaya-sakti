inherited fmRptSolar: TfmRptSolar
  Left = 366
  Top = 81
  Caption = 'Laporan'
  ClientHeight = 379
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited laTitle: TLabel
      Width = 160
      Caption = 'Pemakaian BBM'
    end
  end
  inherited paCenter: TPanel
    Height = 297
    object GroupBox1: TGroupBox
      Left = 54
      Top = 7
      Width = 319
      Height = 70
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 133
        Top = 30
        Width = 47
        Height = 19
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 10
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 190
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 108
      Width = 431
      Height = 188
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 1
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Kode Gudang'
        Sorted = csUp
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Gudang'
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object rbAll2: TRadioButton
      Left = 12
      Top = 84
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbAll2Click
    end
    object rbselect2: TRadioButton
      Left = 72
      Top = 84
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 3
      OnClick = rbAll2Click
    end
  end
  inherited paBottom: TPanel
    Top = 338
    inherited bbPreview: TBitBtn
      OnClick = bbPreviewClick
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmswarehouse order by warehouseID')
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quActWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
  end
end
