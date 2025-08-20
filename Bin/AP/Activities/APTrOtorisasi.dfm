inherited fmAPTrOtorisasi: TfmAPTrOtorisasi
  Left = 200
  Top = 261
  Caption = 'Otorisasi'
  ClientHeight = 435
  ClientWidth = 1236
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 386
    inherited pa3: TdxContainer
      Top = 65
      Height = 321
      object RadioGroup1: TRadioGroup
        Left = -208
        Top = 10
        Width = 142
        Height = 89
        ItemIndex = 0
        Items.Strings = (
          'Pending'
          'Rejected'
          'Approved')
        TabOrder = 0
        OnClick = BtlBrgClick
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = -208
        Top = 110
        Width = 113
        Height = 42
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
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 28
        Top = 19
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
    end
  end
  inherited paBottom: TdxContainer
    Top = 423
    Width = 1236
  end
  inherited pa2: TdxContainer
    Height = 386
  end
  inherited dxContainer7: TdxContainer
    Width = 1043
    Height = 386
    inherited pcParent: TdxPageControl
      Width = 1043
      Height = 386
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 872
          Top = 364
        end
        inherited bbCancel: TdxButton
          Left = 952
          Top = 364
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1042
          Height = 193
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'POID'
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
            Caption = 'Nomor PO'
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tgl'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Nama Supplier'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SuppName'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Total'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TTLPO'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Caption = 'Company'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'warehouseID'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Site'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteID'
          end
          object dxDBGrid1Column7: TdxDBGridColumn
            Caption = 'Divisi'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DivisiID'
          end
          object dxDBGrid1Column8: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'StatusOto'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Visible = False
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dxDBGrid1Column10: TdxDBGridColumn
            Caption = 'Updated By'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dxDBGrid1Column11: TdxDBGridColumn
            Caption = 'Oto By'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Otoby'
          end
          object dxDBGrid1Column12: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OtoDate'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 192
          Width = 1041
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
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Part_Number'
          end
          object dxDBGrid2Column10: TdxDBGridColumn
            Caption = 'Reference Part'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID2'
          end
          object dxDBGrid2Column2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid2Column3: TdxDBGridColumn
            Caption = 'Type Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'typeunit'
          end
          object dxDBGrid2Column4: TdxDBGridColumn
            Caption = 'No Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
          end
          object dxDBGrid2Column5: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dxDBGrid2Column6: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgUOMID'
          end
          object dxDBGrid2Column8: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dxDBGrid2Column9: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
          end
          object dxDBGrid2Column7: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'StatusOto'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1236
    inherited sbLast: TSpeedButton
      Left = 1199
    end
    inherited sbNext: TSpeedButton
      Left = 1172
    end
    inherited sbPrev: TSpeedButton
      Left = 1145
    end
    inherited sbFirst: TSpeedButton
      Left = 1118
    end
    inherited sbPeriod: TSpeedButton
      Left = 1092
    end
    inherited BvlPeriod: TBevel
      Left = 846
    end
    inherited laPeriod: TLabel
      Left = 850
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 415
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 447
    Top = 4
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.POID,B.SuppName,CONVERT(VARCHAR(10),A.TransDate,103) as' +
        ' Tgl,A.TTLPO,'
      'A.UpdUser,A.UpdDate,A.warehouseID,A.SiteID,A.DivisiID,'
      
        '(CASE WHEN A.FgOto='#39'T'#39' THEN '#39'Belum Otorisasi'#39' Else '#39'Sudah Otoris' +
        'asi'#39' END) as StatusOto,A.Otoby,A.OtoDate'
      
        'from APTrPurchaseOrderHd A Inner Join APMsSupplier B on A.SuppID' +
        '=B.SuppID')
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 10
    end
    object quMainTTLPO: TBCDField
      FieldName = 'TTLPO'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainwarehouseID: TStringField
      FieldName = 'warehouseID'
      Size = 50
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quMainStatusOto: TStringField
      FieldName = 'StatusOto'
      ReadOnly = True
      Size = 15
    end
    object quMainOtoby: TStringField
      FieldName = 'Otoby'
      Size = 100
    end
    object quMainOtoDate: TDateTimeField
      FieldName = 'OtoDate'
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 4
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.ItemID as Part_Number,A.ItemID2,B.ItemName,B.typeunit,A' +
        '.NoUnit,A.Jumlah,B.FgUOMID,A.Price,A.Jumlah*A.Price as Total,'
      
        '(CASE WHEN A.FgOto='#39'T'#39' THEN '#39'Void'#39' WHEN A.FgOto='#39'E'#39' THEN '#39'Edited' +
        #39' ELSE '#39'OK'#39' END) as StatusOto '
      
        'from APTrPurchaseOrderdt A inner join INMsItem b on a.itemid2=B.' +
        'itemid'
      'Where A.POID=:POID')
    object quDetilPart_Number: TStringField
      FieldName = 'Part_Number'
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetiltypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilFgUOMID: TStringField
      FieldName = 'FgUOMID'
    end
    object quDetilStatusOto: TStringField
      FieldName = 'StatusOto'
      ReadOnly = True
      Size = 4
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0'
      Precision = 18
    end
    object quDetilTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quDetilItemID2: TStringField
      FieldName = 'ItemID2'
      Size = 100
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
