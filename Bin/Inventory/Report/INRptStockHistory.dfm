inherited fmINRptStockHistory: TfmINRptStockHistory
  Left = 710
  Top = 219
  Caption = 'Kartu Stock'
  ClientHeight = 441
  ClientWidth = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 382
    inherited laTitle: TLabel
      Width = 215
      Caption = 'Laporan Umur Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 382
    Height = 359
    object GroupBox1: TGroupBox
      Left = 21
      Top = 10
      Width = 321
      Height = 63
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 142
        Top = 26
        Width = 40
        Height = 18
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 22
        Width = 109
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 193
        Top = 22
        Width = 110
        TabOrder = 1
        OnKeyPress = dt2KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 106
      Width = 380
      Height = 252
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
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
        Caption = 'Kode Barang'
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Width = 348
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object rbAll: TRadioButton
      Left = 30
      Top = 82
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbAllClick
      OnKeyPress = rbAllKeyPress
    end
    object rbSelect: TRadioButton
      Left = 102
      Top = 82
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 3
      OnClick = rbSelectClick
      OnKeyPress = rbSelectKeyPress
    end
    object bbCancel: TdxButton
      Left = 232
      Top = 75
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      OnKeyPress = bbCancelKeyPress
      Caption = 'CARI BARANG'
      TabOrder = 4
    end
  end
  inherited paBottom: TPanel
    Top = 400
    Width = 382
    inherited bbPreview: TBitBtn
      Left = 136
      OnClick = bbPreviewClick
      OnKeyPress = bbPreviewKeyPress
    end
    inherited bbPrint: TBitBtn
      Left = 230
    end
    inherited bbExit: TBitBtn
      Left = 304
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmsitem')
  end
end
