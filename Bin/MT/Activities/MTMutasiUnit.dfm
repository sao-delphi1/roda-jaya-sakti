inherited fmMTMutasiUnit: TfmMTMutasiUnit
  Left = 324
  Top = 209
  Caption = 'Mutasi Unit'
  ClientHeight = 587
  ClientWidth = 699
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 538
    inherited pa3: TdxContainer
      Height = 359
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 575
    Width = 699
  end
  inherited pa2: TdxContainer
    Height = 538
  end
  inherited dxContainer7: TdxContainer
    Width = 506
    Height = 538
    inherited pcParent: TdxPageControl
      Width = 506
      Height = 538
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 10
          Top = 11
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'No SJ :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel [1]
          Left = 10
          Top = 59
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tanggal :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 10
          Top = 203
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tujuan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [3]
          Left = 10
          Top = 83
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Kepada :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 10
          Top = 107
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Keterangan :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText1: TDBText [5]
          Left = 212
          Top = 204
          Width = 237
          Height = 17
          DataField = 'LLokasi'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [6]
          Left = 10
          Top = 155
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Kota Pemb. SJ :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel [7]
          Left = 10
          Top = 35
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Company :'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel [8]
          Left = 10
          Top = 179
          Width = 99
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Asal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText [9]
          Left = 212
          Top = 180
          Width = 237
          Height = 17
          DataField = 'LAsal'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        inherited bbSave: TdxButton
          Left = 311
          Top = 35
          Width = 91
          Height = 33
          TabOrder = 8
        end
        inherited bbCancel: TdxButton
          Left = 403
          Top = 35
          Width = 91
          Height = 33
          TabOrder = 9
        end
        object txtKonInvPelID: TdxDBEdit
          Left = 119
          Top = 5
          Width = 242
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'NotaID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 119
          Top = 53
          Width = 119
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object txtPelangganID: TdxDBButtonEdit
          Left = 119
          Top = 197
          Width = 90
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          DataField = 'Lokasi'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = txtPelangganIDButtonClick
          ExistButtons = True
        end
        object dxDBEdit1: TdxDBEdit
          Left = 119
          Top = 77
          Width = 330
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DataField = 'Kepada'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit2: TdxDBEdit
          Left = 119
          Top = 101
          Width = 330
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          AutoSelect = False
          AutoSize = False
          DataField = 'Keterangan'
          DataSource = dsMain
          StyleController = SCEdit
          Height = 49
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 231
          Width = 506
          Height = 237
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Detail Surat Jalan'
              Width = 750
            end>
          DefaultLayout = True
          KeyField = 'KonInvPelDetID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -15
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowBands = True
          object dxDBGrid1Column1: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NotaID'
          end
          object dxDBGrid1Column2: TdxDBGridButtonColumn
            Caption = 'No Unit'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxDBGrid1Column2ButtonClick
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Description'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LNoUnit'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HM'
          end
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 496
          Width = 498
          Height = 40
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          object Label8: TLabel
            Left = 23
            Top = 15
            Width = 36
            Height = 17
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 68
            Top = 15
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 271
            Top = 15
            Width = 45
            Height = 17
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 324
            Top = 15
            Width = 162
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 272
          Top = 469
          Width = 89
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 12
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 182
          Top = 469
          Width = 89
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 13
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 92
          Top = 469
          Width = 89
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 14
          TabStop = False
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 2
          Top = 469
          Width = 89
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 15
          TabStop = False
        end
        object dxButton6: TdxButton
          Tag = 4444
          Left = 362
          Top = 469
          Width = 143
          Height = 28
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton6Click
          Caption = 'CETAK'
          TabOrder = 16
          TabStop = False
        end
        object dxDBEdit3: TdxDBEdit
          Left = 119
          Top = 149
          Width = 330
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          DataField = 'Kota'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBImageEdit5: TdxDBImageEdit
          Left = 119
          Top = 29
          Width = 175
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'company'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'RODA JAYA SAKTI'
            'ERA BARU'
            'DIMAS INDOMINERAL LAMPUNG'
            'OPTIMA JAYA PERKASA'
            'GITA PERKASA'
            'INTI UTAMA PERKASA'
            'INDO GEMILANG SEJAHTERA'
            'ARAGATA MANDIRI SEJATI'
            'ANDALAS TEKNIK'
            'KAISAR'
            'TRIDAYA INDOMINERAL'
            'OPTIMA JAYA SAKTI'
            'TIMUR PERKASA MINERALINDO')
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
            '11'
            '12')
          Values.Strings = (
            'RJS'
            'EBTL'
            'DIL'
            'OJP'
            'GP'
            'IUP'
            'IGS'
            'AGT'
            'AT'
            'KAS'
            'TIM'
            'OJS'
            'TPM')
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 119
          Top = 173
          Width = 90
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          DataField = 'Asal'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 699
    inherited sbLast: TSpeedButton
      Left = 662
    end
    inherited sbNext: TSpeedButton
      Left = 635
    end
    inherited sbPrev: TSpeedButton
      Left = 608
    end
    inherited sbFirst: TSpeedButton
      Left = 581
    end
    inherited sbPeriod: TSpeedButton
      Left = 555
    end
    inherited BvlPeriod: TBevel
      Left = 309
    end
    inherited laPeriod: TLabel
      Left = 313
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from MTMutasiUnitHd')
    object quMainNotaID: TStringField
      FieldName = 'NotaID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainKepada: TStringField
      FieldName = 'Kepada'
      Size = 500
    end
    object quMainKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object quMainKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainLokasi: TStringField
      FieldName = 'Lokasi'
      Size = 50
    end
    object quMainLLokasi: TStringField
      FieldKind = fkCalculated
      FieldName = 'LLokasi'
      Size = 100
      Calculated = True
    end
    object quMainKota: TStringField
      FieldName = 'Kota'
      Size = 50
    end
    object quMainAsal: TStringField
      FieldName = 'Asal'
      Size = 50
    end
    object quMaincompany: TStringField
      FieldName = 'company'
      Size = 50
    end
    object quMainLAsal: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAsal'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'NotaID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from MTMutasiUnitDt Where NotaID=:NotaID')
    object quDetilNotaID: TStringField
      FieldName = 'NotaID'
      Size = 50
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilHM: TStringField
      FieldName = 'HM'
      Size = 50
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilLNoUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNoUnit'
      Size = 100
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
