inherited fmCFRptKeuanganDetBankDlg: TfmCFRptKeuanganDetBankDlg
  Left = 247
  Top = 116
  Caption = ''
  ClientHeight = 586
  ClientWidth = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 516
    inherited laTitle: TLabel
      Width = 310
      Caption = 'Laporan Neraca Percobaan Bank'
    end
  end
  inherited paCenter: TPanel
    Width = 516
    Height = 504
    object GroupBox1: TGroupBox
      Left = 22
      Top = 7
      Width = 293
      Height = 55
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 126
        Top = 24
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 25
        Top = 18
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 177
        Top = 18
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbSelect: TRadioButton
      Left = 82
      Top = 72
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 1
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 2
      Top = 72
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 92
      Width = 514
      Height = 411
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RekeningId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 3
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListRekeningId: TdxDBGridMaskColumn
        Caption = 'Kode Rekening'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningId'
      end
      object dbgListRekeningName: TdxDBGridMaskColumn
        Caption = 'Nama Rekening'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RekeningName'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 545
    Width = 516
    inherited bbPreview: TBitBtn
      Left = 290
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 364
    end
    inherited bbExit: TBitBtn
      Left = 438
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select Distinct A.RekeningId,B.RekeningName FROM'
      'ALLMONEY A INNER JOIN CFMsRekening B '
      'ON A.RekeningId=B.RekeningId  WHERE'
      '(FgBBKK='#39'BM'#39' OR FgBBKK='#39'BK'#39')  ORDER BY A.RekeningId')
    object quActRekeningId: TStringField
      FieldName = 'RekeningId'
      Size = 30
    end
    object quActRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
  end
end
