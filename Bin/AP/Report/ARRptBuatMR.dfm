inherited fmARRptBuatMR: TfmARRptBuatMR
  Left = 711
  Top = 348
  Caption = 'Laporan MR'
  ClientHeight = 309
  ClientWidth = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 322
    inherited laTitle: TLabel
      Width = 233
      Caption = 'Laporan Pembuatan MR'
    end
  end
  inherited paCenter: TPanel
    Width = 322
    Height = 227
    object GroupBox1: TGroupBox
      Left = 8
      Top = 15
      Width = 313
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 136
        Top = 24
        Width = 38
        Height = 17
        Caption = 'Sampai'
      end
      object dt1: TdxDateEdit
        Left = 16
        Top = 18
        Width = 115
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 181
        Top = 18
        Width = 115
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 10
      Top = 77
      Width = 53
      Height = 17
      Caption = '&All'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbAllClick
    end
    object rbSelect: TRadioButton
      Left = 66
      Top = 77
      Width = 61
      Height = 17
      Caption = '&Select'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 103
      Width = 320
      Height = 122
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'userid'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
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
      HeaderFont.Height = -12
      HeaderFont.Name = 'Comic Sans MS'
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
      object dbgListUserID: TdxDBGridMaskColumn
        Caption = 'User ID'
        Width = 161
        BandIndex = 0
        RowIndex = 0
        FieldName = 'userid'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 268
    Width = 322
    inherited bbPreview: TBitBtn
      Left = 96
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 170
    end
    inherited bbExit: TBitBtn
      Left = 244
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select userid from sysmsuser')
  end
end
