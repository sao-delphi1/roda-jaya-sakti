inherited fmARMsPelanggan: TfmARMsPelanggan
  Left = 539
  Top = 172
  Caption = 'Master Customer'
  ClientHeight = 576
  ClientWidth = 833
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 216
    Top = 322
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fax :'
    Transparent = True
  end
  object Label12: TLabel [1]
    Left = 204
    Top = 350
    Width = 129
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Alamat :'
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 527
    inherited pa3: TdxContainer
      Height = 348
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        Hint = ''
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 564
    Width = 833
  end
  inherited pa2: TdxContainer
    Height = 527
  end
  inherited pcMain: TdxPageControl
    Width = 640
    Height = 527
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 640
        Height = 504
        KeyField = 'SuppID'
        Visible = False
        Filter.Criteria = {00000000}
        object dbgListKdPelanggan: TdxDBGridColumn
          Caption = 'Kode Site'
          DisableEditor = True
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListNmPelanggan: TdxDBGridColumn
          Caption = 'Nama Site'
          DisableEditor = True
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListTipe: TdxDBGridColumn
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tipe'
        end
        object dbgListPhone: TdxDBGridColumn
          DisableEditor = True
          Visible = False
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListAlamat: TdxDBGridColumn
          DisableEditor = True
          Visible = False
          Width = 274
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListKota: TdxDBGridColumn
          DisableEditor = True
          Visible = False
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'City'
        end
        object dbgListFax: TdxDBGridColumn
          DisableEditor = True
          Visible = False
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Fax'
        end
        object dbgListEmail: TdxDBGridColumn
          Visible = False
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Email'
        end
        object dbgListNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Visible = False
          Width = 1431
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListColumn10: TdxDBGridColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListColumn11: TdxDBGridColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
      object dbgProduct: TdxDBGrid
        Left = 0
        Top = 0
        Width = 640
        Height = 504
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ProductID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        object dbgProductProductID: TdxDBGridColumn
          Caption = 'Kode Sites'
          CharCase = ecUpperCase
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgProductName: TdxDBGridColumn
          Caption = 'Nama Sites'
          CharCase = ecUpperCase
          Width = 288
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgProductUpdDate: TdxDBGridColumn
          Caption = 'Last Updated'
          ReadOnly = True
          TabStop = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgProductUser: TdxDBGridColumn
          Caption = 'Updated By'
          ReadOnly = True
          TabStop = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      DesignSize = (
        640
        504)
      object Label1: TLabel
        Left = 5
        Top = 16
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 5
        Top = 40
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Pelanggan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 5
        Top = 63
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Alamat :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 5
        Top = 144
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kota :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 5
        Top = 216
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telepon :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 5
        Top = 240
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 5
        Top = 259
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'E-mail :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 5
        Top = 313
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 5
        Top = 288
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Limit Piutang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 293
        Top = 288
        Width = 26
        Height = 17
        Caption = 'IDR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 363
        Top = 144
        Width = 71
        Height = 17
        Alignment = taRightJustify
        Caption = 'Kode POS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 5
        Top = 168
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Wilayah :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 805
        Top = 72
        Width = 115
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sales :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label16: TLabel
        Left = 5
        Top = 192
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Kordinator :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 882
        Top = 112
        Width = 61
        Height = 17
        Alignment = taRightJustify
        Caption = 'Disc (%) :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText1: TDBText
        Left = 261
        Top = 166
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LWilayah'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 1061
        Top = 70
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LSales'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label32: TLabel
        Left = 305
        Top = 16
        Width = 49
        Height = 17
        Alignment = taRightJustify
        Caption = 'NPWP :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 905
        Top = 136
        Width = 38
        Height = 17
        Alignment = taRightJustify
        Caption = 'Term :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label34: TLabel
        Left = 338
        Top = 216
        Width = 37
        Height = 17
        Alignment = taRightJustify
        Caption = 'HP 1 :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 338
        Top = 240
        Width = 37
        Height = 17
        Alignment = taRightJustify
        Caption = 'HP 2 :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 822
        Top = 160
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipe Term :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label37: TLabel
        Left = 21
        Top = 622
        Width = 115
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rekening ID :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 354
        Top = 618
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LRekeningName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 374
        Top = 451
        Width = 120
        Height = 40
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 497
        Top = 451
        Width = 120
        Height = 40
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = 'Batal (Esc)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 1
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 875
        Top = 275
        Width = 126
        Height = 84
        Caption = '[ Status ]'
        Ctl3D = False
        DataField = 'CustType'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Lancar'
          'Black List')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'D'
          'B')
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 35
        Top = 411
        Width = 249
        Height = 53
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        object Label21: TLabel
          Left = 23
          Top = 8
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
          Left = 68
          Top = 9
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
          Left = 15
          Top = 29
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
          Left = 69
          Top = 30
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
      object dxDBEdit1: TdxDBEdit
        Left = 133
        Top = 10
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'CustID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit10: TdxDBEdit
        Left = 358
        Top = 10
        Width = 225
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'NPWP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 133
        Top = 34
        Width = 450
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'CustName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 133
        Top = 58
        Width = 450
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Address'
        DataSource = dsMain
        MaxLength = 1000
        StyleController = SCEdit
        WantReturns = False
        WantTabs = True
        Height = 81
        StoredValues = 2
      end
      object dxDBEdit3: TdxDBEdit
        Left = 133
        Top = 138
        Width = 212
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit8: TdxDBEdit
        Left = 442
        Top = 138
        Width = 141
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KodePOS'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 133
        Top = 162
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'WilayahID'
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
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 933
        Top = 66
        Width = 120
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'SalesID'
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
      object dxDBEdit12: TdxDBEdit
        Left = 133
        Top = 186
        Width = 454
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'CPerson'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 133
        Top = 210
        Width = 200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Telp'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 133
        Top = 234
        Width = 200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 133
        Top = 258
        Width = 454
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecLowerCase
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 133
        Top = 282
        Width = 157
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'LimitPiutang'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit9: TdxDBEdit
        Left = 950
        Top = 106
        Width = 83
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Disc'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit11: TdxDBEdit
        Left = 950
        Top = 130
        Width = 83
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Term'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 133
        Top = 306
        Width = 452
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 94
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 883
        Top = 187
        Width = 126
        Height = 84
        Caption = '[Term && Limit]'
        Ctl3D = False
        DataField = 'FgPass'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'By Pass'
          'Lock')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
        Values.Strings = (
          'T'
          'Y')
        Visible = False
      end
      object dxButton2: TdxButton
        Left = 789
        Top = 13
        Width = 90
        Hint = 'Cancel Changes'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Amplop'
        TabOrder = 21
        TabStop = False
      end
      object dxDBEdit13: TdxDBEdit
        Left = 387
        Top = 234
        Width = 200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Phone2'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit14: TdxDBEdit
        Left = 387
        Top = 210
        Width = 200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Phone1'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 950
        Top = 154
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgTerm'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'NONE'
          'COD'
          'CBD')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'NONE'
          'COD'
          'CBD')
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 149
        Top = 615
        Width = 200
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'RekeningID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 833
    inherited sbLast: TSpeedButton
      Left = 796
    end
    inherited sbNext: TSpeedButton
      Left = 769
    end
    inherited sbPrev: TSpeedButton
      Left = 742
    end
    inherited sbFirst: TSpeedButton
      Left = 715
    end
    inherited sbPeriod: TSpeedButton
      Left = 689
    end
    inherited BvlPeriod: TBevel
      Left = 443
    end
    inherited laPeriod: TLabel
      Left = 447
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * from ARMSCustomer ORDER BY CustID'
      '')
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quMainCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quMainPhone1: TStringField
      FieldName = 'Phone1'
      Size = 100
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
      Size = 100
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLimitPiutang: TBCDField
      FieldName = 'LimitPiutang'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quMainLimitasli: TBCDField
      FieldName = 'Limitasli'
      Precision = 18
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      Precision = 18
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainCPerson: TStringField
      FieldName = 'CPerson'
      Size = 100
    end
    object quMainWilayahID: TStringField
      FieldName = 'WilayahID'
    end
    object quMainKodePOS: TStringField
      FieldName = 'KodePOS'
      Size = 10
    end
    object quMainNPWP: TStringField
      FieldName = 'NPWP'
    end
    object quMainFgPass: TStringField
      FieldName = 'FgPass'
      Size = 1
    end
    object quMainPhone2: TStringField
      FieldName = 'Phone2'
      Size = 50
    end
    object quMainTelp: TStringField
      FieldName = 'Telp'
      Size = 50
    end
    object quMainFgTerm: TStringField
      FieldName = 'FgTerm'
      FixedChar = True
      Size = 10
    end
    object quMainLSales: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSales'
      Size = 200
      Calculated = True
    end
    object quMainLWilayah: TStringField
      FieldKind = fkCalculated
      FieldName = 'LWilayah'
      Size = 200
      Calculated = True
    end
    object quMainAddress: TStringField
      DisplayWidth = 1000
      FieldName = 'Address'
      Size = 1000
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 50
    end
    object quMainLRekeningName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekeningName'
      Size = 0
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
end
