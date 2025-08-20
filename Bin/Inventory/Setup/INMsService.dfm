inherited fmInMsService: TfmInMsService
  Left = 360
  Top = 226
  Caption = 'Master Jasa'
  ClientHeight = 427
  ClientWidth = 1120
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 378
    inherited pa3: TdxContainer
      Height = 199
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 415
    Width = 1120
  end
  inherited pa2: TdxContainer
    Height = 378
  end
  inherited dxContainer7: TdxContainer
    Width = 927
    Height = 378
    inherited pcParent: TdxPageControl
      Width = 927
      Height = 378
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 2
          Top = 347
          Width = 100
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Caption = 'Simpan (F3)'
        end
        inherited bbCancel: TdxButton
          Left = 103
          Top = 347
          Width = 100
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Caption = 'Batal (Esc)'
        end
        object dbgUOM: TdxDBGrid
          Left = 0
          Top = 0
          Width = 926
          Height = 345
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alCustom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgUOMUOMId: TdxDBGridColumn
            Caption = 'Kode Jasa'
            CharCase = ecUpperCase
            Color = clScrollBar
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgUOMColumn4: TdxDBGridColumn
            Caption = 'Nama Jasa'
            Width = 274
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dbgUOMColumn5: TdxDBGridButtonColumn
            Caption = 'Satuan'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMColumn5ButtonClick
          end
          object dbgUOMColumn6: TdxDBGridButtonColumn
            Caption = 'Type Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LType'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMColumn6ButtonClick
          end
          object dbgUOMColumn7: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'PO'
            MinWidth = 16
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgPO'
            Descriptions.Strings = (
              'Y'
              'T')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              'Y'
              'T')
          end
          object dbgUOMColumn8: TdxDBGridButtonColumn
            Caption = 'PO2'
            Visible = False
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgPO'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMColumn8ButtonClick
          end
          object dbgUOMColumn9: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Aktif'
            MinWidth = 16
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgActive'
            Descriptions.Strings = (
              'Ya'
              'Tidak')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              'Y'
              'T')
          end
          object dbgUOMUpdUser: TdxDBGridColumn
            Caption = 'Updated By'
            Color = clScrollBar
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgUOMUpdDate: TdxDBGridColumn
            Caption = 'Last Updated'
            Color = clScrollBar
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1120
    inherited sbLast: TSpeedButton
      Left = 1083
    end
    inherited sbNext: TSpeedButton
      Left = 1056
    end
    inherited sbPrev: TSpeedButton
      Left = 1029
    end
    inherited sbFirst: TSpeedButton
      Left = 1002
    end
    inherited sbPeriod: TSpeedButton
      Left = 976
    end
    inherited BvlPeriod: TBevel
      Left = 730
    end
    inherited laPeriod: TLabel
      Left = 734
    end
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from inmsitem where ctk<>'#39'Y'#39)
    object quMainItemID: TStringField
      FieldName = 'ItemID'
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quMainProductID: TStringField
      FieldName = 'ProductID'
    end
    object quMainGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quMainUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quMainGarantee: TStringField
      FieldName = 'Garantee'
      FixedChar = True
      Size = 1
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainUserPrice: TBCDField
      FieldName = 'UserPrice'
      Precision = 18
    end
    object quMainDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainJangkaGarantee: TBCDField
      FieldName = 'JangkaGarantee'
      Precision = 18
    end
    object quMainMinimumStok: TBCDField
      FieldName = 'MinimumStok'
      Precision = 18
    end
    object quMainCtk: TStringField
      FieldName = 'Ctk'
      FixedChar = True
      Size = 1
    end
    object quMainKomisi: TBCDField
      FieldName = 'Komisi'
      Precision = 18
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      Size = 1
    end
    object quMainTipe: TStringField
      FieldName = 'Tipe'
    end
    object quMainLokasi: TStringField
      FieldName = 'Lokasi'
      Size = 50
    end
    object quMainUOMID2: TStringField
      FieldName = 'UOMID2'
    end
    object quMainKonversi: TBCDField
      FieldName = 'Konversi'
      Precision = 18
    end
    object quMainItemName2: TStringField
      FieldName = 'ItemName2'
      Size = 200
    end
    object quMainSementara: TStringField
      FieldName = 'Sementara'
      Size = 500
    end
    object quMainFgUOMID: TStringField
      FieldName = 'FgUOMID'
    end
    object quMaintypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quMainmerk: TStringField
      FieldName = 'merk'
      Size = 50
    end
    object quMainLType: TStringField
      FieldKind = fkCalculated
      FieldName = 'LType'
      Size = 100
      Calculated = True
    end
    object quMainFgPO: TStringField
      FieldName = 'FgPO'
    end
  end
end
