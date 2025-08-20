inherited fmAPMsSupplier: TfmAPMsSupplier
  Left = 305
  Top = 11
  Caption = 'Master Supplier'
  ClientHeight = 537
  ClientWidth = 841
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
    Height = 488
    inherited pa3: TdxContainer
      Height = 309
      object Panel1: TPanel
        Left = -313
        Top = -79
        Width = 120
        Height = 33
        Color = 13676331
        TabOrder = 0
        DesignSize = (
          120
          33)
        object bbExcel: TBitBtn
          Left = 0
          Top = 0
          Width = 115
          Height = 30
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
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 525
    Width = 841
  end
  inherited pa2: TdxContainer
    Height = 488
  end
  inherited pcMain: TdxPageControl
    Width = 648
    Height = 488
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 648
        Height = 465
        KeyField = 'SuppID'
        Filter.Criteria = {00000000}
        object dbgListKdSupplier: TdxDBGridColumn
          Caption = 'Kode Supplier'
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dbgListNmSupplier: TdxDBGridColumn
          Caption = 'Nama Supplier'
          DisableEditor = True
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppName'
        end
        object dbgListAlamat: TdxDBGridColumn
          DisableEditor = True
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListPhone: TdxDBGridColumn
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListContactPerson: TdxDBGridColumn
          DisableEditor = True
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ContactPerson'
        end
        object dbgListNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListColumn8: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'bankname'
        end
        object dbgListColumn7: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'norek'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 4
        Top = 24
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Supplier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 4
        Top = 48
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Supplier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 4
        Top = 71
        Width = 120
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
        Left = 188
        Top = 687
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kota :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 4
        Top = 176
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Contact Person :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 4
        Top = 152
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Phone :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 199
        Top = 278
        Width = 50
        Height = 17
        AutoSize = False
        Caption = 'Hari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 524
        Top = 528
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'E-mail :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 4
        Top = 198
        Width = 120
        Height = 17
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
      object Label14: TLabel
        Left = 228
        Top = 665
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NPWP :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 4
        Top = 551
        Width = 130
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PKP / BPKP :'
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
      object Label4: TLabel
        Left = 556
        Top = 584
        Width = 130
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Jenis Supplier :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 470
        Top = 687
        Width = 51
        Height = 17
        Alignment = taRightJustify
        Caption = 'Negara :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = -7
        Top = 301
        Width = 130
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'COA Hutang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 296
        Top = 302
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
      object Label32: TLabel
        Left = 328
        Top = 640
        Width = 35
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 68
        Top = 782
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'HP :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 4
        Top = 278
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Term Default :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 824
        Top = 681
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Atas Nama :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 293
        Top = 150
        Width = 105
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 333
        Top = 173
        Width = 64
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bank :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 332
        Top = 761
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nomor Kontrak :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 370
        Top = 407
        Width = 105
        Height = 30
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
        TabOrder = 11
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 476
        Top = 407
        Width = 105
        Height = 30
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
        TabOrder = 12
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 393
        Width = 297
        Height = 61
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        object Label21: TLabel
          Left = 20
          Top = 15
          Width = 45
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 74
          Top = 15
          Width = 80
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
          Top = 39
          Width = 45
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 74
          Top = 39
          Width = 159
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
        Left = 126
        Top = 20
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 126
        Top = 44
        Width = 457
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo1: TdxDBMemo
        Left = 126
        Top = 68
        Width = 457
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Address'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 80
      end
      object dxDBEdit3: TdxDBEdit
        Left = 310
        Top = 683
        Width = 154
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'City'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit10: TdxDBEdit
        Left = 526
        Top = 683
        Width = 170
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Negara'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 126
        Top = 147
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Telp1'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 638
        Top = 627
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Telp2'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 126
        Top = 171
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'ContactPerson'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 694
        Top = 579
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgSupplier'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Lokal'
          'Non-Lokal')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'D'
          'L')
      end
      object dxDBEdit4: TdxDBEdit
        Left = 646
        Top = 523
        Width = 457
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Email'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit8: TdxDBEdit
        Left = 350
        Top = 660
        Width = 457
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'NPWP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit9: TdxDBEdit
        Left = 142
        Top = 547
        Width = 457
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'PKP'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 126
        Top = 195
        Width = 457
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 80
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 126
        Top = 298
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'RekeningID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit11: TdxDBEdit
        Left = 367
        Top = 635
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Fax'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit12: TdxDBEdit
        Left = 190
        Top = 780
        Width = 165
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Phone'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 510
        Top = 507
        Width = 67
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Term'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Cash/COD'
          '1 Minggu'
          '1 Bulan'
          '2 Bulan'
          '3 Bulan'
          '4 Bulan'
          '5 Bulan'
          '6 Bulan'
          '7 Bulan'
          '8 Bulan'
          '9 Bulan'
          '10 Bulan'
          '11 Bulan'
          '1 Tahun')
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
          '12'
          '13')
        Values.Strings = (
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
          '12'
          '13')
      end
      object dxButton7: TdxButton
        Tag = 4444
        Left = 127
        Top = 732
        Width = 109
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton7Click
        Caption = 'CETAK'
        TabOrder = 25
        TabStop = False
      end
      object dxDBEdit13: TdxDBEdit
        Left = 401
        Top = 147
        Width = 182
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        DataField = 'norek'
        DataSource = dsMain
        StyleController = SCEdit
        Height = 25
      end
      object dxDBEdit14: TdxDBEdit
        Left = 945
        Top = 676
        Width = 165
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'atasnama'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit15: TdxDBEdit
        Left = 401
        Top = 171
        Width = 182
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'bankname'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit16: TdxDBEdit
        Left = 454
        Top = 756
        Width = 457
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'nokontrak'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit17: TdxDBEdit
        Left = 126
        Top = 274
        Width = 66
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Term'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 223
        Top = 336
        Width = 209
        Height = 55
        Caption = '[ NPWP ]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgNPWP'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Ada'
          'Tidak')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Values.Strings = (
          'Y'
          'T')
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 11
        Top = 336
        Width = 209
        Height = 55
        Caption = '[ Jenis Supplier ]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgCompany'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Perorangan'
          'Perusahaan')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Values.Strings = (
          'O'
          'P')
      end
    end
    object Pricelist: TdxTabSheet
      Caption = 'Pricelist'
      object dxButton6: TdxButton
        Tag = 4444
        Left = 269
        Top = 346
        Width = 88
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'Cari'
        TabOrder = 6
        TabStop = False
      end
      object ts03: TdxTabSheet
        Caption = 'DAFTAR HARGA'
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 3
          Top = 346
          Width = 87
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = '(+) Barang'
          TabOrder = 0
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 90
          Top = 346
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = '(-) Barang'
          TabOrder = 1
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 178
          Top = 346
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = 'Simpan'
          TabOrder = 2
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 266
          Top = 346
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = 'Batal'
          TabOrder = 3
          TabStop = False
        end
        object dxButton1: TdxButton
          Tag = 4444
          Left = 355
          Top = 346
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = 'Cari'
          TabOrder = 4
          TabStop = False
        end
        object dbgHarga: TdxDBGrid
          Left = 0
          Top = 0
          Width = 620
          Height = 341
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'List Item(s)'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -15
          BandFont.Name = 'Comic Sans MS'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgHargaSuppID: TdxDBGridMaskColumn
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SuppID'
          end
          object dbgHargaItemID: TdxDBGridButtonColumn
            Caption = 'Part Number'
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgHargaItemIDButtonClick
          end
          object dbgHargaLItemName: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LItemName'
          end
          object dbgHargaColumn8: TdxDBGridColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TypeUnit'
          end
          object dbgHargaPriceK: TdxDBGridColumn
            Caption = 'Harga Kecil'
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PriceK'
          end
          object dbgHargaUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgHargaPriceB: TdxDBGridColumn
            Caption = 'Harga Besar'
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PriceB'
          end
          object dbgHargaUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 341
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'List Item(s)'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -15
        BandFont.Name = 'Comic Sans MS'
        BandFont.Style = []
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Visible = False
          Width = 134
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dxDBGridButtonColumn1: TdxDBGridButtonColumn
          Caption = 'Part Number'
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgHargaItemIDButtonClick
        end
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 169
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TypeUnit'
        end
        object dxDBGridColumn3: TdxDBGridColumn
          Caption = 'Harga Kecil'
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PriceK'
        end
        object dxDBGridDateColumn1: TdxDBGridDateColumn
          Visible = False
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGridColumn4: TdxDBGridColumn
          Caption = 'Harga Besar'
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PriceB'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Visible = False
          Width = 134
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
      object dxButton2: TdxButton
        Tag = 1111
        Left = 3
        Top = 346
        Width = 87
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(+) Barang'
        TabOrder = 1
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 2222
        Left = 91
        Top = 346
        Width = 88
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = '(-) Barang'
        TabOrder = 2
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 180
        Top = 346
        Width = 88
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Simpan'
        TabOrder = 3
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 269
        Top = 346
        Width = 88
        Height = 27
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Batal'
        TabOrder = 4
        TabStop = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 841
    inherited sbLast: TSpeedButton
      Left = 804
    end
    inherited sbNext: TSpeedButton
      Left = 777
    end
    inherited sbPrev: TSpeedButton
      Left = 750
    end
    inherited sbFirst: TSpeedButton
      Left = 723
    end
    inherited sbPeriod: TSpeedButton
      Left = 697
    end
    inherited BvlPeriod: TBevel
      Left = 451
    end
    inherited laPeriod: TLabel
      Left = 455
    end
  end
  inherited quAct: TADOQuery
    Left = 288
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM APMSSUPPLIER'
      ''
      '')
    object quMainLRekeningName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekeningName'
      Size = 200
      Calculated = True
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quMainCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quMainContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
      Size = 100
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainNPWP: TStringField
      FieldName = 'NPWP'
      Size = 50
    end
    object quMainPKP: TStringField
      FieldName = 'PKP'
      Size = 50
    end
    object quMainFgSupplier: TStringField
      FieldName = 'FgSupplier'
      Size = 1
    end
    object quMainNegara: TStringField
      FieldName = 'Negara'
      Size = 100
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 50
    end
    object quMainTelp1: TStringField
      FieldName = 'Telp1'
      Size = 50
    end
    object quMainTelp2: TStringField
      FieldName = 'Telp2'
      Size = 50
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
    end
    object quMainbankname: TStringField
      FieldName = 'bankname'
      Size = 100
    end
    object quMainnorek: TStringField
      FieldName = 'norek'
      Size = 100
    end
    object quMainatasnama: TStringField
      FieldName = 'atasnama'
      Size = 100
    end
    object quMainnokontrak: TStringField
      FieldName = 'nokontrak'
      Size = 100
    end
    object quMainFgCompany: TStringField
      FieldName = 'FgCompany'
      Size = 10
    end
    object quMainFgNPWP: TStringField
      FieldName = 'FgNPWP'
      Size = 10
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      Caption = 'SIMPAN (F3)'
    end
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select * from ApMsSupplierPrice Where SuppID=:SuppID'
      'order by ItemID')
    object quDetilSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilPriceB: TBCDField
      FieldName = 'PriceB'
      Precision = 18
    end
    object quDetilPriceK: TBCDField
      FieldName = 'PriceK'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quDetilLItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LItemName'
      Size = 100
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnDataChange = dsDetilDataChange
  end
  object quCek: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    Left = 404
    Top = 4
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 744
    Top = 64
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 780
    Top = 64
  end
end
