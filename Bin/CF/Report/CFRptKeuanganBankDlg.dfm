inherited fmCFRptKeuanganBankDlg: TfmCFRptKeuanganBankDlg
  Left = 288
  Top = 123
  Caption = ''
  ClientHeight = 538
  ClientWidth = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 531
    inherited laTitle: TLabel
      Width = 433
      Caption = 'Laporan Keuangan Perputaran Kas dan Bank'
    end
  end
  inherited paCenter: TPanel
    Width = 531
    Height = 461
    object GroupBox1: TGroupBox
      Left = 6
      Top = 3
      Width = 379
      Height = 62
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 154
        Top = 27
        Width = 61
        Height = 22
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 12
        Top = 23
        Width = 135
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 222
        Top = 23
        Width = 135
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbSelect: TRadioButton
      Left = 76
      Top = 75
      Width = 125
      Height = 17
      Caption = 'Select'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 9
      Top = 75
      Width = 64
      Height = 17
      Caption = 'All'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 104
      Width = 529
      Height = 356
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BankId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -19
      HeaderFont.Name = 'Arial'
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
      object dbgListBankId: TdxDBGridMaskColumn
        Caption = 'Kode Bank'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BankId'
      end
      object dbgListBankName: TdxDBGridMaskColumn
        Caption = 'Nama Bank'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BankName'
      end
    end
    object RbValuta: TRadioGroup
      Left = 1059
      Top = 75
      Width = 215
      Height = 64
      Caption = '[ Valuta ]'
      Columns = 3
      Ctl3D = False
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'ALL'
        'IDR'
        'USD')
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 392
      Top = 7
      Width = 123
      Height = 90
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Kas'
        'Bank')
      ParentFont = False
      TabOrder = 5
      OnClick = RadioGroup1Click
    end
    object dxButton6: TdxButton
      Tag = 4444
      Left = 235
      Top = 69
      Width = 150
      Height = 28
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton6Click
      Caption = 'Cari'
      TabOrder = 6
      TabStop = False
    end
  end
  inherited paBottom: TPanel
    Top = 502
    Width = 531
    Height = 36
    inherited bbPreview: TBitBtn
      Left = 285
      Top = 3
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 379
      Top = 3
    end
    inherited bbExit: TBitBtn
      Left = 453
      Top = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM CFMsBank'
      'WHERE FgActive='#39'Y'#39)
    object quActBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quActBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
end
