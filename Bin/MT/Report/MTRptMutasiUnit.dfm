inherited fmMTRptMutasiUnit: TfmMTRptMutasiUnit
  Left = 649
  Top = 301
  Caption = 'Laporan'
  ClientHeight = 482
  ClientWidth = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 461
    Height = 178
    inherited laTitle: TLabel
      Width = 122
      Caption = 'Mutasi Unit'
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 38
      Width = 448
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Mutasi Bedasarkan Tanggal'
        'Lokasi Terakhir Unit')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object GroupBox1: TGroupBox
      Left = 193
      Top = 74
      Width = 260
      Height = 50
      Caption = '[ Pilih Tanggal ]'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 113
        Top = 24
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 9
        Top = 20
        Width = 100
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 152
        Top = 20
        Width = 100
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 5
      Top = 73
      Width = 185
      Height = 78
      ItemIndex = 0
      Items.Strings = (
        'Semua Lokasi'
        'Lokasi Asal'
        'Lokasi Tujuan')
      TabOrder = 2
      OnClick = RadioGroup2Click
    end
    object Edit1: TEdit
      Left = 193
      Top = 130
      Width = 121
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 3
    end
    object Button1: TButton
      Left = 317
      Top = 130
      Width = 67
      Height = 22
      Caption = 'Cari'
      TabOrder = 4
      OnClick = Button1Click
    end
    object rbAll2: TRadioButton
      Left = 13
      Top = 155
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = rbAll2Click
    end
    object rbselect2: TRadioButton
      Left = 73
      Top = 155
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 6
      OnClick = rbAll2Click
    end
    object Button2: TButton
      Left = 141
      Top = 154
      Width = 67
      Height = 22
      Caption = 'Cari Unit'
      TabOrder = 7
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 80
      Width = 265
      Height = 17
      Caption = 'Tampilkan Unit yang memiliki lokasi'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  inherited paCenter: TPanel
    Top = 178
    Width = 461
    Height = 263
    object dbgList: TdxDBGrid
      Left = 1
      Top = 1
      Width = 459
      Height = 261
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NoUnit'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListItemID: TdxDBGridMaskColumn
        Caption = 'No Unit'
        Sorted = csUp
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dbgListItemName: TdxDBGridMaskColumn
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Description'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 441
    Width = 461
    inherited bbPreview: TBitBtn
      Left = 215
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 309
    end
    inherited bbExit: TBitBtn
      Left = 383
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select * from inmsnounit')
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quActDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object quActUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quActUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quActFgGroup: TStringField
      FieldName = 'FgGroup'
    end
    object quActgroupid: TStringField
      FieldName = 'groupid'
      Size = 100
    end
    object quActjenis: TStringField
      FieldName = 'jenis'
      Size = 10
    end
  end
end
