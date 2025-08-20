inherited fmINRptJadwalDriver2: TfmINRptJadwalDriver2
  Left = 533
  Top = 153
  Caption = 'fmINRptJadwalDriver2'
  ClientHeight = 557
  ClientWidth = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 617
    Height = 81
    inherited laTitle: TLabel
      Enabled = False
    end
    object grbKartu: TGroupBox
      Left = 11
      Top = 8
      Width = 397
      Height = 57
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Dari :'
      end
      object Label3: TLabel
        Left = 152
        Top = 25
        Width = 41
        Height = 13
        Caption = 'Sampai :'
      end
      object bbRefresh: TBitBtn
        Left = 305
        Top = 15
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object dt1: TdxDateEdit
        Left = 53
        Top = 22
        Width = 91
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 197
        Top = 22
        Width = 92
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  inherited paCenter: TPanel
    Top = 81
    Width = 617
    Height = 435
    TabOrder = 2
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 615
      Height = 433
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'TypeClassUnit'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,0.00'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
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
      object dgrTypeClass: TdxDBGridColumn
        Caption = 'Type Class'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeClassUnit'
      end
      object dgrWH: TdxDBGridColumn
        Caption = 'Working Hour'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WH'
      end
      object dgrBD: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BD'
      end
      object dgrSTB: TdxDBGridColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STB'
      end
      object dgrHarga: TdxDBGridColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Harga'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 516
    Width = 617
    TabOrder = 1
    inherited bbPreview: TBitBtn
      Left = 371
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 465
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 539
      Enabled = False
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      
        'SELECT K.TypeClassUnit,ISNULL(SUM(WH),0) as WH,ISNULL(SUM(BD),0)' +
        ' as BD,ISNULL(SUM(STB),0) as STB,K.Harga FROM ('
      
        'select  D.Transdate,A.NotaID,A.NoUnit,C.TypeClassUnit,ISNULL(A.H' +
        'MAkhir-A.HMAwal,0) as WH,ISNULL(A.BDTime,0) as BD,ISNULL(A.STBTi' +
        'me,0) as STB,'
      
        'ISNULL((SELECT X.Price FROM APTrRentalDt X inner join APTrRental' +
        'Hd Y on X.RentalID=Y.RentalID'
      'WHERE C.TypeClassUnit=X.TypeClassUnit AND Y.SiteID=D.SiteID'
      
        'AND CONVERT(VARCHAR(10),Y.Transdate,112) <= CONVERT(VARCHAR(10),' +
        'D.Transdate,112)),0) as Harga'
      'from INTrJadwalDriverDt A '
      'inner join inmsnounit B on A.Nounit=B.Nounit '
      
        'inner join INMsTypeClassUnit C on B.TypeClassUnit=C.TypeClassUni' +
        't'
      'inner join INTrJadwalDriverHd D on A.NotaID=D.NotaID'
      
        ') as K WHERE convert(varchar(10),k.TransDate,112) between '#39'20211' +
        '201'#39' and '#39'20211203'#39
      'GROUP BY K.TypeClassUnit,K.Harga')
    object quActTypeClassUnit: TStringField
      FieldName = 'TypeClassUnit'
      Size = 50
    end
    object quActWH: TBCDField
      FieldName = 'WH'
      ReadOnly = True
      Precision = 32
    end
    object quActBD: TBCDField
      FieldName = 'BD'
      ReadOnly = True
      Precision = 32
    end
    object quActSTB: TBCDField
      FieldName = 'STB'
      ReadOnly = True
      Precision = 32
    end
    object quActHarga: TBCDField
      FieldName = 'Harga'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
    end
  end
end
