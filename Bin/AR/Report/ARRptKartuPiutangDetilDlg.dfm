inherited fmARRptKartuPiutangDetilDlg: TfmARRptKartuPiutangDetilDlg
  Left = 524
  Top = 71
  Caption = ''
  ClientHeight = 496
  ClientWidth = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 425
    inherited laTitle: TLabel
      Width = 325
      Caption = 'Laporan Kartu Piutang Penjualan'
    end
  end
  inherited paCenter: TPanel
    Width = 425
    Height = 399
    object GroupBox1: TGroupBox
      Left = 9
      Top = 7
      Width = 384
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
      object Label1: TLabel
        Left = 170
        Top = 30
        Width = 47
        Height = 19
        Caption = 'sampai'
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
        Left = 234
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
    object rbJenis: TRadioGroup
      Left = 473
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
      Top = 88
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
      OnClick = rbAllClick
    end
    object rbSelect: TRadioButton
      Left = 98
      Top = 88
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
      OnClick = rbAllClick
    end
    object bbCancel: TdxButton
      Left = 184
      Top = 83
      Width = 60
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI (F2)'
      TabOrder = 4
    end
    object Panel1: TPanel
      Left = 37
      Top = 227
      Width = 151
      Height = 21
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 6
      object rbselect2: TRadioButton
        Left = 64
        Top = 1
        Width = 61
        Height = 17
        Caption = 'S&elect'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbAll2Click
      end
      object rbAll2: TRadioButton
        Left = 4
        Top = 1
        Width = 53
        Height = 17
        Caption = 'A&ll'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = rbAll2Click
      end
    end
    object dxButton1: TdxButton
      Left = 299
      Top = 227
      Width = 110
      Height = 21
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CARI INVOICE'
      TabOrder = 7
    end
    object dbgInvoice: TdxDBGrid
      Left = 1
      Top = 252
      Width = 423
      Height = 146
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KonInvPelID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsMain
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
      object dbgInvoiceKonInvPelID: TdxDBGridColumn
        Caption = 'Invoice'
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KonInvPelID'
      end
      object dbgInvoiceTgl: TdxDBGridColumn
        Caption = 'Tanggal'
        Width = 203
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 245
      Top = 82
      Width = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
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
    object dbgList: TdxDBGrid
      Left = 1
      Top = 114
      Width = 423
      Height = 109
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CustID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
    Top = 440
    Width = 425
    Height = 56
    inherited bbPreview: TBitBtn
      Left = 178
      Top = 21
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 273
      Top = 21
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 347
      Top = 21
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 155
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object cbHistory: TCheckBox
      Left = 8
      Top = 29
      Width = 155
      Height = 17
      Caption = 'Tampilkan Mutasi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = cbHistoryClick
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select CustID,CustName FROM ARMsCustomer')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsAct
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT KonInvPelID,CONVERT(VARCHAR(10),Transdate,103) as Tgl'
      'FROM ARTrKonInvPelHd'
      'WHERE CustID=:CustID')
    Left = 256
    Top = 4
    object quMainKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quMainTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 10
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
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
