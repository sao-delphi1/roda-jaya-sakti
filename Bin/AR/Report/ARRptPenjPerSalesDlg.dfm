inherited fmARRptPenjPerSalesDlg: TfmARRptPenjPerSalesDlg
  Left = 470
  Top = 232
  Caption = ''
  ClientHeight = 427
  ClientWidth = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 561
    inherited laTitle: TLabel
      Width = 271
      Caption = 'Laporan Penjualan Per Sales'
    end
  end
  inherited paCenter: TPanel
    Width = 561
    Height = 345
    object Label1: TLabel
      Left = 360
      Top = 84
      Width = 62
      Height = 20
      Caption = 'JENIS :'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 7
      Width = 331
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
        Left = 139
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
        Left = 9
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
        Left = 196
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
      Left = 353
      Top = 5
      Width = 90
      Height = 72
      Caption = '[ Valuta ]'
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
      Left = 19
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
      Left = 82
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
      Left = 155
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
      Left = 429
      Top = 80
      Width = 123
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = 'SEMUA'
      Visible = False
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
      Top = 115
      Width = 559
      Height = 229
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SalesID'
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
      object dbgListSalesID: TdxDBGridMaskColumn
        Caption = 'Kode Sales'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dbgListSalesName: TdxDBGridMaskColumn
        Caption = 'Nama Sales'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 219
      Top = 80
      Width = 138
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
    object RgJenis: TRadioGroup
      Left = 447
      Top = 5
      Width = 108
      Height = 72
      Caption = '[ Jenis ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Penjualan'
        'Komisi')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnClick = RgJenisClick
    end
  end
  inherited paBottom: TPanel
    Top = 386
    Width = 561
    inherited bbPreview: TBitBtn
      Left = 314
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 409
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 483
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
      Caption = 'Detail Per Sales'
      State = cbsChecked
    end
    object Panel1: TPanel
      Left = 22
      Top = 4
      Width = 241
      Height = 34
      BevelOuter = bvNone
      Color = 14929269
      TabOrder = 4
      Visible = False
      object Label3: TLabel
        Left = 16
        Top = 8
        Width = 96
        Height = 19
        Caption = 'Aging Tagihan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 180
        Top = 8
        Width = 30
        Height = 19
        Caption = 'Hari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dxSpinEdit1: TdxSpinEdit
        Left = 118
        Top = 4
        Width = 58
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Alignment = taRightJustify
        StyleController = SCEdit
        MaxValue = 1000
        StoredValues = 49
      end
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsSales WHERE FgActive <> 0')
    object quActSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
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
