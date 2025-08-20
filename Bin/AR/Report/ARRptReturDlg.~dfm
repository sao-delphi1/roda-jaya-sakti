inherited fmARRptReturPjDlg: TfmARRptReturPjDlg
  Left = 779
  Top = 154
  Caption = ''
  ClientHeight = 518
  ClientWidth = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 390
    inherited laTitle: TLabel
      Left = 8
      Top = 4
      Width = 239
      Caption = 'Laporan Retur Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 390
    Height = 436
    object GrbRetur: TRadioGroup
      Left = 536
      Top = 6
      Width = 193
      Height = 45
      Caption = '[ Retur ]'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Rusak'
        'Batal')
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 86
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSelectClick
    end
    object rbSelect: TRadioButton
      Left = 82
      Top = 86
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 111
      Width = 388
      Height = 324
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CustID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
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
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Name Pelanggan'
        Width = 324
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object GroupBox1: TGroupBox
      Left = 17
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
      TabOrder = 4
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
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dxButton1: TdxButton
      Left = 179
      Top = 81
      Width = 60
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CARI (F2)'
      TabOrder = 5
    end
    object KodeDari: TdxButtonEdit
      Left = 243
      Top = 80
      Width = 138
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
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
    Top = 477
    Width = 390
    inherited bbPreview: TBitBtn
      Left = 164
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 238
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 312
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select  * FROM ARMsCustomer'
      'ORDER BY CustId')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
  end
end
