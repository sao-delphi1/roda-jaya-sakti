inherited fmINTrKanibal: TfmINTrKanibal
  Left = 471
  Top = 181
  Caption = 'Form Kanibal Unit'
  ClientHeight = 600
  ClientWidth = 1206
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 551
    inherited pa3: TdxContainer
      Height = 372
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 588
    Width = 1206
  end
  inherited pa2: TdxContainer
    Height = 551
  end
  inherited dxContainer7: TdxContainer
    Width = 1013
    Height = 551
    inherited pcParent: TdxPageControl
      Width = 1013
      Height = 551
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 50
          Top = 20
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'Nota :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [1]
          Left = 33
          Top = 44
          Width = 53
          Height = 17
          Alignment = taRightJustify
          Caption = 'Tanggal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel [2]
          Left = 26
          Top = 244
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText [3]
          Left = 417
          Top = 24
          Width = 89
          Height = 26
          Alignment = taCenter
          AutoSize = True
          DataField = 'Loto'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -24
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel [4]
          Left = 9
          Top = 268
          Width = 93
          Height = 17
          Alignment = taRightJustify
          Caption = 'Driver/Mekanik'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText [5]
          Left = 189
          Top = 268
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'Lsales'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        inherited bbSave: TdxButton
          Left = 762
          Top = 195
          Width = 95
          Height = 34
          TabOrder = 7
        end
        inherited bbCancel: TdxButton
          Left = 858
          Top = 195
          Width = 95
          Height = 34
          TabOrder = 8
        end
        object dxDBEdit1: TdxDBEdit
          Left = 93
          Top = 16
          Width = 189
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'TransID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 93
          Top = 40
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object GroupBox1: TGroupBox
          Left = 727
          Top = 9
          Width = 257
          Height = 61
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          object Label21: TLabel
            Left = 29
            Top = 14
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
          object DBText8: TDBText
            Left = 73
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
          object Label22: TLabel
            Left = 20
            Top = 35
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
          object DBText9: TDBText
            Left = 73
            Top = 36
            Width = 174
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
        object GroupBox2: TGroupBox
          Left = 0
          Top = 72
          Width = 345
          Height = 161
          Caption = '[ Komponen Awal ]'
          TabOrder = 3
          object Label3: TLabel
            Left = 57
            Top = 52
            Width = 29
            Height = 17
            Alignment = taRightJustify
            Caption = 'Site :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 14
            Top = 29
            Width = 76
            Height = 17
            Alignment = taRightJustify
            Caption = 'Perusahaan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 32
            Top = 76
            Width = 54
            Height = 17
            Alignment = taRightJustify
            Caption = 'No Unit :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 21
            Top = 100
            Width = 65
            Height = 17
            Alignment = taRightJustify
            Caption = 'Type Unit :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 55
            Top = 124
            Width = 31
            Height = 17
            Alignment = taRightJustify
            Caption = 'KM :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText2: TDBText
            Left = 173
            Top = 53
            Width = 54
            Height = 17
            AutoSize = True
            DataField = 'LSiteSrc'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 93
            Top = 48
            Width = 76
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'SiteSrc'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            OnButtonClick = dxDBButtonEdit2ButtonClick
            ExistButtons = True
          end
          object dxDBImageEdit5: TdxDBImageEdit
            Left = 93
            Top = 24
            Width = 175
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'CompanySrc'
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
            Left = 93
            Top = 72
            Width = 76
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            DataField = 'NoUnitSrc'
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
          object dxDBButtonEdit3: TdxDBButtonEdit
            Left = 93
            Top = 96
            Width = 180
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            DataField = 'TypeUnitSrc'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            ExistButtons = True
          end
          object dxDBEdit2: TdxDBEdit
            Left = 93
            Top = 120
            Width = 140
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            DataField = 'KMSrc'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
        object GroupBox3: TGroupBox
          Left = 352
          Top = 72
          Width = 345
          Height = 161
          Caption = '[ Komponen Akhir ]'
          TabOrder = 4
          object Label7: TLabel
            Left = 57
            Top = 52
            Width = 29
            Height = 17
            Alignment = taRightJustify
            Caption = 'Site :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 14
            Top = 29
            Width = 76
            Height = 17
            Alignment = taRightJustify
            Caption = 'Perusahaan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 32
            Top = 76
            Width = 54
            Height = 17
            Alignment = taRightJustify
            Caption = 'No Unit :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 21
            Top = 100
            Width = 65
            Height = 17
            Alignment = taRightJustify
            Caption = 'Type Unit :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 55
            Top = 124
            Width = 31
            Height = 17
            Alignment = taRightJustify
            Caption = 'KM :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText3: TDBText
            Left = 172
            Top = 53
            Width = 54
            Height = 17
            AutoSize = True
            DataField = 'LSite'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object dxDBButtonEdit5: TdxDBButtonEdit
            Left = 93
            Top = 48
            Width = 76
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'SiteID'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            OnButtonClick = dxDBButtonEdit5ButtonClick
            ExistButtons = True
          end
          object dxDBImageEdit1: TdxDBImageEdit
            Left = 93
            Top = 24
            Width = 175
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'Company'
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
              '11')
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
              'TPM')
          end
          object dxDBButtonEdit6: TdxDBButtonEdit
            Left = 93
            Top = 72
            Width = 76
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            DataField = 'NoUnit'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            OnButtonClick = dxDBButtonEdit6ButtonClick
            ExistButtons = True
          end
          object dxDBButtonEdit7: TdxDBButtonEdit
            Left = 93
            Top = 96
            Width = 180
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            DataField = 'TypeUnit'
            DataSource = dsMain
            StyleController = SCEdit
            Buttons = <
              item
                Default = True
              end>
            ClickKey = 113
            ExistButtons = True
          end
          object dxDBEdit3: TdxDBEdit
            Left = 93
            Top = 120
            Width = 140
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            DataField = 'KM'
            DataSource = dsMain
            StyleController = SCEdit
          end
        end
        object dbg: TdxDBGrid
          Left = -1
          Top = 304
          Width = 1011
          Height = 219
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Detail Kanibal'
              Fixed = bfLeft
              Width = 642
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowBands = True
          object dbgColumn1: TdxDBGridButtonColumn
            Caption = 'Part Number'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn1ButtonClick
          end
          object dbgColumn2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LNama'
          end
          object dbgColumn4: TdxDBGridColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Kerusakan'
          end
          object dbgColumn3: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Penyebab'
            MinWidth = 16
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Objection'
            Descriptions.Strings = (
              'Normal Wear'
              'Poor Maintenance'
              'Poor Operation'
              'Premature Feature'
              'Accident'
              'Others')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            ShowDescription = True
            Values.Strings = (
              'NW'
              'PM'
              'PO'
              'PF'
              'AC'
              'OT')
          end
          object dbgColumn5: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgColumn6: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LSatuan'
          end
          object dbgColumn7: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Action Plan'
            MinWidth = 16
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ActionPlan'
            Descriptions.Strings = (
              'Order Component'
              'Repair Out Site'
              'Repair On Site')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'OC'
              'ROF'
              'RON')
          end
          object dbgColumn8: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
          object dbgColumn9: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 5
          Top = 524
          Width = 91
          Height = 26
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
          TabOrder = 11
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 97
          Top = 524
          Width = 92
          Height = 26
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
          TabOrder = 12
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 190
          Top = 524
          Width = 92
          Height = 26
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
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 283
          Top = 524
          Width = 92
          Height = 26
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
          TabOrder = 14
          TabStop = False
        end
        object dxButton6: TdxButton
          Left = 832
          Top = 524
          Width = 169
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton6Click
          Caption = 'Cetak'
          TabOrder = 15
        end
        object dxDBEdit4: TdxDBEdit
          Left = 109
          Top = 240
          Width = 604
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 232
          Top = 40
          Width = 76
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'WarehouseID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit8: TdxDBButtonEdit
          Left = 101
          Top = 264
          Width = 76
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          DataField = 'driver'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit8ButtonClick
          ExistButtons = True
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1206
    inherited sbLast: TSpeedButton
      Left = 1169
    end
    inherited sbNext: TSpeedButton
      Left = 1142
    end
    inherited sbPrev: TSpeedButton
      Left = 1115
    end
    inherited sbFirst: TSpeedButton
      Left = 1088
    end
    inherited sbPeriod: TSpeedButton
      Left = 1062
    end
    inherited BvlPeriod: TBevel
      Left = 816
    end
    inherited laPeriod: TLabel
      Left = 820
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from intrkanibalhd'
      ''
      '')
    object quMainTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quMainCompany: TStringField
      FieldName = 'Company'
      Size = 50
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quMainTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quMainCompanySrc: TStringField
      FieldName = 'CompanySrc'
      Size = 50
    end
    object quMainNoUnitSrc: TStringField
      FieldName = 'NoUnitSrc'
      Size = 50
    end
    object quMainTypeUnitSrc: TStringField
      FieldName = 'TypeUnitSrc'
      Size = 50
    end
    object quMainKM: TStringField
      FieldName = 'KM'
      Size = 50
    end
    object quMainKMSrc: TStringField
      FieldName = 'KMSrc'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quMainupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quMainSiteSrc: TStringField
      FieldName = 'SiteSrc'
      Size = 50
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quMainLoto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Loto'
      Size = 100
      Calculated = True
    end
    object quMainLSiteSrc: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSiteSrc'
      Size = 100
      Calculated = True
    end
    object quMainLSite: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSite'
      Size = 100
      Calculated = True
    end
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
    object quMaindriver: TStringField
      FieldName = 'driver'
      Size = 50
    end
    object quMainLsales: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lsales'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'transid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from intrkanibaldt where transid=:transid')
    object quDetilTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilKerusakan: TStringField
      FieldName = 'Kerusakan'
      Size = 500
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilActionPlan: TStringField
      FieldName = 'ActionPlan'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilObjection: TStringField
      FieldName = 'Objection'
      Size = 50
    end
    object quDetilupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quDetilupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quDetilLNama: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNama'
      Size = 100
      Calculated = True
    end
    object quDetilLSatuan: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSatuan'
      Size = 50
      Calculated = True
    end
    object quDetilModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quDetilJual: TBCDField
      FieldName = 'Jual'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
