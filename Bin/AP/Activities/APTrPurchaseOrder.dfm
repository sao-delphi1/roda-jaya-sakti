inherited fmAPTrPurchaseOrder: TfmAPTrPurchaseOrder
  Left = 76
  Top = 29
  Caption = 'Purchase Order'
  ClientHeight = 696
  ClientWidth = 1338
  PixelsPerInch = 96
  TextHeight = 14
  inherited paLeft: TdxContainer
    Height = 643
    inherited pa3: TdxContainer
      Height = 450
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 683
    Width = 1338
  end
  inherited pa2: TdxContainer
    Height = 643
  end
  inherited dxContainer7: TdxContainer
    Width = 1130
    Height = 643
    inherited pcParent: TdxPageControl
      Width = 1130
      Height = 643
      inherited ts01: TdxTabSheet
        object Shape10: TShape [0]
          Left = 968
          Top = 709
          Width = 386
          Height = 30
          Brush.Color = 15259016
          Enabled = False
        end
        object Shape7: TShape [1]
          Left = 684
          Top = 583
          Width = 442
          Height = 30
          Brush.Color = 15259016
        end
        object Shape8: TShape [2]
          Left = 942
          Top = 811
          Width = 386
          Height = 30
          Brush.Color = 15259016
          Enabled = False
        end
        object Shape9: TShape [3]
          Left = 684
          Top = 612
          Width = 442
          Height = 30
          Brush.Color = 15259016
        end
        object Shape3: TShape [4]
          Left = 684
          Top = 524
          Width = 442
          Height = 31
          Brush.Color = 15259016
          Enabled = False
        end
        object DBText1: TDBText [5]
          Left = 226
          Top = 114
          Width = 55
          Height = 19
          AutoSize = True
          DataField = 'LuSuppName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [6]
          Left = 31
          Top = 10
          Width = 63
          Height = 19
          Alignment = taRightJustify
          Caption = 'Nota PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [7]
          Left = 41
          Top = 36
          Width = 53
          Height = 19
          Alignment = taRightJustify
          Caption = 'Tanggal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [8]
          Left = 37
          Top = 114
          Width = 57
          Height = 19
          Alignment = taRightJustify
          Caption = 'Supplier :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [9]
          Left = 17
          Top = 139
          Width = 77
          Height = 19
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel [10]
          Left = 5
          Top = 219
          Width = 150
          Height = 19
          Caption = 'Detail Purchase Order'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Shape6: TShape [11]
          Left = 684
          Top = 467
          Width = 442
          Height = 31
          Brush.Color = 15259016
        end
        object Label3: TLabel [12]
          Left = 694
          Top = 473
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText [13]
          Left = 943
          Top = 474
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel [14]
          Left = 26
          Top = 774
          Width = 42
          Height = 15
          Alignment = taRightJustify
          Caption = 'No PR :'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label9: TLabel [15]
          Left = 689
          Top = 588
          Width = 152
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PPN                         :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText6: TDBText [16]
          Left = 943
          Top = 589
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'Pajak'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape [17]
          Left = 684
          Top = 496
          Width = 442
          Height = 31
          Brush.Color = 15259016
          Enabled = False
        end
        object Label12: TLabel [18]
          Left = 694
          Top = 617
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grand Total PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText7: TDBText [19]
          Left = 943
          Top = 618
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'GrandTotalPO'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel [20]
          Left = 753
          Top = 727
          Width = 41
          Height = 19
          Alignment = taRightJustify
          Caption = 'Kirim :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape5: TShape [21]
          Left = 684
          Top = 554
          Width = 442
          Height = 30
          Brush.Color = 15259016
        end
        object Label6: TLabel [22]
          Left = 694
          Top = 560
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Diskon (%)             :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel [23]
          Left = 952
          Top = 817
          Width = 148
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SubTotal PO :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [24]
          Left = 1189
          Top = 817
          Width = 129
          Height = 18
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsTotal
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText8: TDBText [25]
          Left = 864
          Top = 768
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'priceB'
          Enabled = False
          Visible = False
        end
        object DBText9: TDBText [26]
          Left = 864
          Top = 785
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'priceK'
          Enabled = False
          Visible = False
        end
        object Label15: TLabel [27]
          Left = 759
          Top = 751
          Width = 223
          Height = 15
          Caption = 'Harga beli terakhir (Jakarta / Surabaya)'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label16: TLabel [28]
          Left = 768
          Top = 768
          Width = 70
          Height = 15
          Caption = 'Harga Besar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label17: TLabel [29]
          Left = 768
          Top = 785
          Width = 64
          Height = 15
          Caption = 'Harga Kecil'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label18: TLabel [30]
          Left = 837
          Top = 768
          Width = 22
          Height = 15
          Caption = ': Rp'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label19: TLabel [31]
          Left = 837
          Top = 785
          Width = 22
          Height = 15
          Caption = ': Rp'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label20: TLabel [32]
          Left = 389
          Top = 748
          Width = 285
          Height = 15
          Caption = 'Note : kalau haga yang ditampilkan kosong berarti'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label21: TLabel [33]
          Left = 389
          Top = 766
          Width = 219
          Height = 15
          Caption = 'pernah beli dari Jakarta atau surabaya'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label23: TLabel [34]
          Left = 41
          Top = 978
          Width = 44
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valuta :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel [35]
          Left = 197
          Top = 977
          Width = 35
          Height = 19
          Alignment = taRightJustify
          Caption = 'Rate :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText12: TDBText [36]
          Left = 844
          Top = 473
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText13: TDBText [37]
          Left = 844
          Top = 560
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText14: TDBText [38]
          Left = 1103
          Top = 817
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText15: TDBText [39]
          Left = 844
          Top = 617
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText16: TDBText [40]
          Left = 844
          Top = 588
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel [41]
          Left = 33
          Top = 728
          Width = 26
          Height = 19
          Alignment = taRightJustify
          Caption = 'DP :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label25: TLabel [42]
          Left = 427
          Top = 940
          Width = 38
          Height = 19
          Alignment = taRightJustify
          Caption = 'Term :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel [43]
          Left = 635
          Top = 962
          Width = 55
          Height = 19
          Alignment = taRightJustify
          Caption = 'PR ID :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label28: TLabel [44]
          Left = 45
          Top = 1010
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Caption = 'Alamat Pengiriman :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText10: TDBText [45]
          Left = 943
          Top = 561
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'Disc'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel [46]
          Left = 694
          Top = 502
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PBB-KB :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel [47]
          Left = 694
          Top = 530
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ongkir :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText11: TDBText [48]
          Left = 844
          Top = 502
          Width = 68
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText17: TDBText [49]
          Left = 844
          Top = 530
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel [50]
          Left = 978
          Top = 714
          Width = 147
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Repacking :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText18: TDBText [51]
          Left = 1129
          Top = 714
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText19: TDBText [52]
          Left = 1036
          Top = 915
          Width = 63
          Height = 19
          AutoSize = True
          DataField = 'Lwarehouse'
          DataSource = dsMain
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label31: TLabel [53]
          Left = 838
          Top = 915
          Width = 66
          Height = 19
          Alignment = taRightJustify
          Caption = 'Company :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object DBText20: TDBText [54]
          Left = 226
          Top = 88
          Width = 63
          Height = 19
          AutoSize = True
          DataField = 'Lsites'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel [55]
          Left = 64
          Top = 89
          Width = 30
          Height = 19
          Alignment = taRightJustify
          Caption = 'Site :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText21: TDBText [56]
          Left = 347
          Top = 950
          Width = 63
          Height = 19
          AutoSize = True
          DataField = 'LDivisi'
          DataSource = dsMain
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label33: TLabel [57]
          Left = 174
          Top = 950
          Width = 40
          Height = 19
          Alignment = taRightJustify
          Caption = 'Divisi :'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label34: TLabel [58]
          Left = 190
          Top = 166
          Width = 26
          Height = 19
          Caption = 'Hari'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label35: TLabel [59]
          Left = 18
          Top = 62
          Width = 76
          Height = 19
          Alignment = taRightJustify
          Caption = 'Perusahaan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel [60]
          Left = 56
          Top = 165
          Width = 38
          Height = 19
          Alignment = taRightJustify
          Caption = 'Term :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object DBText23: TDBText [61]
          Left = 943
          Top = 502
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'PBBKB'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText24: TDBText [62]
          Left = 943
          Top = 530
          Width = 173
          Height = 17
          Alignment = taRightJustify
          DataField = 'Ongkir'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText25: TDBText [63]
          Left = 648
          Top = 467
          Width = 34
          Height = 34
          Alignment = taRightJustify
          DataField = 'JmlPrint'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText26: TDBText [64]
          Left = 114
          Top = 528
          Width = 123
          Height = 32
          AutoSize = True
          DataField = 'LRev'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel [65]
          Left = 819
          Top = 589
          Width = 13
          Height = 19
          Alignment = taRightJustify
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText22: TDBText [66]
          Left = 226
          Top = 64
          Width = 63
          Height = 19
          AutoSize = True
          DataField = 'LPT'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        inherited bbSave: TdxButton
          Left = 684
          Top = 128
          Width = 119
          Height = 32
          Font.Charset = ANSI_CHARSET
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          TabOrder = 6
        end
        inherited bbCancel: TdxButton
          Left = 804
          Top = 128
          Width = 120
          Height = 32
          Font.Charset = ANSI_CHARSET
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          TabOrder = 7
        end
        object dbg: TdxDBGrid
          Left = 1
          Top = 193
          Width = 1128
          Height = 273
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 
                'Detail Purchase Order ( Part Reference jika tidak ada, maka koso' +
                'ngkan )'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnEnter = dbgEnter
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -13
          BandFont.Name = 'Arial Narrow'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = []
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
          object dbgPOID: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dbgItemID: TdxDBGridButtonColumn
            Caption = 'Part Number'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgItemIDButtonClick
          end
          object dbgColumn21: TdxDBGridButtonColumn
            Caption = 'Part Reference'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'itemid2'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn21ButtonClick
          end
          object dbgLuItemName: TdxDBGridColumn
            Caption = 'Nama Barang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ReadOnly = True
            TabStop = False
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LuItemName'
          end
          object dbgColumn15: TdxDBGridColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TypeUnit'
          end
          object dbgColumn16: TdxDBGridButtonColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
          end
          object dbgPRID: TdxDBGridButtonColumn
            Caption = 'Nota PR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgPRIDButtonClick
          end
          object dbgQty: TdxDBGridColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgUOMID: TdxDBGridButtonColumn
            Caption = 'Satuan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMIDButtonClick
          end
          object dbgColumn14: TdxDBGridColumn
            Caption = 'Bonus'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DiscItem'
          end
          object dbgDisc2: TdxDBGridColumn
            Caption = 'Disc 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 38
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc2'
          end
          object dbgDisc3: TdxDBGridColumn
            Caption = 'Disc 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 38
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc3'
          end
          object dbgPrice: TdxDBGridColumn
            Caption = 'Harga'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgColumn19: TdxDBGridColumn
            Caption = 'PBB-KB'
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'pbbkb'
          end
          object dbgColumn20: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Jenis'
            MinWidth = 16
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'fgongkir'
            Descriptions.Strings = (
              'Normal'
              'Ongkir'
              'PBB-KB')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'T'
              'O'
              'P')
          end
          object dbgUpdDate: TdxDBGridDateColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgDisc: TdxDBGridColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 38
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc'
          end
          object dbgUpdUser: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgCTotal: TdxDBGridColumn
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
          object dbgColumn18: TdxDBGridColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'keterangan'
          end
          object dbgColumn17: TdxDBGridColumn
            Caption = 'Checked'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LOto'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 1
          Top = 467
          Width = 110
          Height = 32
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 9
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 112
          Top = 467
          Width = 111
          Height = 32
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 10
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 224
          Top = 467
          Width = 111
          Height = 32
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 11
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 336
          Top = 467
          Width = 111
          Height = 32
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 12
          TabStop = False
        end
        object bbCetak: TdxButton
          Tag = 4444
          Left = 492
          Top = 467
          Width = 154
          Height = 32
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbCetakClick
          Caption = 'Cetak (F9)'
          TabOrder = 13
          TabStop = False
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 80
          Top = 770
          Width = 231
          Enabled = False
          TabOrder = 14
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'PRID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object ceBerat: TdxCheckEdit
          Left = 656
          Top = 761
          Width = 109
          Enabled = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 15
          TabStop = False
          Visible = False
          Caption = 'Tampilkan berat'
          StyleController = SCCheckEdit
        end
        object CePOLokal: TdxCheckEdit
          Left = 578
          Top = 779
          Width = 130
          Enabled = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 16
          TabStop = False
          Visible = False
          Caption = 'PO Non Local'
          StyleController = SCCheckEdit
          State = cbsChecked
        end
        object CePOPrice: TdxCheckEdit
          Left = 389
          Top = 778
          Width = 181
          Enabled = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 17
          TabStop = False
          Visible = False
          Caption = 'Tampilkan Harga PO Terakhir'
          StyleController = SCCheckEdit
          State = cbsChecked
        end
        object GroupBox1: TGroupBox
          Left = 849
          Top = 6
          Width = 268
          Height = 62
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
          object Label10: TLabel
            Left = 26
            Top = 12
            Width = 36
            Height = 19
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 71
            Top = 13
            Width = 142
            Height = 18
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 15
            Top = 34
            Width = 47
            Height = 19
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 71
            Top = 34
            Width = 187
            Height = 19
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object dxDBEdit5: TdxDBEdit
          Left = 183
          Top = 724
          Width = 129
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          Visible = False
          DataField = 'DP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit6: TdxDBEdit
          Left = 71
          Top = 944
          Width = 82
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          DataField = 'Term'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 696
          Top = 954
          Width = 210
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'PRID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBImageEdit1: TdxDBImageEdit
          Left = 128
          Top = 767
          Width = 108
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Visible = False
          DataField = 'FgDP'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Amount'
            'Percentage')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'A'
            'P')
        end
        object dxDBEdit1: TdxDBEdit
          Left = 106
          Top = 5
          Width = 188
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          CharCase = ecUpperCase
          DataField = 'POID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 106
          Top = 31
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 803
          Top = 723
          Width = 140
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'TglKirim'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 106
          Top = 109
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'SuppID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 97
          Top = 972
          Width = 85
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit3: TdxDBEdit
          Left = 236
          Top = 972
          Width = 110
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Kurs'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit4: TdxDBEdit
          Left = 784
          Top = 556
          Width = 48
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Disc'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBPajak: TdxDBImageEdit
          Left = 733
          Top = 584
          Width = 55
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'FgTax'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak'
            'Ya (040)')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            'Y'
            'T'
            'E')
        end
        object dxDBImageEdit2: TdxDBImageEdit
          Left = 167
          Top = 1005
          Width = 153
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'FgAdd'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Simpan'
            'Tidak Simpan')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '1'
            '2')
        end
        object dxDBEdit8: TdxDBEdit
          Left = 1212
          Top = 652
          Width = 134
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
          OnKeyPress = dxDBDateEdit1KeyPress
          Alignment = taRightJustify
          DataField = 'Ongkir'
          DataSource = dsMain
          StyleController = SCEdit
          StoredValues = 1
        end
        object dxDBEdit9: TdxDBEdit
          Left = 1212
          Top = 681
          Width = 134
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
          OnKeyPress = dxDBDateEdit1KeyPress
          Alignment = taRightJustify
          DataField = 'Administrasi'
          DataSource = dsMain
          StyleController = SCEdit
          StoredValues = 1
        end
        object dxDBEdit10: TdxDBEdit
          Left = 1212
          Top = 710
          Width = 134
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 31
          OnKeyPress = dxDBDateEdit1KeyPress
          Alignment = taRightJustify
          DataField = 'Repack'
          DataSource = dsMain
          StyleController = SCEdit
          StoredValues = 1
        end
        object dxButton1: TdxButton
          Tag = 4444
          Left = 655
          Top = 994
          Width = 123
          Height = 33
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'Print Voucher'
          TabOrder = 32
          TabStop = False
        end
        object CheckBox2: TCheckBox
          Left = 474
          Top = 954
          Width = 147
          Height = 18
          Caption = 'Data Master Item'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 33
        end
        object dbTerm: TDBRadioGroup
          Left = 1527
          Top = 835
          Width = 215
          Height = 112
          Caption = '[ Term of Payment ]'
          Ctl3D = False
          DataField = 'FgTerm'
          DataSource = dsMain
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Items.Strings = (
            'Cash On Delivery'
            'Cash Before Delivery'
            'DP'
            'Term')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
          Visible = False
          OnChange = dbTermChange
        end
        object dxDBImageEdit3: TdxDBImageEdit
          Left = 784
          Top = 990
          Width = 153
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 35
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'FgNote'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Simpan'
            'Tidak Simpan')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '1'
            '2')
        end
        object dxDBMemo1: TdxDBMemo
          Left = 227
          Top = 901
          Width = 457
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 36
          DataField = 'Address1'
          DataSource = dsMain
          MaxLength = 80
          StyleController = SCEdit
          WantReturns = False
          WantTabs = True
          Height = 57
          StoredValues = 2
        end
        object dxButton2: TdxButton
          Tag = 4444
          Left = 320
          Top = 1006
          Width = 112
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton2Click
          Caption = 'Cari Alamat'
          TabOrder = 37
          TabStop = False
        end
        object dxDBImageEdit4: TdxDBImageEdit
          Left = 457
          Top = 981
          Width = 149
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 38
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'FgRev'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Tidak Ada Revisi'
            'Ada Revisi')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            '0'
            '1')
        end
        object dxDBMemo2: TdxDBMemo
          Left = 82
          Top = 862
          Width = 311
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          DataField = 'Termin'
          DataSource = dsMain
          MaxLength = 80
          StyleController = SCEdit
          WantReturns = False
          WantTabs = True
          Height = 57
          StoredValues = 2
        end
        object dxButton3: TdxButton
          Tag = 4444
          Left = 76
          Top = 807
          Width = 69
          Height = 24
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton3Click
          Caption = 'Cari'
          TabOrder = 40
          TabStop = False
        end
        object dxDBButtonEdit6: TdxDBButtonEdit
          Left = 915
          Top = 910
          Width = 111
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'warehouseID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit6ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit7: TdxDBButtonEdit
          Left = 106
          Top = 83
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'SiteID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit7ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit8: TdxDBButtonEdit
          Left = 226
          Top = 944
          Width = 111
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'DivisiID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit8ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 106
          Top = 135
          Width = 550
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          CharCase = ecUpperCase
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit7: TdxDBEdit
          Left = 106
          Top = 160
          Width = 76
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = False
          CharCase = ecUpperCase
          DataField = 'Term'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 569
          Top = 554
          Width = 111
          Height = 31
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton4Click
          Caption = 'Harga/PPN'
          TabOrder = 43
          TabStop = False
        end
        object dxButton5: TdxButton
          Tag = 4444
          Left = 457
          Top = 554
          Width = 111
          Height = 31
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton5Click
          Caption = 'Harga*PPN'
          TabOrder = 44
          TabStop = False
        end
        object dxButton6: TdxButton
          Tag = 1111
          Left = 1
          Top = 528
          Width = 110
          Height = 31
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton6Click
          Caption = 'Submit'
          TabOrder = 45
          TabStop = False
        end
        object GroupBox2: TGroupBox
          Left = 526
          Top = 6
          Width = 294
          Height = 90
          Caption = '[ Status ]'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 46
          object Label37: TLabel
            Left = 34
            Top = 22
            Width = 44
            Height = 19
            Alignment = taRightJustify
            Caption = 'Status :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 26
            Top = 42
            Width = 52
            Height = 19
            Alignment = taRightJustify
            Caption = 'Oto By :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 14
            Top = 62
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Oto Date :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText27: TDBText
            Left = 82
            Top = 18
            Width = 85
            Height = 23
            AutoSize = True
            DataField = 'Lstatusoto'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText28: TDBText
            Left = 82
            Top = 42
            Width = 63
            Height = 19
            AutoSize = True
            DataField = 'OtoBy'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText29: TDBText
            Left = 82
            Top = 62
            Width = 63
            Height = 19
            AutoSize = True
            DataField = 'OtoDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object dxDBImageEdit6: TdxDBImageEdit
          Left = 1
          Top = 610
          Width = 448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 47
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'CityID'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Data yang diinput otomatis update Harga ke Master Barang'
            'Data yang diinput tidak mempengaruhi harga Barang pada Master')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBEdit11: TdxDBEdit
          Left = 788
          Top = 584
          Width = 29
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 48
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'NilaiTax'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit5: TdxDBButtonEdit
          Left = 106
          Top = 57
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 49
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'warehouseID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit5ButtonClick
          ExistButtons = True
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1338
    inherited sbLast: TSpeedButton
      Left = 1298
    end
    inherited sbNext: TSpeedButton
      Left = 1269
    end
    inherited sbPrev: TSpeedButton
      Left = 1240
    end
    inherited sbFirst: TSpeedButton
      Left = 1210
    end
    inherited sbPeriod: TSpeedButton
      Left = 1182
    end
    inherited BvlPeriod: TBevel
      Left = 918
    end
    inherited laPeriod: TLabel
      Left = 922
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM APTrPurchaseOrderHD'
      '')
    Left = 212
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      OnChange = quMainSuppIDChange
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainTTLPO: TBCDField
      FieldName = 'TTLPO'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLokasi: TStringField
      FieldName = 'Lokasi'
      Size = 100
    end
    object quMainCityID: TStringField
      FieldName = 'CityID'
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object quMainLuSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      Size = 5
    end
    object quMainLCurrName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCurrName'
      Calculated = True
    end
    object quMainKurs: TBCDField
      FieldName = 'Kurs'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgTerm: TStringField
      FieldName = 'FgTerm'
      Size = 1
    end
    object quMainTerm: TIntegerField
      FieldName = 'Term'
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgEdit: TStringField
      FieldName = 'FgEdit'
      FixedChar = True
      Size = 10
    end
    object quMainAddress1: TStringField
      FieldName = 'Address1'
      Size = 200
    end
    object quMainNoPO: TStringField
      FieldName = 'NoPO'
    end
    object quMainFgDP: TStringField
      FieldName = 'FgDP'
      Size = 1
    end
    object quMainFgAdd: TStringField
      FieldName = 'FgAdd'
      FixedChar = True
      Size = 1
    end
    object quMainOngkir: TBCDField
      FieldName = 'Ongkir'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainAdministrasi: TBCDField
      FieldName = 'Administrasi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainRepack: TBCDField
      FieldName = 'Repack'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainFgNote: TStringField
      FieldName = 'FgNote'
      Size = 50
    end
    object quMainFgRev: TStringField
      FieldName = 'FgRev'
      Size = 50
    end
    object quMainTermin: TStringField
      FieldName = 'Termin'
      Size = 200
    end
    object quMainwarehouseID: TStringField
      FieldName = 'warehouseID'
      Size = 50
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainLwarehouse: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lwarehouse'
      Size = 100
      Calculated = True
    end
    object quMainLsites: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lsites'
      Size = 100
      Calculated = True
    end
    object quMainDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quMainLDivisi: TStringField
      FieldKind = fkCalculated
      FieldName = 'LDivisi'
      Size = 50
      Calculated = True
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quMainOtoBy: TStringField
      FieldName = 'OtoBy'
      Size = 100
    end
    object quMainLstatusoto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lstatusoto'
      Size = 100
      Calculated = True
    end
    object quMainpbbkb: TBCDField
      FieldName = 'pbbkb'
      Precision = 18
    end
    object quMainJmlPrint: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'JmlPrint'
      Calculated = True
    end
    object quMainLRev: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRev'
      Size = 100
      Calculated = True
    end
    object quMainOtoDate: TDateTimeField
      FieldName = 'OtoDate'
      DisplayFormat = 'dd/MM/yyyy HH:MM'
    end
    object quMainNilaiTax: TBCDField
      FieldName = 'NilaiTax'
      Precision = 18
    end
    object quMainStPO: TBCDField
      FieldName = 'StPO'
      Precision = 18
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainLPT: TStringField
      FieldKind = fkCalculated
      FieldName = 'LPT'
      Size = 200
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 12
    inherited ActSave: TAction
      Caption = 'Simpan (F3)'
    end
    inherited ActCancel: TAction
      Caption = 'Batal (Esc)'
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Print'
      ShortCut = 120
    end
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    BeforeInsert = quDetilBeforeInsert
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM APTrPurchaseOrderDt'
      'WHERE POID=:POID ')
    Left = 323
    object quDetilPOID: TStringField
      FieldName = 'POID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object quDetilDisc2: TBCDField
      FieldName = 'Disc2'
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetilDisc3: TBCDField
      FieldName = 'Disc3'
      DisplayFormat = '#,0.000'
      EditFormat = '#,0.000'
      Precision = 18
    end
    object quDetilDiscItem: TBCDField
      FieldName = 'DiscItem'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      OnChange = quDetilUOMIDChange
    end
    object quDetilLuItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuItemName'
      Size = 200
      Calculated = True
    end
    object quDetilNumAll: TIntegerField
      FieldName = 'NumAll'
    end
    object quDetilFgNum: TIntegerField
      FieldName = 'FgNum'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quDetilLOto: TStringField
      FieldKind = fkCalculated
      FieldName = 'LOto'
      Calculated = True
    end
    object quDetilOtoBy: TStringField
      FieldName = 'OtoBy'
      Size = 100
    end
    object quDetilketerangan: TStringField
      FieldName = 'keterangan'
      Size = 100
    end
    object quDetilpbbkb: TBCDField
      FieldName = 'pbbkb'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilongkir: TBCDField
      FieldName = 'ongkir'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilfgongkir: TStringField
      FieldName = 'fgongkir'
      Size = 10
    end
    object quDetilitemid2: TStringField
      FieldName = 'itemid2'
      Size = 100
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT K.T as Total,(K.T+K.P+K.A)*K.Disc/100 as Disc,K.P as PBBK' +
        'B,K.A as Ongkir,'
      
        '(CASE WHEN K.FgTax='#39'Y'#39' THEN (K.T-(K.T*K.Disc/100))*(K.NilaiTax/1' +
        '00) WHEN K.FgTax='#39'E'#39' THEN (K.T-(K.T*K.Disc/100))*0.01 ELSE 0 END' +
        ') as Pajak,'
      
        '(CASE WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K' +
        '.T-((K.T)*K.Disc/100))*(K.NilaiTax/100))'
      
        'WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K.T-((K' +
        '.T)*K.Disc/100))*0.01) ELSE (K.T-((K.T)*K.Disc/100)) END) as SuB' +
        'Total,'
      
        '(CASE WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K' +
        '.T-((K.T)*K.Disc/100))*(K.NilaiTax/100))'
      
        'WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K.T-((K' +
        '.T)*K.Disc/100))*0.01) ELSE (K.T-((K.T)*K.Disc/100)) END)+K.A+K.' +
        'B+k.P as grandTotalPO,'
      
        '(CASE WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K' +
        '.T-((K.T)*K.Disc/100))*(K.NilaiTax/100))'
      
        'WHEN K.FgTax='#39'Y'#39' THEN (K.T-((K.T+K.P+K.A)*K.Disc/100))+((K.T-((K' +
        '.T)*K.Disc/100))*0.01) ELSE (K.T-((K.T)*K.Disc/100)) END)+K.A+K.' +
        'B+k.P as GrandTotal FROM ('
      
        'select A.POID,SUM(CASE WHEN A.FgOngkir='#39'T'#39' THEN (A.Price*(A.Juml' +
        'ah-A.DiscItem))-(A.Price*(A.Jumlah-A.DiscItem))*A.Disc/100 ELSE ' +
        '0 END) as T,B.FgTax,B.Disc,'
      
        'SUM(CASE WHEN A.FgOngkir='#39'P'#39' THEN (A.Price*(A.Jumlah-A.DiscItem)' +
        ')-(A.Price*(A.Jumlah-A.DiscItem))*A.Disc/100 ELSE 0 END) as P,'
      
        'SUM(CASE WHEN A.FgOngkir='#39'O'#39' THEN (A.Price*(A.Jumlah-A.DiscItem)' +
        ')-(A.Price*(A.Jumlah-A.DiscItem))*A.Disc/100 ELSE 0 END) as A,'
      'isnull(B.Administrasi,0) as B,isnull(B.Repack,0) as C,B.NilaiTax'
      'FROM APTrPurchaseOrderDT A'
      'INNER JOIN APTrPurchaseOrderHD B ON A.POID=B.POID'
      
        'GROUP BY A.POID,B.FgTax,B.Disc,B.Ongkir,B.administrasi,B.Repack,' +
        'B.NilaiTax ) as K'
      'where K.POID=:POID')
    Left = 512
    Top = 301
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
    object quTotalGrandTotal: TBCDField
      FieldName = 'GrandTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalGrandTotalPO: TBCDField
      FieldName = 'GrandTotalPO'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalDisc: TBCDField
      FieldName = 'Disc'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPBBKB: TBCDField
      FieldName = 'PBBKB'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalOngkir: TBCDField
      FieldName = 'Ongkir'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 540
    Top = 301
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 556
    Top = 8
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 428
    Top = 12
  end
  object quCetak: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 52
  end
end
