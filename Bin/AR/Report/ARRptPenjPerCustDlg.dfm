inherited fmARRptPenjPerCustDlg: TfmARRptPenjPerCustDlg
  Left = 669
  Top = 210
  Caption = ''
  ClientHeight = 484
  ClientWidth = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 486
    inherited laTitle: TLabel
      Width = 321
      Caption = 'Laporan Penjualan Per Pelanggan'
    end
  end
  inherited paCenter: TPanel
    Width = 486
    Height = 403
    object Label1: TLabel
      Left = 621
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
    object gbTanggal: TGroupBox
      Left = 38
      Top = 7
      Width = 339
      Height = 70
      Caption = '[ Periode Tanggal ] '
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
        StyleController = SCEdit
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
        StyleController = SCEdit
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RbJenis: TRadioGroup
      Left = 632
      Top = 5
      Width = 89
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
      Left = 89
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
      Left = 162
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
      Left = 690
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
      Top = 118
      Width = 484
      Height = 284
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
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Pelanggan'
        Width = 161
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Pelanggan'
        Sorted = csUp
        Width = 317
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
      object dbgSuppID: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
      end
    end
    object RgPeriode: TRadioGroup
      Left = 380
      Top = 5
      Width = 94
      Height = 72
      Caption = '[Periode]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Tanggal'
        'Tahun')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnClick = RgPeriodeClick
    end
    object gbTahun: TGroupBox
      Left = 38
      Top = 7
      Width = 339
      Height = 70
      Caption = '[ Periode Tahun ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      object dxTahun: TdxSpinEdit
        Left = 14
        Top = 22
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleController = SCEdit
        StoredValues = 48
      end
      object cbAll: TCheckBox
        Left = 97
        Top = 19
        Width = 141
        Height = 17
        Caption = 'Semua Pelanggan'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = cbAllClick
      end
      object cbPelanggan: TCheckBox
        Left = 97
        Top = 36
        Width = 149
        Height = 17
        Caption = 'Pelanggan Terbaik'
        TabOrder = 2
        OnClick = cbPelangganClick
      end
      object dxJumlah: TdxSpinEdit
        Left = 262
        Top = 22
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
        StyleController = SCEdit
        StoredValues = 48
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 225
      Top = 80
      Width = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
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
    object gbBulan: TGroupBox
      Left = 38
      Top = 7
      Width = 339
      Height = 70
      Caption = '[ Periode Bulan ]'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Visible = False
      object dxThn: TdxSpinEdit
        Left = 190
        Top = 22
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleController = SCEdit
        StoredValues = 48
      end
      object dxBulan: TdxImageEdit
        Left = 42
        Top = 22
        Width = 148
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'January'
        StyleController = SCEdit
        Descriptions.Strings = (
          'January'
          'Febuary'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'Juli'
          'Agustus'
          'September'
          'Oktober'
          'November'
          'Desember')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
    end
  end
  inherited paBottom: TPanel
    Top = 444
    Width = 486
    Height = 40
    inherited bbPreview: TBitBtn
      Left = 238
      Top = 5
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 334
      Top = 5
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 408
      Top = 5
    end
    object rcNota: TCheckBox
      Left = 20
      Top = 2
      Width = 171
      Height = 17
      Caption = 'Detail Per Pelanggan'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      Visible = False
      OnClick = cbAllClick
    end
    object rcRekapitulasi: TCheckBox
      Left = 20
      Top = 19
      Width = 179
      Height = 17
      Caption = 'Rekapitulasi Penjualan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = rcRekapitulasiClick
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    object quActCustID: TStringField
      FieldName = 'CustID'
    end
    object quActCustName: TStringField
      FieldName = 'CustName'
      Size = 200
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
    object ActCari: TAction
      Category = 'Data'
      Caption = 'ActCari'
      ShortCut = 113
      OnExecute = bbCancelClick
    end
  end
end
