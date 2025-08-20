inherited fmARRptSisaTransferBarangDlg: TfmARRptSisaTransferBarangDlg
  Left = 287
  Top = 41
  Caption = ''
  ClientHeight = 495
  ClientWidth = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 425
    inherited laTitle: TLabel
      Left = 8
      Top = 4
      Width = 312
      Caption = 'Laporan DO Belum buka Invoice'
    end
  end
  inherited paCenter: TPanel
    Width = 425
    Height = 413
    object GroupBox1: TGroupBox
      Left = 17
      Top = 7
      Width = 176
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
    end
    object rbJenis: TRadioGroup
      Left = 201
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
      Left = 35
      Top = 94
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
    end
    object rbSelect: TRadioButton
      Left = 98
      Top = 94
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
    end
    object bbCancel: TdxButton
      Left = 184
      Top = 89
      Width = 60
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI (F2)'
      TabOrder = 4
    end
    object KodeDari: TdxDBEdit
      Left = 246
      Top = 88
      Width = 140
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      StyleController = SCEdit
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 121
      Width = 423
      Height = 291
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
      object dbgListCust: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Sorted = csUp
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Width = 266
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 454
    Width = 425
    inherited bbPreview: TBitBtn
      Left = 178
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 273
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 347
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select  * FROM ARMsCustomer')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quActAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quActCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quActFax: TStringField
      FieldName = 'Fax'
    end
    object quActEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quActNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quActCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
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
