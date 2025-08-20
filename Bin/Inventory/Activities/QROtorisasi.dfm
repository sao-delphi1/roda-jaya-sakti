inherited fmQROtorisasi: TfmQROtorisasi
  Left = 404
  Top = 201
  Caption = 'Otorisasi MR - Quality Control'
  ClientWidth = 1057
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      Top = 60
      Height = 427
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Header :'
      end
      object Label2: TLabel
        Left = 24
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Detail :'
      end
      object Button1: TButton
        Left = 16
        Top = 160
        Width = 137
        Height = 33
        Caption = 'REFRESH'
        TabOrder = 0
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 24
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Waiting'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 24
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Rejected'
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 24
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Approved'
        TabOrder = 3
      end
      object CheckBox4: TCheckBox
        Left = 24
        Top = 104
        Width = 97
        Height = 17
        Caption = 'Waiting'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CheckBox5: TCheckBox
        Left = 24
        Top = 120
        Width = 97
        Height = 17
        Caption = 'Rejected'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CheckBox6: TCheckBox
        Left = 24
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Approved'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
    end
    inherited paOperation: TdxContainer
      Top = 3
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 36
        Top = 11
        Enabled = False
      end
      inherited bbNew: TdxButton [1]
        Enabled = False
      end
      inherited bbDelete: TdxButton [2]
        Top = 4
        Enabled = False
      end
      inherited bbFind: TdxButton [3]
        Top = 4
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
      Height = 3
    end
  end
  inherited paBottom: TdxContainer
    Width = 1057
  end
  inherited dxContainer7: TdxContainer
    Width = 864
    inherited pcParent: TdxPageControl
      Width = 864
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 693
        end
        inherited bbCancel: TdxButton
          Left = 773
        end
        object dxDBGrid1: TdxDBGrid
          Left = 3
          Top = 0
          Width = 862
          Height = 177
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Color = cl3DLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
            Caption = 'Nomor PR'
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Site'
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteID'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Divisi'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgDivisi'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 3
          Top = 179
          Width = 862
          Height = 310
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Color = clCream
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnDblClick = dxDBGrid2DblClick
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Comic Sans MS'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSearch, edgoAutoSort, edgoCellMultiSelect, edgoDragScroll, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid2Column4: TdxDBGridColumn
            Caption = 'No Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
          end
          object dxDBGrid2Column3: TdxDBGridColumn
            Caption = 'Type Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'typeunit'
          end
          object dxDBGrid2Column1: TdxDBGridColumn
            Caption = 'Part Number'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemId'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid2Column5: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dxDBGrid2Column6: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
          end
          object dxDBGrid2Column12: TdxDBGridColumn
            Caption = 'Request By'
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesName'
          end
          object dxDBGrid2Column13: TdxDBGridColumn
            Caption = 'Status'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Otorisasi'
          end
          object dxDBGrid2Column9: TdxDBGridColumn
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Stock'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1057
    inherited sbLast: TSpeedButton
      Left = 1020
    end
    inherited sbNext: TSpeedButton
      Left = 993
    end
    inherited sbPrev: TSpeedButton
      Left = 966
    end
    inherited sbFirst: TSpeedButton
      Left = 939
    end
    inherited sbPeriod: TSpeedButton
      Left = 913
    end
    inherited BvlPeriod: TBevel
      Left = 667
    end
    inherited laPeriod: TLabel
      Left = 671
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select DISTINCT B.Transdate,B.PRID,ISNULL(B.FgDivisi,'#39'LOG'#39') as F' +
        'gDivisi,SiteID from APTrPurchaseRequestDt A '
      
        'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm' +
        '='#39'MR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID'
      'inner join ARMsSales D on B.SalesID=D.SalesID')
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
    end
    object quMainFgDivisi: TStringField
      FieldName = 'FgDivisi'
      ReadOnly = True
      Size = 10
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
    end
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'PRID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select A.ItemID,C.ItemName,A.Qty,C.UOMID,C.TYpeUnit,A.NoUnit,'
      'D.SalesName,CASE WHEN A.FgOto='#39'T'#39' THEN '#39'WAITING'#39' '
      
        'WHEN A.FgOto='#39'X'#39' THEN '#39'REJECTED'#39' ELSE '#39'APPROVED'#39' END as Otorisas' +
        'i,A.NumAll'
      
        ',(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.' +
        'Qty * - 1 END),0) FROM ALLITEM F WHERE F.ItemID=A.ItemID) as Sto' +
        'ck '
      'from APTrPurchaseRequestDt A '
      
        'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm' +
        '='#39'MR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID'
      'inner join ARMsSales D on B.SalesID=D.SalesID'
      'WHERE A.PRID=:PRID'
      '')
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilTYpeUnit: TStringField
      FieldName = 'TYpeUnit'
      Size = 100
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quDetilOtorisasi: TStringField
      FieldName = 'Otorisasi'
      ReadOnly = True
      Size = 8
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilStock: TBCDField
      FieldName = 'Stock'
      ReadOnly = True
      Precision = 38
    end
  end
end
