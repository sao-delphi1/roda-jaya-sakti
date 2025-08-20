inherited fmAPOtoKonsinyasi: TfmAPOtoKonsinyasi
  Left = 348
  Top = 236
  Caption = 'Otorisasi Penerimaan'
  ClientHeight = 428
  ClientWidth = 973
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 973
    Height = 89
    inherited laTitle: TLabel
      Width = 201
      Caption = 'Otorisasi Penerimaan'
    end
    object bbRefresh: TdxButton
      Tag = 4444
      Left = 152
      Top = 40
      Width = 120
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = bbRefreshClick
      Caption = 'Refresh'
      TabOrder = 0
      TabStop = False
    end
    object bbFind: TdxButton
      Tag = 5555
      Left = 8
      Top = 48
      Width = 113
      Height = 33
      Cursor = crHandPoint
      Hint = 'Find Record'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Version = '1.0.2e'
      OnClick = bbFindClick
      Caption = 'CARI (F10)'
      Colors.FocusedFrom = 16750383
      Colors.FocusedTo = 16763799
      Colors.HighlightFrom = clWhite
      Colors.HighlightTo = clWhite
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      HotTrack = True
      TabOrder = 1
    end
  end
  inherited paCenter: TPanel
    Top = 89
    Width = 973
    Height = 298
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 0
      Width = 968
      Height = 297
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Nota'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -12
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -12
      PreviewFont.Name = 'Comic Sans MS'
      PreviewFont.Style = []
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'No Konsinyasi'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nota'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BPBID'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = 'No PR'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRID'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = 'No PO'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POID'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JumlahPO'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Terima'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kelebihan'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 387
    Width = 973
    inherited bbPreview: TBitBtn
      Left = 727
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 821
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 895
      Enabled = False
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    Left = 592
  end
  inherited dsAct: TDataSource
    Left = 620
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT K.Nota,k.BPBID,K.PRID,K.POID,F.ItemName,F.ItemID' +
        ',K.Jumlah as JumlahPO,K.Jum as Terima,K.Jum-k.Jumlah as Kelebiha' +
        'n,K.WareHouseID,K.CurrID,K.SuppID,G.SuppName,K.NumAll '
      '    FROM ( '
      
        '     SELECT ISNULL((SELECT SUM(B.Jumlah) FROM APTrKonsinyasiDt B' +
        ' inner join APTrKonsinyasiHd X on B.KonsinyasiID=X.KonsinyasiID '
      
        '     WHERE B.Note=A.PRID AND A.ItemID=B.ItemID AND B.FgNum=A.FgN' +
        'um),0) as Jum,C.KonsinyasiID as Nota,B.ItemID,C.TransDate,b.Note' +
        ' as PRID,A.Jumlah, '
      
        '     C.BPBID,B.FgTerima,A.POID,C.WareHouseID,B.CurrID,C.SuppID,B' +
        '.NumAll '
      '     from APTrPurchaseOrderDt A '
      
        '     INNER JOIN APTrKonsinyasiDt B ON A.PRID=B.Note AND B.FgNum=' +
        'A.FgNum '
      
        '     INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.Konsinyas' +
        'iID '
      '     ) as K '
      '     INNER JOIN INMsItem F ON K.ItemID=F.ItemID '
      '     INNER JOIN APMsSupplier G ON K.SuppID=G.SuppID '
      '     where K.FgTerima='#39'T'#39
      '     order by k.Nota')
    Left = 324
    Top = 4
    object quMainNota: TStringField
      FieldName = 'Nota'
      Size = 50
    end
    object quMainBPBID: TStringField
      FieldName = 'BPBID'
      Size = 50
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 200
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quMainItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quMainJumlahPO: TBCDField
      FieldName = 'JumlahPO'
      Precision = 18
    end
    object quMainTerima: TBCDField
      FieldName = 'Terima'
      ReadOnly = True
      Precision = 32
    end
    object quMainKelebihan: TBCDField
      FieldName = 'Kelebihan'
      ReadOnly = True
      Precision = 32
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      FixedChar = True
      Size = 3
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 352
    Top = 4
  end
  object quDetil: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <>
    Left = 388
    Top = 4
  end
  object dsDetil: TDataSource
    DataSet = quDetil
    Left = 416
    Top = 4
  end
end
