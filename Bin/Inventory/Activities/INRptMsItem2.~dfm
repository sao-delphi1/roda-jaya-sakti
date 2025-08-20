inherited fmINRptMsItem2: TfmINRptMsItem2
  Left = 444
  Top = 172
  Caption = 'Laporan Master Barang'
  ClientHeight = 497
  ClientWidth = 847
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 847
    Height = 81
    inherited laTitle: TLabel
      Width = 227
      Caption = 'Laporan Master Barang'
    end
    object RadioGroup2: TRadioGroup
      Left = 256
      Top = 3
      Width = 185
      Height = 70
      Caption = '[ Jenis ]'
      ItemIndex = 0
      Items.Strings = (
        'Semua'
        'Sparepart'
        'Inventaris')
      TabOrder = 0
    end
    object bbRefresh: TBitBtn
      Left = 449
      Top = 39
      Width = 84
      Height = 30
      Hint = 'Refresh'
      Caption = '&Refresh'
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
    object bbFind: TdxButton
      Tag = 5555
      Left = 544
      Top = 32
      Width = 113
      Height = 41
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
      Caption = 'CARI BARANG'
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
      TabOrder = 2
    end
  end
  inherited paCenter: TPanel
    Top = 81
    Width = 847
    Height = 375
    object dgrReport: TdxDBGrid
      Left = 1
      Top = 1
      Width = 845
      Height = 373
      Bands = <
        item
          Width = 1263
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'ItemId'
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
      object dgrReportColumn1: TdxDBGridColumn
        Caption = 'Kode Barang'
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemId'
      end
      object dgrReportColumn2: TdxDBGridColumn
        Caption = 'Nama Barang'
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ItemName'
      end
      object dgrReportColumn3: TdxDBGridColumn
        Caption = 'Type Unit'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Description'
      end
      object dgrReportColumn4: TdxDBGridColumn
        Caption = 'Merk'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'merk'
      end
      object dgrReportColumn5: TdxDBGridColumn
        Caption = 'Satuan'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UOMID'
      end
      object dgrReportColumn6: TdxDBGridColumn
        ReadOnly = True
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Status'
      end
      object dgrReportColumn7: TdxDBGridColumn
        Caption = 'Jenis'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NmMaster'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 456
    Width = 847
    inherited bbPreview: TBitBtn
      Left = 601
      Enabled = False
      Visible = False
    end
    inherited bbPrint: TBitBtn
      Left = 695
      Enabled = False
      Visible = False
    end
    inherited bbExit: TBitBtn
      Left = 769
      Enabled = False
      Visible = False
    end
    object bbExcel: TBitBtn
      Left = 628
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
    object bbCancel: TBitBtn
      Left = 747
      Top = 6
      Width = 92
      Height = 30
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Batal'
      TabOrder = 4
      OnClick = bbCancelClick
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
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'SELECT K.* FROM ( '
      
        'select '#39'A'#39' as GroupID,A.ItemId,A.ItemName,A.TypeUnit,B.Descripti' +
        'on,A.UOMID,A.dealerPrice,A.merk, '
      
        ' CASE WHEN A.FgActive='#39'Y'#39' THEN '#39'AKTIF'#39' ELSE '#39'TDK AKTIF'#39' END as S' +
        'tatus,A.FgActive,A.Jenis,c.NmMaster,c.FgMaster '
      
        ' FROM INMsItem A LEFT JOIN INMsTypeUnit B on A.TypeUnit=B.TypeUn' +
        'it'
      'INNER JOIN AllMaster C ON A.Jenis=C.KdMaster ) as K')
    object quActGroupID: TStringField
      FieldName = 'GroupID'
      ReadOnly = True
      Size = 1
    end
    object quActItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object quActItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quActTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 100
    end
    object quActDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object quActUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quActdealerPrice: TBCDField
      FieldName = 'dealerPrice'
      Precision = 18
    end
    object quActmerk: TStringField
      FieldName = 'merk'
      Size = 50
    end
    object quActStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 9
    end
    object quActFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quActJenis: TStringField
      FieldName = 'Jenis'
      Size = 1
    end
    object quActNmMaster: TStringField
      FieldName = 'NmMaster'
      Size = 255
    end
    object quActFgMaster: TStringField
      FieldName = 'FgMaster'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsAct: TDataSource
    OnStateChange = dsActStateChange
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 144
    Top = 48
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 180
    Top = 48
  end
end
