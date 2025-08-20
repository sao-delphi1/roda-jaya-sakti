inherited fmINMSItem: TfmINMSItem
  Left = 253
  Caption = 'Master Barang'
  ClientHeight = 642
  ClientWidth = 995
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
  object Label3: TLabel [2]
    Left = 26
    Top = 212
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Harga User :'
    Transparent = True
  end
  object Label5: TLabel [3]
    Left = 26
    Top = 232
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Harga Dealer :'
    Transparent = True
  end
  object Label6: TLabel [4]
    Left = 34
    Top = 220
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Harga User :'
    Transparent = True
  end
  object Label11: TLabel [5]
    Left = 34
    Top = 240
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Harga Dealer :'
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 593
    inherited pa3: TdxContainer
      Height = 414
      object Label29: TLabel
        Left = 6
        Top = 11
        Width = 89
        Height = 19
        Caption = 'Kode Barang'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object edKodeBarang: TdxEdit
        Left = -522
        Top = -185
        Width = 147
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        OnClick = bbFindClick
        Caption = 'CARI (F2)'
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 630
    Width = 995
  end
  inherited pa2: TdxContainer
    Height = 593
  end
  inherited pcMain: TdxPageControl
    Width = 802
    Height = 593
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 588
        Height = 398
        KeyField = 'SuppID'
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        object dbgListItemID: TdxDBGridColumn
          Caption = 'Kode Barang'
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dbgListItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemName'
        end
        object dbgListStock: TdxDBGridColumn
          ReadOnly = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Stock'
        end
        object dbgListProduct: TdxDBGridColumn
          Caption = 'Produk'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LProduct'
        end
        object dbgListGroup: TdxDBGridColumn
          Caption = 'Group'
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LGroup'
        end
        object dbgListGaransi: TdxDBGridColumn
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Garansi'
        end
        object dbgListValuta: TdxDBGridColumn
          Caption = 'Valuta'
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
        end
        object dbgListUserPrice: TdxDBGridColumn
          Caption = 'Harga User'
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UserPrice'
        end
        object dbgListDealerPrice: TdxDBGridColumn
          Caption = 'Harga Delear'
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DealerPrice'
        end
      end
    end
    inherited ts02: TdxTabSheet
      DesignSize = (
        802
        570)
      object Label1: TLabel
        Left = 10
        Top = 17
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Part Number :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 794
        Top = 905
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Asli :'
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
      object Label7: TLabel
        Left = 802
        Top = 834
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Harga Jual :'
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
      object Label8: TLabel
        Left = 803
        Top = 711
        Width = 89
        Height = 19
        Alignment = taRightJustify
        Caption = 'Harga Pokok'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label13: TLabel
        Left = 1362
        Top = 705
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Group :'
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
      object Label14: TLabel
        Left = 10
        Top = 161
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Satuan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 10
        Top = 185
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Minimum Stok :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 284
        Top = 39
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LTypeUnit'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 34
        Top = 256
        Width = 76
        Height = 17
        Alignment = taRightJustify
        Caption = 'Status Aktif :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 73
        Top = 232
        Width = 36
        Height = 17
        Alignment = taRightJustify
        Caption = 'Jenis :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 803
        Top = 742
        Width = 83
        Height = 19
        Alignment = taRightJustify
        Caption = 'Tipe Barang'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label16: TLabel
        Left = 1144
        Top = 710
        Width = 46
        Height = 19
        Alignment = taRightJustify
        Caption = 'Lokasi'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label23: TLabel
        Left = 910
        Top = 711
        Width = 9
        Height = 19
        Alignment = taRightJustify
        Caption = ' :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label27: TLabel
        Left = 910
        Top = 742
        Width = 9
        Height = 19
        Alignment = taRightJustify
        Caption = ' :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label28: TLabel
        Left = 1063
        Top = 834
        Width = 65
        Height = 17
        Alignment = taRightJustify
        Caption = 'Term Exp :'
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
      object Label30: TLabel
        Left = 1216
        Top = 710
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label31: TLabel
        Left = 1362
        Top = 681
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Produk :'
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
        Left = 1580
        Top = 679
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LProduct'
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
      object Label33: TLabel
        Left = 1297
        Top = 753
        Width = 82
        Height = 17
        Alignment = taRightJustify
        Caption = 'Satuan Kecil :'
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
      object DBText3: TDBText
        Left = 1180
        Top = 783
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LUOMID'
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
      object DBText5: TDBText
        Left = 1387
        Top = 783
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LUOMID2'
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
      object Label34: TLabel
        Left = 1169
        Top = 783
        Width = 127
        Height = 17
        Caption = '1                            ='
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
      object Label35: TLabel
        Left = 10
        Top = 113
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Barang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 816
        Top = 870
        Width = 136
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Default Satuan Jual :'
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
      object Label19: TLabel
        Left = 10
        Top = 41
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Type Unit :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 284
        Top = 185
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LUOMID2'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label20: TLabel
        Left = 10
        Top = 137
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Merk :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 10
        Top = 281
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Modal Akhir :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 10
        Top = 382
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Posisi Layout :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label26: TLabel
        Left = 51
        Top = 208
        Width = 58
        Height = 17
        Alignment = taRightJustify
        Caption = 'Kategori :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 10
        Top = 305
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Harga Jual :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 284
        Top = 63
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LCategory'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 10
        Top = 65
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Category'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 284
        Top = 87
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LCompartment'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 10
        Top = 89
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Compartment'
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
        Left = 579
        Top = 267
        Width = 100
        Height = 35
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
        TabOrder = 14
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 680
        Top = 267
        Width = 100
        Height = 35
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
        TabOrder = 16
      end
      object dxDBEdit5: TdxDBEdit
        Left = 1227
        Top = 704
        Width = 100
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        Visible = False
        CharCase = ecUpperCase
        DataField = 'Lokasi'
        DataSource = dsMain
        MaxLength = 7
        StyleController = SCEdit
        StoredValues = 2
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 116
        Top = 179
        Width = 87
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Lokasi'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Show'
          'Don'#39't Show')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBEdit6: TdxDBEdit
        Left = 935
        Top = 705
        Width = 200
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        Visible = False
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CHPP'
        DataSource = dsMain
        StyleController = SCEdit
        StoredValues = 1
      end
      object GroupBox2: TGroupBox
        Left = 536
        Top = 52
        Width = 249
        Height = 59
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
        object Label21: TLabel
          Left = 23
          Top = 12
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 68
          Top = 13
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 14
          Top = 33
          Width = 45
          Height = 17
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 68
          Top = 34
          Width = 174
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object dxDBSpinEdit1: TdxDBSpinEdit
        Left = 1134
        Top = 828
        Width = 100
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        Visible = False
        DataField = 'Komisi'
        DataSource = dsMain
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 16
      end
      object dxDBEdit3: TdxDBEdit
        Left = 935
        Top = 736
        Width = 153
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        Visible = False
        CharCase = ecUpperCase
        DataField = 'Tipe'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 1468
        Top = 675
        Width = 100
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'ProductID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 1468
        Top = 699
        Width = 100
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'GroupID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBEdit1: TdxDBEdit
        Left = 116
        Top = 11
        Width = 245
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'ItemID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 900
        Top = 899
        Width = 390
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
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'ItemName2'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object dxDBEdit9: TdxDBEdit
        Left = 116
        Top = 107
        Width = 341
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'ItemName'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 116
        Top = 155
        Width = 79
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'UOMID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 1387
        Top = 747
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'UOMID2'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
      end
      object dxDBEdit8: TdxDBEdit
        Left = 1302
        Top = 777
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        Alignment = taRightJustify
        DataField = 'Konversi'
        DataSource = dsMain
        StyleController = SCEdit
        StoredValues = 1
      end
      object dxDBEdit4: TdxDBEdit
        Left = 202
        Top = 179
        Width = 79
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'MinimumStok'
        DataSource = dsMain
        StyleController = SCEdit
        StoredValues = 1
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 116
        Top = 251
        Width = 101
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgActive'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'YA'
          'TIDAK')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBEdit7: TdxDBEdit
        Left = 908
        Top = 828
        Width = 146
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'UserPrice'
        DataSource = dsMain
        StyleController = SCEdit
        StoredValues = 1
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 958
        Top = 865
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'fguomid'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 116
        Top = 35
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'typeunit'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit6ButtonClick
        ExistButtons = True
      end
      object dxDBEdit10: TdxDBEdit
        Left = 116
        Top = 131
        Width = 164
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'merk'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object Edit1: TEdit
        Left = 360
        Top = 12
        Width = 145
        Height = 21
        TabOrder = 29
        OnKeyPress = dxDBEdit1KeyPress
      end
      object Button1: TButton
        Left = 508
        Top = 11
        Width = 63
        Height = 25
        Caption = 'Ubah'
        TabOrder = 30
        OnClick = Button1Click
        OnKeyPress = dxDBEdit1KeyPress
      end
      object Edit2: TEdit
        Left = 196
        Top = 157
        Width = 82
        Height = 21
        TabOrder = 5
        OnClick = Edit2Click
        OnKeyPress = dxDBEdit1KeyPress
      end
      object Button2: TButton
        Left = 280
        Top = 156
        Width = 63
        Height = 25
        Caption = 'Ubah'
        TabOrder = 31
        OnClick = Button2Click
        OnKeyPress = dxDBEdit1KeyPress
      end
      object dxDBEdit11: TdxDBEdit
        Left = 116
        Top = 275
        Width = 164
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'UserPrice'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object dxDBEdit12: TdxDBEdit
        Left = 116
        Top = 376
        Width = 101
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'Layout'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 116
        Top = 227
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'LJenis'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit7ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit3: TdxDBImageEdit
        Left = 116
        Top = 203
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Tipe'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'FAST MOVING'
          'MEDIUM MOVING'
          'SLOW MOVING'
          'NORMAL')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        Values.Strings = (
          'F'
          'M'
          'S'
          'N')
      end
      object dxDBEdit13: TdxDBEdit
        Left = 116
        Top = 299
        Width = 164
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'DealerPrice'
        DataSource = dsMain
        MaxLength = 200
        StyleController = SCEdit
        Height = 25
        StoredValues = 2
      end
      object GroupBox1: TGroupBox
        Left = 320
        Top = 242
        Width = 241
        Height = 81
        Caption = '[ Hanya Barang HSE/Inventaris ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        object Label36: TLabel
          Left = 43
          Top = 24
          Width = 52
          Height = 17
          Alignment = taRightJustify
          Caption = 'Periode :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 5
          Top = 48
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Masa Pakai :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dxDBImageEdit4: TdxDBImageEdit
          Left = 101
          Top = 20
          Width = 101
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'FgLama'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'HARI'
            'BULAN (30 D)'
            'TAHUN (365 D)')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            'D'
            'M'
            'Y')
        end
        object dxDBEdit14: TdxDBEdit
          Left = 101
          Top = 44
          Width = 76
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'Lama'
          DataSource = dsMain
          MaxLength = 200
          StyleController = SCEdit
          Height = 25
          StoredValues = 2
        end
      end
      object dxDBButtonEdit8: TdxDBButtonEdit
        Left = 116
        Top = 59
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 32
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'CategoryID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit8ButtonClick
        ExistButtons = True
      end
      object dbg: TdxDBGrid
        Left = 849
        Top = 53
        Width = 292
        Height = 180
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Common Part'
            Width = 234
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'NoUnit'
        SummaryGroups = <>
        SummarySeparator = ', '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 33
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
        object dbgTypeUnit: TdxDBGridButtonColumn
          Caption = 'Type Unit'
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoUnit'
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dbgTypeUnitButtonClick
        end
        object dbgNamaUnit: TdxDBGridColumn
          Caption = 'Nama Unit'
          Color = clWhite
          TabStop = False
          Width = 158
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description'
        end
        object dbgTypeClassUnit: TdxDBGridButtonColumn
          Caption = 'Type Class Unit'
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TypeClassUnit'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgGroup: TdxDBGridColumn
          Caption = 'Group'
          Visible = False
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'groupid'
        end
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 851
        Top = 237
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '[+] Type Unit'
        TabOrder = 34
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 944
        Top = 237
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '[-] Type Unit'
        TabOrder = 35
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 1037
        Top = 237
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 36
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 1130
        Top = 237
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 37
        TabStop = False
      end
      object dxDBButtonEdit9: TdxDBButtonEdit
        Left = 116
        Top = 83
        Width = 165
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 38
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'CompartmentID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit9ButtonClick
        ExistButtons = True
      end
      object dxDBGrid1: TdxDBGrid
        Left = 1
        Top = 326
        Width = 801
        Height = 204
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Reference Part Number'
            Width = 486
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 39
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -15
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsRef
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -15
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
        object dxDBGrid1Column1: TdxDBGridColumn
          Visible = False
          Width = 324
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
        end
        object dxDBGrid1Column2: TdxDBGridButtonColumn
          Caption = 'Part Reference'
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RefID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1Column2ButtonClick
        end
        object dxDBGrid1Column3: TdxDBGridColumn
          Caption = 'Nama Barang'
          Width = 250
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LitemName'
        end
        object dxDBGrid1Column4: TdxDBGridColumn
          Caption = 'Type Unit'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LTypeUnit'
        end
        object dxDBGrid1Column5: TdxDBGridColumn
          Caption = 'Waktu'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGrid1Column6: TdxDBGridColumn
          Caption = 'User'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
      object dxButton1: TdxButton
        Tag = 1111
        Left = 3
        Top = 532
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = '(+) Reference'
        TabOrder = 40
        TabStop = False
      end
      object dxButton2: TdxButton
        Tag = 2222
        Left = 96
        Top = 532
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(-) Reference'
        TabOrder = 41
        TabStop = False
      end
      object dxButton3: TdxButton
        Tag = 4444
        Left = 189
        Top = 532
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = 'Simpan'
        TabOrder = 42
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 282
        Top = 532
        Width = 92
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Batal'
        TabOrder = 43
        TabStop = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 995
    inherited sbLast: TSpeedButton
      Left = 958
    end
    inherited sbNext: TSpeedButton
      Left = 931
    end
    inherited sbPrev: TSpeedButton
      Left = 904
    end
    inherited sbFirst: TSpeedButton
      Left = 877
    end
    inherited sbPeriod: TSpeedButton
      Left = 851
    end
    inherited BvlPeriod: TBevel
      Left = 605
    end
    inherited laPeriod: TLabel
      Left = 609
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select *, CASE Garantee WHEN '#39'1'#39' THEN '#39'Ya'#39' '
      
        '                                        WHEN '#39'0'#39' THEN '#39'Non'#39' END ' +
        'AS Garansi '
      ' from INMsItem Where Ctk='#39'Y'#39
      '')
    Left = 218
    object quMainItemID: TStringField
      DisplayWidth = 50
      FieldName = 'ItemID'
      Size = 50
    end
    object quMainItemName: TStringField
      DisplayWidth = 100
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
      OnChange = quMainUOMIDChange
    end
    object quMainGarantee: TStringField
      FieldName = 'Garantee'
      FixedChar = True
      Size = 1
    end
    object quMainUserPrice: TBCDField
      FieldName = 'UserPrice'
      LookupDataSet = quTypeUnit
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainDealerPrice: TBCDField
      FieldName = 'DealerPrice'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLProduct: TStringField
      FieldKind = fkLookup
      FieldName = 'LProduct'
      LookupDataSet = quProduct
      LookupKeyFields = 'ProductID'
      LookupResultField = 'ProductDesc'
      KeyFields = 'ProductID'
      Lookup = True
    end
    object quMainLGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LGroup'
      LookupDataSet = quGroup
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupDesc'
      KeyFields = 'GroupID'
      Lookup = True
    end
    object quMainGaransi: TStringField
      FieldName = 'Garansi'
      ReadOnly = True
      Size = 3
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
    end
    object quMainLUOMID: TStringField
      FieldKind = fkLookup
      FieldName = 'LUOMID'
      LookupDataSet = quUOM
      LookupKeyFields = 'UOMId'
      LookupResultField = 'UOMId'
      KeyFields = 'UOMID'
      Size = 50
      Lookup = True
    end
    object quMainJangkaGarantee: TBCDField
      FieldName = 'JangkaGarantee'
      Precision = 18
      Size = 0
    end
    object quMainMinimumStok: TBCDField
      FieldName = 'MinimumStok'
      Precision = 18
      Size = 0
    end
    object quMainKomisi: TBCDField
      FieldName = 'Komisi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainCtk: TStringField
      FieldName = 'Ctk'
      FixedChar = True
      Size = 1
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainStock: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Stock'
      DisplayFormat = '#,0'
      Calculated = True
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
      DisplayWidth = 7
      FieldName = 'Lokasi'
      Size = 7
    end
    object quMainCHPP: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CHPP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quMainUOMID2: TStringField
      FieldName = 'UOMID2'
    end
    object quMainKonversi: TBCDField
      FieldName = 'Konversi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainItemName2: TStringField
      FieldName = 'ItemName2'
      Size = 200
    end
    object quMainLUOMID2: TStringField
      FieldKind = fkLookup
      FieldName = 'LUOMID2'
      LookupDataSet = quUOM
      LookupKeyFields = 'UOMId'
      LookupResultField = 'UOMId'
      KeyFields = 'UOMID2'
      Size = 100
      Lookup = True
    end
    object quMainfguomid: TStringField
      FieldName = 'fguomid'
      Size = 50
    end
    object quMaintypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quMainLTypeUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'LTypeUnit'
      LookupDataSet = quTypeUnit
      LookupKeyFields = 'TypeUnit'
      LookupResultField = 'Description'
      KeyFields = 'typeunit'
      Size = 100
      Lookup = True
    end
    object quMainmerk: TStringField
      FieldName = 'merk'
      Size = 50
    end
    object quMainLayout: TStringField
      FieldName = 'Layout'
      Size = 50
    end
    object quMainLJenis: TStringField
      FieldKind = fkCalculated
      FieldName = 'LJenis'
      Size = 100
      Calculated = True
    end
    object quMainFgLama: TStringField
      FieldName = 'FgLama'
      Size = 10
    end
    object quMainLama: TIntegerField
      FieldName = 'Lama'
    end
    object quMainCategoryID: TStringField
      FieldName = 'CategoryID'
      Size = 30
    end
    object quMainLCategory: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCategory'
      Size = 100
      Calculated = True
    end
    object quMainLCompartment: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCompartment'
      Size = 50
      Calculated = True
    end
    object quMainCompartmentID: TStringField
      FieldName = 'CompartmentID'
      Size = 50
    end
    object quMainFgPO: TStringField
      FieldName = 'FgPO'
    end
  end
  inherited ActionList: TActionList
    Left = 436
    inherited ActDetail: TAction
      Enabled = False
    end
    inherited ActCari: TAction
      ShortCut = 113
      OnExecute = bbFindClick
    end
  end
  inherited quDetil: TADOQuery
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'itemid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from INMsItemDt where itemid=:itemid')
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilFgGroup: TStringField
      FieldName = 'FgGroup'
    end
    object quDetilgroupid: TStringField
      FieldName = 'groupid'
      Size = 100
    end
    object quDetiljenis: TStringField
      FieldName = 'jenis'
      Size = 10
    end
    object quDetilPayload: TBCDField
      FieldName = 'Payload'
      Precision = 18
    end
    object quDetilFgActive: TStringField
      FieldName = 'FgActive'
      Size = 10
    end
    object quDetilTypeClassUnit: TStringField
      FieldName = 'TypeClassUnit'
      Size = 100
    end
    object quDetilLokasi: TStringField
      FieldName = 'Lokasi'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quProduct: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsProduct')
    Left = 680
    Top = 172
  end
  object quGroup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsGroup')
    Left = 680
    Top = 200
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 391
    Top = 5
  end
  object quUOM: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsUOM')
    Left = 632
    Top = 196
  end
  object quTypeUnit: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsTypeUnit')
    Left = 680
    Top = 228
  end
  object quRef: TADOQuery
    Connection = dmMain.dbConn
    BeforePost = quRefBeforePost
    AfterPost = quRefAfterPost
    OnCalcFields = quRefCalcFields
    DataSource = dsMain
    Parameters = <
      item
        Name = 'itemid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from INMsItemRef where itemid=:itemid')
    Left = 564
    Top = 4
    object quRefItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quRefNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quRefRefID: TStringField
      FieldName = 'RefID'
      Size = 50
    end
    object quRefUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object quRefUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quRefLItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LItemName'
      Size = 100
      Calculated = True
    end
    object quRefLTypeUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTypeUnit'
      Size = 100
      Calculated = True
    end
  end
  object dsRef: TDataSource
    DataSet = quRef
    OnStateChange = dsRefStateChange
    Left = 592
    Top = 4
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 648
    Top = 4
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 688
    Top = 4
  end
end
