inherited fmINRptStokMin: TfmINRptStokMin
  Left = 174
  Caption = 'Laporan Minimal Stock'
  ClientHeight = 334
  ClientWidth = 435
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 435
    inherited laTitle: TLabel
      Width = 226
      Caption = 'Laporan Minimal Stock'
    end
  end
  inherited paCenter: TPanel
    Width = 435
    Height = 252
    object rbSelect: TRadioButton
      Left = 88
      Top = 92
      Width = 61
      Height = 17
      Caption = '&Select'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbAllClick
    end
    object rbAll: TRadioButton
      Left = 28
      Top = 92
      Width = 53
      Height = 17
      Caption = '&All'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rbAllClick
    end
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 39
      Width = 433
      Height = 212
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WarehouseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -9
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object dxDBGridMaskColumn1: TdxDBGridMaskColumn
        Caption = 'Kode Gudang'
        Sorted = csUp
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseID'
      end
      object dxDBGridMaskColumn2: TdxDBGridMaskColumn
        Caption = 'Nama Gudang'
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WarehouseName'
      end
    end
    object bbCari: TdxButton
      Left = 8
      Top = 4
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'CARI GUDANG'
      TabOrder = 3
    end
  end
  inherited paBottom: TPanel
    Top = 293
    Width = 435
    inherited bbPreview: TBitBtn
      Left = 189
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 283
    end
    inherited bbExit: TBitBtn
      Left = 357
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmswarehouse')
    object quActWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quActWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
    object quActAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quActCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quActContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 100
    end
    object quActPhone: TStringField
      FieldName = 'Phone'
    end
    object quActFax: TStringField
      FieldName = 'Fax'
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActlogo: TBlobField
      FieldName = 'logo'
    end
    object quActFgOtoJkt: TStringField
      FieldName = 'FgOtoJkt'
      Size = 10
    end
  end
end
