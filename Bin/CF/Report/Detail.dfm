inherited fmDetail: TfmDetail
  Left = 510
  Top = 318
  Caption = 'Detail'
  ClientHeight = 315
  ClientWidth = 941
  PixelsPerInch = 96
  TextHeight = 13
  inherited paToolBar: TdxContainer
    Width = 941
    inherited sbLast: TSpeedButton
      Left = 904
    end
    inherited sbNext: TSpeedButton
      Left = 877
    end
    inherited sbPrev: TSpeedButton
      Left = 850
    end
    inherited sbFirst: TSpeedButton
      Left = 823
    end
    inherited sbPeriod: TSpeedButton
      Left = 797
    end
    inherited BvlPeriod: TBevel
      Left = 551
    end
    inherited laPeriod: TLabel
      Left = 555
    end
    object bbExcel: TBitBtn
      Left = 87
      Top = 5
      Width = 115
      Height = 27
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Export Excel'
      TabOrder = 0
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
  object dbgList: TdxDBGrid [2]
    Left = 0
    Top = 37
    Width = 941
    Height = 278
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'VoucherID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -13
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object dbgListColumn1: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VoucherID'
    end
    object dbgListColumn2: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tanggal'
    end
    object dbgListColumn3: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RekeningID'
    end
    object dbgListColumn4: TdxDBGridColumn
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RekeningName'
    end
    object dbgListColumn5: TdxDBGridColumn
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'jenis'
    end
    object dbgListColumn6: TdxDBGridColumn
      Width = 125
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Amount'
    end
    object dbgListColumn7: TdxDBGridColumn
      Caption = 'Cara Bayar'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MOP'
    end
    object dbgListColumn8: TdxDBGridColumn
      Caption = 'No Cek/BG'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NoBGCek'
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR(10),N.TransDate,103) as Tanggal,N.Voucher' +
        'ID,'
      'M.RekeningID,O.RekeningName,M.jenis,M.Amount ,N.MOP,N.NoBGCek'
      'FROM CFTrKKBBDt M'
      'inner join CFMsRekening O on M.RekeningID=O.RekeningID '
      'inner join CFTrKKBBHd N on M.VoucherID=N.VoucherID')
    object quMainTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quMainVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 50
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 30
    end
    object quMainRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
    object quMainjenis: TStringField
      FieldName = 'jenis'
      Size = 1
    end
    object quMainAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainMOP: TStringField
      FieldName = 'MOP'
      Size = 10
    end
    object quMainNoBGCek: TStringField
      FieldName = 'NoBGCek'
      Size = 100
    end
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 856
    Top = 64
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 892
    Top = 64
  end
end
