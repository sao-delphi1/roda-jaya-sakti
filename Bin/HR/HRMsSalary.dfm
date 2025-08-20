inherited fmHRMsSalary: TfmHRMsSalary
  Left = 206
  Top = 148
  Caption = 'Database Gaji Karyawan Aktif'
  ClientHeight = 730
  ClientWidth = 1220
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 681
    inherited pa3: TdxContainer
      Top = 65
      Height = 616
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 48
        Width = 164
        Height = 105
        Caption = '[ Show ]'
        ItemIndex = 0
        Items.Strings = (
          'Semua'
          'Gross'
          'Insentif'
          'Lain-lain')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 16
        Width = 161
        Height = 17
        Caption = 'Tampilkan Rekening'
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
    end
    inherited paOperation: TdxContainer
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 31
        Top = 15
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
    Top = 718
    Width = 1220
  end
  inherited pa2: TdxContainer
    Height = 681
  end
  inherited dxContainer7: TdxContainer
    Width = 1027
    Height = 681
    inherited pcParent: TdxPageControl
      Width = 1027
      Height = 681
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 856
          Top = 659
        end
        inherited bbCancel: TdxButton
          Left = 936
          Top = 659
        end
        object dbgSales: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1027
          Height = 681
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'UOMId'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
          HeaderFont.Height = -13
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgSalesColumn2: TdxDBGridColumn
            Caption = 'Nama Karyawan'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesName'
          end
          object dbgSalesColumn3: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NIK'
          end
          object dbgSalesColumn4: TdxDBGridColumn
            Caption = 'Gaji Pokok'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Gapok'
          end
          object dbgSalesColumn5: TdxDBGridColumn
            Caption = 'Tunj. Jabatan'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TunjJab'
          end
          object dbgSalesColumn6: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Akomodasi'
          end
          object dbgSalesColumn7: TdxDBGridColumn
            Caption = 'K3'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InK3'
          end
          object dbgSalesColumn8: TdxDBGridColumn
            Caption = 'Produksi'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InProduksi'
          end
          object dbgSalesColumn9: TdxDBGridColumn
            Caption = 'Kinerja'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InKinerja'
          end
          object dbgSalesColumn10: TdxDBGridColumn
            Caption = 'Pa Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InPaUnit'
          end
          object dbgSalesColumn11: TdxDBGridColumn
            Caption = 'Fuel Ratio'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InFuelRatio'
          end
          object dbgSalesColumn12: TdxDBGridColumn
            Caption = 'Total Insentif'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TInsentif'
          end
          object dbgSalesColumn13: TdxDBGridColumn
            Caption = 'Total Gross'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TGross'
          end
          object dbgSalesColumn14: TdxDBGridColumn
            Caption = 'Reguler'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LemburReg'
          end
          object dbgSalesColumn15: TdxDBGridColumn
            Caption = 'Tgl Merah/Libur'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LemburLib'
          end
          object dbgSalesColumn16: TdxDBGridColumn
            Caption = 'Harian/HM/Rit/Kor (Tamb 1)'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Koreksi1'
          end
          object dbgSalesColumn17: TdxDBGridColumn
            Caption = 'Harian/HM/Rit/Kor (Tamb 2)'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Koreksi2'
          end
          object dbgSalesColumn20: TdxDBGridColumn
            Caption = 'Iuran BPJS Kes'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PriceKES'
          end
          object dbgSalesColumn21: TdxDBGridColumn
            Caption = 'Iuran BPJS TK'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PriceTK'
          end
          object dbgSalesColumn18: TdxDBGridColumn
            Caption = 'Rekening 1'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Rekening1'
          end
          object dbgSalesColumn19: TdxDBGridColumn
            Caption = 'Rekening 2'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Rekening2'
          end
          object dbgSalesColumn1: TdxDBGridColumn
            Caption = 'Kode System'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesID'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1220
    inherited sbLast: TSpeedButton
      Left = 1183
    end
    inherited sbNext: TSpeedButton
      Left = 1156
    end
    inherited sbPrev: TSpeedButton
      Left = 1129
    end
    inherited sbFirst: TSpeedButton
      Left = 1102
    end
    inherited sbPeriod: TSpeedButton
      Left = 1076
    end
    inherited BvlPeriod: TBevel
      Left = 830
    end
    inherited laPeriod: TLabel
      Left = 834
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      'select * from armssales'
      'where fgActive<>0')
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainGapok: TBCDField
      FieldName = 'Gapok'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainTunjJab: TBCDField
      FieldName = 'TunjJab'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainAkomodasi: TBCDField
      FieldName = 'Akomodasi'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainInProduksi: TBCDField
      FieldName = 'InProduksi'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainInK3: TBCDField
      FieldName = 'InK3'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainInKinerja: TBCDField
      FieldName = 'InKinerja'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainInPaUnit: TBCDField
      FieldName = 'InPaUnit'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainInFuelRatio: TBCDField
      FieldName = 'InFuelRatio'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainLemburReg: TBCDField
      FieldName = 'LemburReg'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainLemburLib: TBCDField
      FieldName = 'LemburLib'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainPriceTK: TBCDField
      FieldName = 'PriceTK'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainPriceKES: TBCDField
      FieldName = 'PriceKES'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainKoreksi1: TBCDField
      FieldName = 'Koreksi1'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainKoreksi2: TBCDField
      FieldName = 'Koreksi2'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainTInsentif: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TInsentif'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quMainTGross: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TGross'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quMainNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quMainRekening1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Rekening1'
      Size = 200
      Calculated = True
    end
    object quMainRekening2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Rekening2'
      Size = 200
      Calculated = True
    end
  end
end
