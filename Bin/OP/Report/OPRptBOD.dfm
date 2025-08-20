inherited fmOPRPtBOD: TfmOPRPtBOD
  Left = 33
  Top = 84
  Caption = 'Laporan Summary Hasil Produksi'
  ClientHeight = 501
  ClientWidth = 1316
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 1316
    Height = 73
    inherited laTitle: TLabel
      Left = 1068
      Top = 24
      Enabled = False
      Visible = False
    end
    object grbKartu: TGroupBox
      Left = 18
      Top = 13
      Width = 375
      Height = 50
      Caption = '[ Periode ]'
      TabOrder = 0
      object Label2: TLabel
        Left = 18
        Top = 19
        Width = 36
        Height = 19
        Caption = 'Tahun'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 143
        Top = 18
        Width = 34
        Height = 19
        Caption = 'Bulan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object bbRefresh: TBitBtn
        Left = 273
        Top = 13
        Width = 84
        Height = 30
        Hint = 'Refresh'
        Caption = '&Refresh'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object dxSETahun: TdxSpinEdit
        Left = 64
        Top = 17
        Width = 65
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        AutoSize = False
        MaxValue = 9999
        Height = 25
        StoredValues = 16
      end
      object dxSEBulan: TdxSpinEdit
        Left = 184
        Top = 16
        Width = 65
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        AutoSize = False
        MaxValue = 12
        ValueType = vtInt
        Height = 25
        StoredValues = 56
      end
    end
  end
  inherited paCenter: TPanel
    Top = 73
    Width = 1316
    Height = 387
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 1314
      Height = 385
      Bands = <
        item
          Caption = 'Summary'
          Width = 538
        end
        item
          Caption = 'Detail'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KdMaster'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '#,##0.#'
              SummaryType = cstSum
            end>
          Name = 'dgrReportSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
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
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial Narrow'
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
      object dxDBGrid1Column1: TdxDBGridColumn
        Caption = 'Hasil Produksi'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NmMaster'
      end
      object dxDBGrid1Column2: TdxDBGridColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object dxDBGrid1Column3: TdxDBGridColumn
        Caption = '1'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'A'
      end
      object dxDBGrid1Column4: TdxDBGridColumn
        Caption = '2'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'B'
      end
      object dxDBGrid1Column5: TdxDBGridColumn
        Caption = '3'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'C'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Caption = '4'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'D'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dxDBGrid1Column7: TdxDBGridColumn
        Caption = '5'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'E'
        SummaryGroupName = 'dgrReportSummaryGroup2'
      end
      object dxDBGrid1Column8: TdxDBGridColumn
        Caption = '6'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'F'
      end
      object dxDBGrid1Column9: TdxDBGridColumn
        Caption = '7'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'G'
      end
      object dxDBGrid1Column10: TdxDBGridColumn
        Caption = '8'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'H'
      end
      object dxDBGrid1Column11: TdxDBGridColumn
        Caption = '9'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'I'
      end
      object dxDBGrid1Column12: TdxDBGridColumn
        Caption = '10'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'J'
      end
      object dxDBGrid1Column13: TdxDBGridColumn
        Caption = '11'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'K'
      end
      object dxDBGrid1Column14: TdxDBGridColumn
        Caption = '12'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'L'
      end
      object dxDBGrid1Column15: TdxDBGridColumn
        Caption = '13'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'M'
      end
      object dxDBGrid1Column16: TdxDBGridColumn
        Caption = '14'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'N'
      end
      object dxDBGrid1Column17: TdxDBGridColumn
        Caption = '15'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'O'
      end
      object dxDBGrid1Column18: TdxDBGridColumn
        Caption = '16'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'P'
      end
      object dxDBGrid1Column19: TdxDBGridColumn
        Caption = '17'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Q'
      end
      object dxDBGrid1Column20: TdxDBGridColumn
        Caption = '18'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'R'
      end
      object dxDBGrid1Column21: TdxDBGridColumn
        Caption = '19'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'S'
      end
      object dxDBGrid1Column22: TdxDBGridColumn
        Caption = '20'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'T'
      end
      object dxDBGrid1Column23: TdxDBGridColumn
        Caption = '21'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'U'
      end
      object dxDBGrid1Column24: TdxDBGridColumn
        Caption = '22'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'V'
      end
      object dxDBGrid1Column25: TdxDBGridColumn
        Caption = '23'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'W'
      end
      object dxDBGrid1Column26: TdxDBGridColumn
        Caption = '24'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'X'
      end
      object dxDBGrid1Column27: TdxDBGridColumn
        Caption = '25'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Y'
      end
      object dxDBGrid1Column28: TdxDBGridColumn
        Caption = '26'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'Z'
      end
      object dxDBGrid1Column29: TdxDBGridColumn
        Caption = '27'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'AA'
      end
      object dxDBGrid1Column30: TdxDBGridColumn
        Caption = '28'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BB'
      end
      object dxDBGrid1Column31: TdxDBGridColumn
        Caption = '29'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CC'
      end
      object dxDBGrid1Column32: TdxDBGridColumn
        Caption = '30'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DD'
      end
      object dxDBGrid1Column33: TdxDBGridColumn
        Caption = '31'
        Width = 65
        BandIndex = 1
        RowIndex = 0
        FieldName = 'EE'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 460
    Width = 1316
    inherited bbPreview: TBitBtn
      Left = 174
      Top = 42
      Enabled = False
    end
    inherited bbPrint: TBitBtn
      Left = 268
      Top = 42
      Enabled = False
    end
    inherited bbExit: TBitBtn
      Left = 1238
    end
    object bbExcel: TBitBtn
      Left = 1116
      Top = 6
      Width = 115
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 3
      OnClick = bbExcelClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080808080808080808080808000008080800080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000808080000080808000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000008000808080
        0000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080
        000080000080000080000080008080800000808080008000008000FFFFFF0080
        00008000008000008000008000008000008000FFFFFF00800000800000800000
        80000080008080800000808080008000008000FFFFFF00800000800000800000
        8000008000008000FFFFFF008000008000008000FFFFFF008000008000808080
        0000808080008000008000FFFFFF008000008000008000008000008000FFFFFF
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFFFFFFFF008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFFFFFF
        FFFFFFFF008000FFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFF008000FFFFFF00
        8000008000008000008000008000008000FFFFFFFFFFFF008000008000808080
        0000808080008000008000FFFFFF008000FFFFFF008000008000008000008000
        008000008000008000008000FFFFFF0080000080008080800000808080008000
        008000FFFFFF008000008000008000008000FFFFFF0080000080000080000080
        00008000FFFFFF0080000080008080800000808080008000008000FFFFFF0080
        00008000008000FFFFFFFFFFFFFFFFFF008000008000008000008000FFFFFF00
        80000080008080800000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080
        0000808080008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080008080800000808080008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800080808000008080808080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080800000}
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT A.KdMaster,A.NmMaster,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2) BETWEEN 20220201 AND 20220231) as Total,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220201) as A,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220202) as B,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220203) as C,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220204) as D,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220205) as E,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220206) as F,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220207) as G,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220208) as H,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220209) as I,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220210) as J,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220211) as K,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220212) as L,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220213) as M,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220214) as N,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220215) as O,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220216) as P,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220217) as Q,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220218) as R,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220219) as S,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220220) as T,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220221) as U,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220222) as V,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220223) as W,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220224) as X,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220225) as Y,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220226) as Z,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220227) as AA,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220228) as BB,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220229) as CC,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220230) as DD,'
      
        '(SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN' +
        ' OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      
        'WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,11' +
        '2)=20220231) as EE'
      
        'FROM AllMaster A  INNER JOIN OPTrProduksiDt B ON A.KdMaster=B.It' +
        'emID'
      'WHERE A.FgMaster='#39'H'#39
      'GROUP BY A.KdMaster,A.NmMaster')
    object quActKdMaster: TStringField
      FieldName = 'KdMaster'
      Size = 50
    end
    object quActNmMaster: TStringField
      FieldName = 'NmMaster'
      Size = 255
    end
    object quActTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActA: TBCDField
      FieldName = 'A'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActB: TBCDField
      FieldName = 'B'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActC: TBCDField
      FieldName = 'C'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActD: TBCDField
      FieldName = 'D'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActE: TBCDField
      FieldName = 'E'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActF: TBCDField
      FieldName = 'F'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActG: TBCDField
      FieldName = 'G'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActH: TBCDField
      FieldName = 'H'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActI: TBCDField
      FieldName = 'I'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActJ: TBCDField
      FieldName = 'J'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActK: TBCDField
      FieldName = 'K'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActL: TBCDField
      FieldName = 'L'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActM: TBCDField
      FieldName = 'M'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActN: TBCDField
      FieldName = 'N'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActO: TBCDField
      FieldName = 'O'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActP: TBCDField
      FieldName = 'P'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActQ: TBCDField
      FieldName = 'Q'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActR: TBCDField
      FieldName = 'R'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActS: TBCDField
      FieldName = 'S'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActT: TBCDField
      FieldName = 'T'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActU: TBCDField
      FieldName = 'U'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActV: TBCDField
      FieldName = 'V'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActW: TBCDField
      FieldName = 'W'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActX: TBCDField
      FieldName = 'X'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActY: TBCDField
      FieldName = 'Y'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActZ: TBCDField
      FieldName = 'Z'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActAA: TBCDField
      FieldName = 'AA'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActBB: TBCDField
      FieldName = 'BB'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActCC: TBCDField
      FieldName = 'CC'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActDD: TBCDField
      FieldName = 'DD'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
    object quActEE: TBCDField
      FieldName = 'EE'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 910
    Top = 24
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 946
    Top = 24
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 456
    Top = 20
  end
end
