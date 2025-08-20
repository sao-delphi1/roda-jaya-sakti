inherited fmARRptPenjPerBrgDlg: TfmARRptPenjPerBrgDlg
  Left = 1128
  Top = 335
  Caption = ''
  ClientHeight = 477
  ClientWidth = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 434
    inherited laTitle: TLabel
      Width = 297
      Caption = 'Laporan Penjualan Per Barang '
    end
  end
  inherited paCenter: TPanel
    Width = 434
    Height = 395
    object Label1: TLabel
      Left = 608
      Top = 84
      Width = 62
      Height = 20
      Caption = 'JENIS :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 37
      Top = 7
      Width = 364
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
        Left = 158
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
        Left = 28
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 215
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbJenis: TRadioGroup
      Left = 625
      Top = 5
      Width = 167
      Height = 72
      Caption = '[ Valuta ]'
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'IDR'
        'USD')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object rbAll: TRadioButton
      Left = 39
      Top = 86
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 102
      Top = 86
      Width = 61
      Height = 17
      Caption = '&Select'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = rbSelectClick
    end
    object bbCancel: TdxButton
      Left = 175
      Top = 81
      Width = 60
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI (F2)'
      TabOrder = 4
    end
    object dxJenisBrg: TdxImageEdit
      Left = 677
      Top = 80
      Width = 123
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = 'SEMUA'
      StyleController = SCEdit
      Descriptions.Strings = (
        'SEMUA'
        'SPARE PART'
        'MESIN')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2')
      Values.Strings = (
        'A'
        'S'
        'M')
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 110
      Width = 432
      Height = 284
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ItemID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -16
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = [fsBold]
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
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'Kode Barang'
        Sorted = csUp
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
    object KodeDari: TdxButtonEdit
      Left = 237
      Top = 80
      Width = 163
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = dt1KeyPress
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
  end
  inherited paBottom: TPanel
    Top = 436
    Width = 434
    inherited bbPreview: TBitBtn
      Left = 186
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 282
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 356
    end
    object rcNota: TdxCheckEdit
      Left = 22
      Top = 8
      Width = 154
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Caption = 'Detail Per Barang'
      State = cbsChecked
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM INMsItem')
    object quActItemID: TStringField
      FieldName = 'ItemID'
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
    object ActSearch: TAction
      Category = 'Data'
      Caption = 'CARI (F2)'
      ShortCut = 113
      OnExecute = bbCancelClick
    end
  end
end
