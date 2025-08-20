inherited fmARFPS: TfmARFPS
  Left = 207
  Top = 292
  Caption = 'Faktur Pajak Keluaran (Penjualan)'
  ClientHeight = 613
  ClientWidth = 1339
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 564
    inherited pa3: TdxContainer
      Top = 65
      Height = 499
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 5
        Width = 166
        Height = 80
        Caption = '[ Periode ]'
        ItemIndex = 0
        Items.Strings = (
          'Tanggal'
          'Bulan'
          'Tahun')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object RadioGroup2: TRadioGroup
        Left = 8
        Top = 248
        Width = 166
        Height = 80
        Caption = '[ Faktur Pajak ]'
        ItemIndex = 0
        Items.Strings = (
          'Belum Ada'
          'Sudah Ada'
          'Semua')
        TabOrder = 1
        OnClick = RadioGroup2Click
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 87
        Width = 166
        Height = 122
        Caption = '[ Pilih Tanggal ]'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        object Label2: TLabel
          Left = 54
          Top = 55
          Width = 45
          Height = 17
          Caption = 'sampai'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dt1: TdxDateEdit
          Left = 24
          Top = 24
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Date = -700000
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object dt2: TdxDateEdit
          Left = 24
          Top = 80
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Date = -700000
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 127
        Width = 166
        Height = 62
        Caption = '[ Pilih Bulan ]'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        object dxDateEdit1: TdxDateEdit
          Left = 399
          Top = 18
          Width = 87
          TabOrder = 0
          Date = -700000
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object dxTahun: TdxSpinEdit
          Left = 80
          Top = 24
          Width = 77
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          StyleController = SCEdit
        end
        object dxBulan: TdxImageEdit
          Left = 9
          Top = 24
          Width = 72
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = 'dxBulan'
          StyleController = SCEdit
          Descriptions.Strings = (
            'JAN'
            'FEB'
            'MAR'
            'APR'
            'MAY'
            'JUN'
            'JUL'
            'AUG'
            'SEP'
            'OCT'
            'NOV'
            'DEC')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11')
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
      end
      object GroupBox3: TGroupBox
        Left = 26
        Top = 127
        Width = 129
        Height = 62
        Caption = '[ Input Tahun ]'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object dxDateEdit2: TdxDateEdit
          Left = 399
          Top = 18
          Width = 87
          TabOrder = 0
          Date = -700000
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object dxTahunA: TdxSpinEdit
          Left = 22
          Top = 24
          Width = 80
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          StyleController = SCEdit
        end
      end
      object RadioGroup3: TRadioGroup
        Left = 8
        Top = 334
        Width = 166
        Height = 80
        Caption = '[ Urut ]'
        ItemIndex = 0
        Items.Strings = (
          'Tanggal'
          'Customer'
          'Nomor Faktur')
        TabOrder = 5
        OnClick = RadioGroup3Click
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 8
        Top = 212
        Width = 165
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = 'REFRESH'
        TabOrder = 6
        TabStop = False
      end
      object bbExcel: TBitBtn
        Left = 8
        Top = 422
        Width = 165
        Height = 35
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = '&Export Excel'
        TabOrder = 7
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
    inherited paOperation: TdxContainer
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
      Top = 57
    end
  end
  inherited paBottom: TdxContainer
    Top = 601
    Width = 1339
  end
  inherited pa2: TdxContainer
    Height = 564
  end
  inherited dxContainer7: TdxContainer
    Width = 1146
    Height = 564
    inherited pcParent: TdxPageControl
      Width = 1146
      Height = 564
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 975
          Top = 542
        end
        inherited bbCancel: TdxButton
          Left = 1055
          Top = 542
        end
        object dbgProduct: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1146
          Height = 564
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'koninvpelid'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDblClick = dbgProductDblClick
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
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgProductColumn1: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransDate'
          end
          object dbgProductColumn2: TdxDBGridColumn
            Caption = 'Invoice'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'koninvpelid'
          end
          object dbgProductColumn3: TdxDBGridColumn
            Caption = 'Customer'
            Width = 300
            BandIndex = 0
            RowIndex = 0
            FieldName = 'custname'
          end
          object dbgProductColumn4: TdxDBGridColumn
            Caption = 'Subtotal'
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STKJ'
          end
          object dbgProductColumn5: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PPN'
          end
          object dbgProductColumn6: TdxDBGridColumn
            Caption = 'Grandtotal'
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TTLKJ'
          end
          object dbgProductColumn7: TdxDBGridColumn
            Caption = 'Kode'
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CustID'
          end
          object dbgProductColumn8: TdxDBGridColumn
            Caption = 'Nomor Faktur'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FPS'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1339
    inherited sbLast: TSpeedButton
      Left = 1302
    end
    inherited sbNext: TSpeedButton
      Left = 1275
    end
    inherited sbPrev: TSpeedButton
      Left = 1248
    end
    inherited sbFirst: TSpeedButton
      Left = 1221
    end
    inherited sbPeriod: TSpeedButton
      Left = 1195
    end
    inherited BvlPeriod: TBevel
      Left = 949
    end
    inherited laPeriod: TLabel
      Left = 953
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.CustID,b.custname,a.TransDate,A.FPS,A.PPN,a.koninvpelid' +
        ',A.STKJ,A.TTLKJ'
      'from artrkoninvpelhd A inner join'
      'armscustomer B on A.custid=B.Custid')
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMaincustname: TStringField
      FieldName = 'custname'
      Size = 200
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainFPS: TStringField
      FieldName = 'FPS'
      Size = 100
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainkoninvpelid: TStringField
      FieldName = 'koninvpelid'
      Size = 50
    end
    object quMainSTKJ: TBCDField
      FieldName = 'STKJ'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      DisplayFormat = '#,0.00'
      Precision = 18
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
