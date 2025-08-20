inherited fmINRptHistoryBarangDlg: TfmINRptHistoryBarangDlg
  Left = 508
  Top = 144
  Caption = ''
  ClientHeight = 474
  ClientWidth = 367
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 367
    inherited laTitle: TLabel
      Width = 193
      Caption = 'Laporan Kartu Stok'
    end
  end
  inherited paCenter: TPanel
    Width = 367
    Height = 392
    object Label4: TLabel
      Left = 22
      Top = 76
      Width = 75
      Height = 20
      Caption = 'Gudang :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 21
      Top = 10
      Width = 321
      Height = 63
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 137
        Top = 26
        Width = 51
        Height = 20
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
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
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 128
      Width = 365
      Height = 263
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
        Caption = 'Part Number'
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemID'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Caption = 'Nama Barang'
        Sorted = csUp
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
    end
    object rbAll2: TRadioButton
      Left = 20
      Top = 108
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbAll2Click
    end
    object rbselect2: TRadioButton
      Left = 80
      Top = 108
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 3
      OnClick = rbAll2Click
    end
    object KodeDari: TdxButtonEdit
      Left = 100
      Top = 74
      Width = 69
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      ExistButtons = True
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 168
      Top = 74
      Width = 175
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      CharCase = ecUpperCase
      ReadOnly = True
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      StoredValues = 64
      ExistButtons = True
    end
    object bbCancel: TdxButton
      Left = 232
      Top = 107
      Width = 110
      Height = 18
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI BARANG'
      TabOrder = 6
    end
  end
  inherited paBottom: TPanel
    Top = 433
    Width = 367
    DesignSize = (
      367
      41)
    inherited bbPreview: TBitBtn
      Left = 121
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 215
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 289
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select ItemID,ItemName FROM INMsItem')
    object quActItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
  end
  object ActionList: TActionList
    Left = 228
    Top = 8
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = bbPreviewClick
    end
  end
end
