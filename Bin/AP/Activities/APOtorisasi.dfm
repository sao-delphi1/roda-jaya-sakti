inherited fmAPOtorisasi: TfmAPOtorisasi
  Caption = 'Otorisasi'
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid [2]
    Left = 0
    Top = 37
    Width = 790
    Height = 499
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -12
    BandFont.Name = 'Comic Sans MS'
    BandFont.Style = []
    DataSource = dsMain
    Filter.Criteria = {00000000}
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Arial'
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
    object dxDBGrid1VoucherID: TdxDBGridColumn
      Caption = 'Voucher ID'
      Width = 136
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VoucherID'
    end
    object dxDBGrid1Column8: TdxDBGridColumn
      Caption = 'Tgl Transaksi'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransDate1'
    end
    object dxDBGrid1Transdate: TdxDBGridColumn
      Caption = 'Tgl Efektif'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Transdate'
    end
    object dxDBGrid1Actor: TdxDBGridColumn
      Width = 214
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Actor'
    end
    object dxDBGrid1CurrID: TdxDBGridColumn
      Caption = 'Valuta'
      Visible = False
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CurrID'
    end
    object dxDBGrid1JumlahD: TdxDBGridColumn
      Caption = 'Jumlah'
      Width = 113
      BandIndex = 0
      RowIndex = 0
      FieldName = 'JumlahD'
    end
    object dxDBGrid1Column7: TdxDBGridButtonColumn
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BankID'
      Buttons = <
        item
          Default = True
        end>
    end
    object dxDBGrid1Column6: TdxDBGridColumn
      Width = 47
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Flag'
    end
    object dxDBGrid1Column9: TdxDBGridColumn
      Visible = False
      Width = 136
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KodeApproval'
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'select * from aptrpurchaseorderhd where Fgoto='#39'T'#39)
  end
end
