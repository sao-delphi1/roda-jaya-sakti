inherited fmOPRptWorkUnit: TfmOPRptWorkUnit
  Left = 501
  Top = 286
  Caption = 'Laporan Working Unit'
  ClientWidth = 1023
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1023
    Height = 81
    inherited laTitle: TLabel
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 3
      Width = 319
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
        Left = 133
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
        Left = 10
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
        Left = 190
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
    object bbRefresh: TBitBtn
      Left = 341
      Top = 30
      Width = 112
      Height = 34
      Hint = 'Refresh'
      Caption = '&Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbRefreshClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
        C43337777777777777F33444881B188444333777F3737337773333308881FF70
        33333337F3373337F3333330888BF770333333373F33F337333333330881F703
        3333333373F73F7333333333308B703333333333373F77333333333333080333
        3333333333777FF333333333301F103333333333377777FF3333333301B1F103
        333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
        333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
        C43337777777777777F334444444444444333777777777777733}
      NumGlyphs = 2
    end
  end
  inherited paCenter: TPanel
    Top = 81
    Width = 1023
    Height = 413
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1021
      Height = 411
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'TSID'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,0'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandColor = clMoneyGreen
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = [fsBold]
      DataSource = dsAct
      Filter.Active = True
      Filter.Criteria = {00000000}
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = [fsBold]
      HideFocusRect = True
      HideSelection = True
      HighlightTextColor = clRed
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      ShowRowFooter = True
      object dgrReportColumn1: TdxDBGridColumn
        Alignment = taLeftJustify
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TSID'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Alignment = taLeftJustify
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NoUnit'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Alignment = taLeftJustify
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Jumlah'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Jam Masuk'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JamMasuk'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Jam Keluar'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JamKeluar'
      end
      object dgrReportColumn6: TdxDBGridColumn
        Alignment = taLeftJustify
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tonase'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Alignment = taLeftJustify
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesID'
      end
      object dgrReportColumn8: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Nama Sales'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SalesName'
      end
      object dgrReportColumn9: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Nama Site'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SiteName'
      end
    end
  end
  inherited paBottom: TPanel
    Width = 1023
    inherited bbPreview: TBitBtn
      Left = -87
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 7
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 81
      Enabled = False
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      
        'select A.TSID,A.NoUnit,A.Jumlah,A.JamMasuk,A.JamKeluar,A.Tonase,' +
        'A.SalesID,C.SalesName,B.Transdate,D.SiteName from OPWorkUnitdt A' +
        ' '
      
        'inner join OPWorkUnitHd B on A.TSID=B.TSID inner join ARMsSales ' +
        'C on A.SalesID=C.SalesID inner join INMsSites D on B.SiteID=D.Si' +
        'teID')
    object quActTSID: TStringField
      FieldName = 'TSID'
      Size = 50
    end
    object quActNoUnit: TStringField
      FieldName = 'NoUnit'
    end
    object quActJumlah: TBCDField
      FieldName = 'Jumlah'
      Precision = 18
    end
    object quActTonase: TBCDField
      FieldName = 'Tonase'
      Precision = 18
    end
    object quActSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quActTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quActSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quActJamMasuk: TDateTimeField
      FieldName = 'JamMasuk'
      DisplayFormat = 'hh:mm'
    end
    object quActJamKeluar: TDateTimeField
      FieldName = 'JamKeluar'
      DisplayFormat = 'hh:mm'
    end
  end
end
