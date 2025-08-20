inherited fmConfirmMR: TfmConfirmMR
  Left = 489
  Top = 286
  Caption = 'Konfirmasi MR'
  ClientHeight = 435
  ClientWidth = 1139
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 386
    inherited pa3: TdxContainer
      Top = 65
      Height = 321
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 8
        Width = 142
        Height = 89
        Caption = '[ Tampilkan ]'
        ItemIndex = 0
        Items.Strings = (
          'Not Confirmed'
          'Confirmed'
          'All')
        TabOrder = 0
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 24
        Top = 103
        Width = 142
        Height = 35
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'REFRESH'
        TabOrder = 1
        TabStop = False
      end
      object CheckBox1: TCheckBox
        Left = 24
        Top = 144
        Width = 97
        Height = 17
        Caption = 'Show All Site'
        TabOrder = 2
      end
    end
    inherited paOperation: TdxContainer
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 28
        Top = 19
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
      Top = 57
    end
  end
  inherited paBottom: TdxContainer
    Top = 423
    Width = 1139
  end
  inherited pa2: TdxContainer
    Height = 386
  end
  inherited dxContainer7: TdxContainer
    Width = 946
    Height = 386
    inherited pcParent: TdxPageControl
      Width = 946
      Height = 386
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 775
          Top = 364
        end
        inherited bbCancel: TdxButton
          Left = 855
          Top = 364
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 946
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRID'
          SummaryGroups = <>
          SummarySeparator = ', '
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
            Caption = 'MRID'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tanggal'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteName'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Request By'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesName'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Caption = 'Divisi'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DivisiName'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Signed'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KdCab'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 192
          Width = 946
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Part_Number'
          SummaryGroups = <>
          SummarySeparator = ', '
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid2Column1: TdxDBGridColumn
            Caption = 'Part Number'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dxDBGrid2Column7: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TypeUnit'
          end
          object dxDBGrid2Column3: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
          end
          object dxDBGrid2Column4: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dxDBGrid2Column5: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
          end
          object dxDBGrid2Column6: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
          object dxDBGrid2Column8: TdxDBGridColumn
            Caption = 'Konfirmasi'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgConfirm'
          end
          object dxDBGrid2Column9: TdxDBGridColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ConfirmBy'
          end
          object dxDBGrid2Column10: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ConfirmDate'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1139
    inherited sbLast: TSpeedButton
      Left = 1102
    end
    inherited sbNext: TSpeedButton
      Left = 1075
    end
    inherited sbPrev: TSpeedButton
      Left = 1048
    end
    inherited sbFirst: TSpeedButton
      Left = 1021
    end
    inherited Shape2: TShape
      Top = 4
    end
    inherited sbPeriod: TSpeedButton
      Left = 995
    end
    inherited BvlPeriod: TBevel
      Left = 749
    end
    inherited laPeriod: TLabel
      Left = 753
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select DISTINCT CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal,' +
        'A.PRID,C.SiteName,D.SalesName,E.DivisiName,B.KdCab'
      
        'from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B ' +
        'on A.PRID=B.PRID AND B.FgForm='#39'MR'#39
      'inner join INMsSites C on B.SiteID=C.SiteID'
      'inner join ARMsSales D on B.SalesID=D.SalesID'
      'inner join INMsDivisi E on B.DivisiID=E.DivisiID'
      'WHERE ISNULL(A.FgConfirm,'#39'T'#39')='#39'T'#39)
    object quMainTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
    end
    object quMainSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainDivisiName: TStringField
      FieldName = 'DivisiName'
      Size = 50
    end
    object quMainKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'PRID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.TypeUnit,A.NoUnit,' +
        'C.ItemName,ISNULL(A.FgConfirm,'#39'T'#39') as FgConfirm,A.ConfirmDate,A.' +
        'ConfirmBy,A.NumAll'
      
        'from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B ' +
        'on A.PRID=B.PRID AND B.FgForm='#39'MR'#39
      'inner join INMsItem C on A.ItemID=C.ItemID'
      'WHERE ISNULL(A.FgConfirm,'#39'T'#39')='#39'T'#39' AND A.PRID=:PRID')
    object quDetilPRID: TStringField
      FieldName = 'PRID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilFgConfirm: TStringField
      FieldName = 'FgConfirm'
      ReadOnly = True
      Size = 10
    end
    object quDetilConfirmDate: TDateTimeField
      FieldName = 'ConfirmDate'
    end
    object quDetilConfirmBy: TStringField
      FieldName = 'ConfirmBy'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
