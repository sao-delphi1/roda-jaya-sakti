inherited fmINOtorisasi: TfmINOtorisasi
  Left = 228
  Top = 211
  Caption = 'Otorisasi Kanibal'
  ClientHeight = 579
  ClientWidth = 1343
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 530
    inherited pa3: TdxContainer
      Top = 73
      Height = 457
      object RadioGroup1: TRadioGroup
        Left = -236
        Top = 8
        Width = 142
        Height = 89
        ItemIndex = 0
        Items.Strings = (
          'Pending'
          'Rejected'
          'Approved')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = -236
        Top = 103
        Width = 134
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
      Height = 65
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 28
        Top = 23
        Enabled = False
      end
      inherited bbNew: TdxButton [1]
        Top = 8
        Enabled = False
      end
      inherited bbDelete: TdxButton [2]
        Top = 8
        Enabled = False
      end
      inherited bbFind: TdxButton [3]
        Top = 8
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 567
    Width = 1343
  end
  inherited pa2: TdxContainer
    Height = 530
  end
  inherited dxContainer7: TdxContainer
    Width = 1150
    Height = 530
    inherited pcParent: TdxPageControl
      Width = 1150
      Height = 530
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 297
          Top = 28
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
          Left = 280
          Top = 52
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
          Left = 257
          Top = 252
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
          Left = 617
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
        object DBText4: TDBText [4]
          Left = 487
          Top = 52
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'WArehouseID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel [5]
          Left = 241
          Top = 276
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
        object DBText5: TDBText [6]
          Left = 421
          Top = 276
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
          Left = 979
          Top = 508
          TabOrder = 7
        end
        inherited bbCancel: TdxButton
          Left = 1059
          Top = 508
          TabOrder = 8
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 237
          Height = 529
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TransID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
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
          object dxDBGrid1Column2: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dxDBGrid1Column1: TdxDBGridColumn
            Caption = 'Nota Transaksi'
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
        end
        object dxDBEdit1: TdxDBEdit
          Left = 341
          Top = 24
          Width = 188
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
          Left = 341
          Top = 48
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
        object GroupBox2: TGroupBox
          Left = 248
          Top = 80
          Width = 345
          Height = 161
          Caption = '[ Komponen Awal ]'
          TabOrder = 2
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
              'OPTIMA JAYA SAKTI')
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
              'OJS')
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
          Left = 600
          Top = 80
          Width = 345
          Height = 161
          Caption = '[ Komponen Akhir ]'
          TabOrder = 3
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
              'TRIDAYA INDOMINERAL')
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
              '10')
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
              'TIM')
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
        object dxDBEdit4: TdxDBEdit
          Left = 341
          Top = 248
          Width = 604
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dbg: TdxDBGrid
          Left = 238
          Top = 301
          Width = 913
          Height = 228
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
          TabOrder = 6
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
            Width = 100
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
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
        end
        object GroupBox1: TGroupBox
          Left = 879
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
        object dxDBButtonEdit8: TdxDBButtonEdit
          Left = 341
          Top = 272
          Width = 76
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          DataField = 'driver'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          ExistButtons = True
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1343
    inherited sbLast: TSpeedButton
      Left = 1306
    end
    inherited sbNext: TSpeedButton
      Left = 1279
    end
    inherited sbPrev: TSpeedButton
      Left = 1252
    end
    inherited sbFirst: TSpeedButton
      Left = 1225
    end
    inherited sbPeriod: TSpeedButton
      Left = 1199
    end
    inherited BvlPeriod: TBevel
      Left = 953
    end
    inherited laPeriod: TLabel
      Left = 957
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      'select * from intrkanibalhd')
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
    object quMainLOto: TStringField
      FieldKind = fkCalculated
      FieldName = 'LOto'
      Size = 100
      Calculated = True
    end
    object quMainLSite: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSite'
      Size = 100
      Calculated = True
    end
    object quMainLSiteSrc: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSiteSrc'
      Size = 100
      Calculated = True
    end
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
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
      Size = 100
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
