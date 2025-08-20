inherited fmAPPrOtorisasi: TfmAPPrOtorisasi
  Left = 183
  Top = 66
  Caption = 'Otorisasi PR'
  ClientHeight = 627
  ClientWidth = 1170
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Width = 1170
    Height = 51
    Align = alTop
    inherited pa3: TdxContainer
      Top = 48
      Width = 1170
      Height = 0
      Align = alTop
    end
    inherited paOperation: TdxContainer
      Top = 4
      Width = 1170
      Height = 44
      object Label1: TLabel [0]
        Left = 168
        Top = 9
        Width = 66
        Height = 13
        Caption = 'Show Status :'
      end
      inherited ceContinuousAdd: TdxCheckEdit [1]
        Left = 32
        Top = 67
        Enabled = False
      end
      inherited bbNew: TdxButton [2]
        Top = 64
        Enabled = False
      end
      inherited bbDelete: TdxButton [3]
        Top = 65
        Enabled = False
      end
      inherited bbFind: TdxButton [4]
        Left = 18
        Top = 8
        Width = 113
        Height = 27
        OnClick = bbFindClick
      end
      object CheckBox1: TCheckBox
        Left = -191
        Top = 24
        Width = 150
        Height = 17
        Caption = 'Waiting For Approval'
        TabOrder = 4
      end
      object CheckBox2: TCheckBox
        Left = -191
        Top = 8
        Width = 150
        Height = 17
        Caption = 'On Progress'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CheckBox3: TCheckBox
        Left = -191
        Top = 8
        Width = 150
        Height = 17
        Caption = 'Pending'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object CheckBox4: TCheckBox
        Left = -191
        Top = 24
        Width = 150
        Height = 17
        Caption = 'Repair'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CheckBox5: TCheckBox
        Left = -191
        Top = 24
        Width = 150
        Height = 17
        Caption = 'Rejected'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object CheckBox6: TCheckBox
        Left = -191
        Top = 8
        Width = 150
        Height = 17
        Caption = 'Sent by HO'
        TabOrder = 9
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = -191
        Top = 10
        Width = 86
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Refresh'
        TabOrder = 10
        TabStop = False
      end
    end
    inherited pa1: TdxContainer
      Top = 0
      Width = 1170
      Height = 4
    end
  end
  inherited paBottom: TdxContainer
    Top = 615
    Width = 1170
  end
  inherited pa2: TdxContainer
    Left = 0
    Top = 88
    Width = 1170
    Height = 527
    Align = alClient
  end
  inherited dxContainer7: TdxContainer
    Left = 0
    Top = 88
    Width = 1170
    Height = 527
    inherited pcParent: TdxPageControl
      Width = 1170
      Height = 527
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 999
          Top = 433
        end
        inherited bbCancel: TdxButton
          Left = 1079
          Top = 433
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1169
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
            FieldName = 'Tanggal'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Site'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteID'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Divisi'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DivisiID'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 177
          Width = 825
          Height = 312
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Part_Number'
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
          object dxDBGrid2Column10: TdxDBGridColumn
            Caption = 'Status'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'StatusOto'
          end
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
            Caption = 'Jumlah PR'
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
            Caption = 'PO'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JumPO'
          end
          object dxDBGrid2Column13: TdxDBGridColumn
            Caption = 'Terima'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JumTerima'
          end
          object dxDBGrid2Column14: TdxDBGridColumn
            Caption = 'Delivery'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JumReal'
          end
          object dxDBGrid2Column8: TdxDBGridColumn
            Caption = 'PR Note'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
          object dxDBGrid2Column9: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoteOto'
          end
          object dxDBGrid2Column7: TdxDBGridColumn
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'StatusOto'
          end
          object dxDBGrid2Column11: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
          end
        end
        object bbExcel: TBitBtn
          Left = 948
          Top = 492
          Width = 115
          Height = 30
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = '&Export Excel'
          TabOrder = 4
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
        object BitBtn1: TBitBtn
          Left = 1062
          Top = 492
          Width = 92
          Height = 30
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = '&Batal'
          TabOrder = 5
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 488
          Width = 305
          Height = 33
          Caption = '[Show Grid]'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'All'
            'Items')
          TabOrder = 6
          OnClick = RadioGroup1Click
        end
        object dxDBGrid3: TdxDBGrid
          Left = 825
          Top = 177
          Width = 344
          Height = 312
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'RefID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Color = cl3DLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = []
          DataSource = dsRef
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
          object dxDBGrid3Column1: TdxDBGridColumn
            Caption = 'Part Reference'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RefID'
          end
          object dxDBGrid3Column2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LItemName'
          end
          object dxDBGrid3Column3: TdxDBGridColumn
            Caption = 'Type Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LTypeUnit'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1170
    inherited sbLast: TSpeedButton
      Left = 1133
    end
    inherited sbNext: TSpeedButton
      Left = 1106
    end
    inherited sbPrev: TSpeedButton
      Left = 1079
    end
    inherited sbFirst: TSpeedButton
      Left = 1052
    end
    inherited sbPeriod: TSpeedButton
      Left = 1026
    end
    inherited BvlPeriod: TBevel
      Left = 780
    end
    inherited laPeriod: TLabel
      Left = 784
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select DISTINCT PRID,SiteID,CONVERT(VARCHAR(10),Transdate,103) a' +
        's Tanggal,DivisiID,K.Transdate'
      'FROM ('
      
        'SELECT ISNULL(A.FGOto,'#39'W'#39') as FgOto,A.PRID,B.SiteID,B.Transdate,' +
        'B.DivisiID,'
      'CASE WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'W'#39' THEN '#39'Waiting For Approval'#39
      #9' WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'Y'#39' THEN '#39'on Progress'#39
      #9' WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'F'#39' THEN '#39'Finished'#39
      #9' WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'R'#39' THEN '#39'Repair'#39
      #9' WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'P'#39' THEN '#39'Pending'#39
      #9' WHEN ISNULL(A.FGOto,'#39'W'#39')='#39'X'#39' THEN '#39'Rejected'#39' END as StatusOto'
      'from aptrpurchaserequestdt A '
      'Inner Join APTrPurchaseRequestHd B on A.PRID=B.PRID'
      ') as K')
    object quMainPRID: TStringField
      FieldName = 'PRID'
    end
    object quMainSiteID: TStringField
      DisplayWidth = 30
      FieldName = 'SiteID'
      Size = 30
    end
    object quMainTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quMainDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 4
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
      'select CASE WHEN K.FgOto='#39'W'#39' THEN '#39'On Progress'#39
      #9#9'    WHEN K.FgOto='#39'Y'#39' THEN '#39'On Progress'#39
      #9#9'    WHEN K.FgOto='#39'F'#39' THEN '#39'Sent All'#39
      #9#9'    WHEN K.FgOto='#39'R'#39' THEN '#39'Repair'#39
      #9#9'    WHEN K.FgOto='#39'P'#39' THEN '#39'Pending'#39
      #9#9'    WHEN K.FgOto='#39'X'#39' THEN '#39'Rejected'#39' END as StatusOto,'
      
        #9#9'    ItemId,ItemName,TypeUnit,NoUnit,Qty,UOMID,Note,NoteOto,Jum' +
        'PO,JumTerima,JumReal,PRID,NumAll'
      'FROM ('
      
        'SELECT ISNULL(A.FGOto,'#39'W'#39') as FgOto,A.PRID,A.ItemID,B.ItemName,A' +
        '.TypeUnit,A.NoUnit,A.Qty,A.UOMID,A.Note,A.NoteOto,A.NumAll,'
      
        'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.' +
        'PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as Ju' +
        'mPO, '
      
        'ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X INNER JOIN ' +
        'APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
      
        'WHERE X.Note=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),' +
        '0) as JumTerima, '
      
        'ISNULL((SELECT SUM(X.Qty) FROM INTrTransferItemDt X WHERE X.PRID' +
        '=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumRea' +
        'l'
      'from aptrpurchaserequestdt A'
      'inner join INMsItem B on A.ItemID=B.ItemID'
      ') as K WHERE K.PRID=:PRID')
    object quDetilStatusOto: TStringField
      FieldName = 'StatusOto'
      ReadOnly = True
    end
    object quDetilItemId: TStringField
      FieldName = 'ItemId'
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilNoteOto: TStringField
      FieldName = 'NoteOto'
      Size = 1000
    end
    object quDetilJumPO: TBCDField
      FieldName = 'JumPO'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quDetilJumTerima: TBCDField
      FieldName = 'JumTerima'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quDetilJumReal: TBCDField
      FieldName = 'JumReal'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
    end
    object quDetilNumAll: TIntegerField
      FieldName = 'NumAll'
    end
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 960
    Top = 48
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 996
    Top = 48
  end
  object quRef: TADOQuery
    Connection = dmMain.dbConn
    OnCalcFields = quRefCalcFields
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'itemid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from inmsitemref where itemid=:itemid')
    Left = 420
    Top = 4
    object quRefItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quRefNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quRefRefID: TStringField
      FieldName = 'RefID'
      Size = 50
    end
    object quRefUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quRefUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quRefLItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LItemName'
      Size = 100
      Calculated = True
    end
    object quRefLTypeUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTypeUnit'
      Size = 100
      Calculated = True
    end
  end
  object dsRef: TDataSource
    DataSet = quRef
    OnStateChange = dsRefStateChange
    Left = 448
    Top = 4
  end
end
