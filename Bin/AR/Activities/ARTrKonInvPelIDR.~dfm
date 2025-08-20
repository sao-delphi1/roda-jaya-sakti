inherited fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR
  Left = 641
  Top = 152
  Action = ActCancel
  Caption = 'Invoice Penjualan'
  ClientHeight = 696
  ClientWidth = 1116
  OnClick = ActCancelExecute
  PixelsPerInch = 96
  TextHeight = 13
  object Label48: TLabel [1]
    Left = 631
    Top = 524
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label49: TLabel [2]
    Left = 631
    Top = 500
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label50: TLabel [3]
    Left = 631
    Top = 476
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 647
    inherited pa3: TdxContainer
      Height = 468
      object Label31: TLabel
        Left = 11
        Top = 54
        Width = 74
        Height = 15
        Caption = 'PPN Keluaran'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 11
        Top = 98
        Width = 63
        Height = 15
        Caption = 'Pendapatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 11
        Top = 10
        Width = 78
        Height = 15
        Caption = 'Piutang Usaha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 11
        Top = 314
        Width = 149
        Height = 26
        Caption = 'Piutang Usaha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = -649
        Top = -220
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit5ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = -649
        Top = -220
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningK'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit7ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = -649
        Top = -220
        Width = 150
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningU'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit4ButtonClick
        ExistButtons = True
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
    Top = 684
    Width = 1116
  end
  inherited pa2: TdxContainer
    Height = 647
  end
  inherited pcMain: TdxPageControl
    Width = 923
    Height = 647
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 792
        Height = 635
        KeyField = 'KonInvPelID'
        Filter.Criteria = {00000000}
        object dbgListKonInvPelID: TdxDBGridMaskColumn
          Caption = 'Nota Invoice Konsinyasi Penjualan'
          Width = 182
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonInvPelID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListPelangganName: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan'
          Width = 178
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListJatuhTempo: TdxDBGridMaskColumn
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JatuhTempo'
        end
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Valuta'
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrID'
        end
        object dbgListNote: TdxDBGridMemoColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Shape11: TShape
        Left = 121
        Top = 790
        Width = 403
        Height = 27
        Brush.Color = 13676331
        Enabled = False
        Visible = False
      end
      object Shape7: TShape
        Left = 121
        Top = 764
        Width = 403
        Height = 27
        Brush.Color = 13676331
        Enabled = False
        Visible = False
      end
      object Shape4: TShape
        Left = 121
        Top = 738
        Width = 403
        Height = 27
        Brush.Color = 13676331
        Enabled = False
        Visible = False
      end
      object Shape3: TShape
        Left = 121
        Top = 822
        Width = 403
        Height = 27
        Brush.Color = 13676331
        Enabled = False
      end
      object Label1: TLabel
        Left = 10
        Top = 11
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nomor Invoice :'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 83
        Width = 100
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
      object Label3: TLabel
        Left = 10
        Top = 107
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Customer :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 155
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 10
        Top = 179
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 215
        Top = 105
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'CustName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 123
        Top = 827
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DISCOUNT (%)                :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 123
        Top = 743
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ONGKIR :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label4: TLabel
        Left = 200
        Top = 179
        Width = 139
        Height = 17
        Alignment = taRightJustify
        Caption = 'Hari. Tgl Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 346
        Top = 179
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'CJthTempo'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 10
        Top = 131
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valuta :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 295
        Top = 697
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LCurrName'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label22: TLabel
        Left = 1298
        Top = 435
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Request By :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 1503
        Top = 433
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'SalesName'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 1298
        Top = 339
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Peminjaman :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 387
        Top = 827
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'PPH23'
        DataSource = dsTotal
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 1053
        Top = 470
        Width = 78
        Height = 15
        Alignment = taRightJustify
        Caption = 'Rek Discount :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText12: TDBText
        Left = 1219
        Top = 472
        Width = 51
        Height = 15
        AutoSize = True
        DataField = 'LRekDisc'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label35: TLabel
        Left = 215
        Top = 131
        Width = 35
        Height = 17
        Alignment = taRightJustify
        Caption = 'Rate :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 1051
        Top = 138
        Width = 60
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'LFgTerm'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label36: TLabel
        Left = 162
        Top = 651
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PO Pelanggan :'
        Color = 14467152
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label38: TLabel
        Left = 977
        Top = 712
        Width = 170
        Height = 23
        Caption = 'PERFORMA INVOICE'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Shape8: TShape
        Left = 975
        Top = 600
        Width = 320
        Height = 33
        Brush.Color = 14467152
        Enabled = False
      end
      object Label39: TLabel
        Left = 983
        Top = 606
        Width = 41
        Height = 19
        Caption = 'Ongkir'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape9: TShape
        Left = 975
        Top = 632
        Width = 320
        Height = 33
        Brush.Color = 14467152
        Enabled = False
      end
      object Shape10: TShape
        Left = 975
        Top = 664
        Width = 320
        Height = 33
        Brush.Color = 14467152
        Enabled = False
      end
      object Label40: TLabel
        Left = 983
        Top = 638
        Width = 61
        Height = 19
        Caption = 'Repacking'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 983
        Top = 670
        Width = 78
        Height = 19
        Caption = 'Administrasi'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 1071
        Top = 606
        Width = 12
        Height = 20
        Caption = ' : '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 1071
        Top = 638
        Width = 12
        Height = 20
        Caption = ' : '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 1071
        Top = 670
        Width = 12
        Height = 20
        Caption = ' : '
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 124
        Top = 795
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ADMINISTRASI :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label47: TLabel
        Left = 124
        Top = 769
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'REPACKING :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText17: TDBText
        Left = 312
        Top = 827
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText19: TDBText
        Left = 312
        Top = 743
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText20: TDBText
        Left = 312
        Top = 769
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText21: TDBText
        Left = 312
        Top = 795
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label7: TLabel
        Left = 1066
        Top = 515
        Width = 65
        Height = 15
        Alignment = taRightJustify
        Caption = 'Rek Ongkir :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label9: TLabel
        Left = 1046
        Top = 538
        Width = 85
        Height = 15
        Alignment = taRightJustify
        Caption = 'Rek Repacking :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label13: TLabel
        Left = 1035
        Top = 560
        Width = 96
        Height = 15
        Alignment = taRightJustify
        Caption = 'Rek Administrasi :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText23: TDBText
        Left = 1219
        Top = 516
        Width = 51
        Height = 15
        AutoSize = True
        DataField = 'LOngkir'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBText24: TDBText
        Left = 1219
        Top = 539
        Width = 51
        Height = 15
        AutoSize = True
        DataField = 'LRepak'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBText25: TDBText
        Left = 1219
        Top = 562
        Width = 51
        Height = 15
        AutoSize = True
        DataField = 'LAdmin'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 1079
        Top = 428
        Width = 52
        Height = 15
        Alignment = taRightJustify
        Caption = 'Rek HPP :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText26: TDBText
        Left = 1219
        Top = 430
        Width = 51
        Height = 15
        AutoSize = True
        DataField = 'LRekHPP'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label15: TLabel
        Left = 1298
        Top = 363
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Company :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText27: TDBText
        Left = 1503
        Top = 361
        Width = 61
        Height = 17
        AutoSize = True
        DataField = 'LWarehouse'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 1298
        Top = 411
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Divisi :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 1503
        Top = 409
        Width = 61
        Height = 17
        AutoSize = True
        DataField = 'Ldivisi'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 10
        Top = 251
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText29: TDBText
        Left = 200
        Top = 249
        Width = 61
        Height = 17
        AutoSize = True
        DataField = 'LRekJual'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 10
        Top = 34
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Jenis Invoice :'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label27: TLabel
        Left = 10
        Top = 203
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Periode Charge :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 10
        Top = 227
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Faktur :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 249
        Top = 83
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Site :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText11: TDBText
        Left = 415
        Top = 81
        Width = 60
        Height = 17
        AutoSize = True
        DataField = 'LSites'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Shape12: TShape
        Left = 513
        Top = 546
        Width = 403
        Height = 27
        Brush.Color = 13676331
      end
      object Shape5: TShape
        Left = 513
        Top = 522
        Width = 403
        Height = 27
        Brush.Color = 13676331
      end
      object Shape6: TShape
        Left = 513
        Top = 496
        Width = 403
        Height = 27
        Brush.Color = 13676331
      end
      object Label10: TLabel
        Left = 515
        Top = 500
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SUBTOTAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 779
        Top = 500
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'SubTotal'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 779
        Top = 551
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 779
        Top = 526
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'PPN'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 516
        Top = 551
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GRAND TOTAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText16: TDBText
        Left = 704
        Top = 500
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'LCurr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText18: TDBText
        Left = 704
        Top = 526
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'LCurr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText22: TDBText
        Left = 704
        Top = 551
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'LCurr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape13: TShape
        Left = 513
        Top = 596
        Width = 403
        Height = 27
        Brush.Color = 13676331
      end
      object Shape14: TShape
        Left = 513
        Top = 572
        Width = 403
        Height = 27
        Brush.Color = 13676331
      end
      object DBText30: TDBText
        Left = 780
        Top = 601
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'Nilai'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 516
        Top = 576
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh         %                :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText31: TDBText
        Left = 780
        Top = 576
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'PPH23'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 516
        Top = 601
        Width = 185
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NILAI YANG DITERIMA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText32: TDBText
        Left = 705
        Top = 576
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'LCurr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText33: TDBText
        Left = 705
        Top = 601
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'LCurr'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 10
        Top = 59
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'No Kontrak :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 682
        Top = 76
        Width = 116
        Height = 31
        AutoSize = True
        DataField = 'LFgOto'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 515
        Top = 526
        Width = 190
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPN                                :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 672
        Top = 527
        Width = 20
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RbCetak: TRadioGroup
        Left = 1062
        Top = 207
        Width = 211
        Height = 87
        Caption = '[ CETAK ]'
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Invoice'
          'Surat Jalan')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object RbHarga: TRadioGroup
        Left = 1054
        Top = 311
        Width = 113
        Height = 86
        Caption = '[ HARGA ]'
        Ctl3D = False
        Enabled = False
        ItemIndex = 0
        Items.Strings = (
          'Satuan'
          'Gabungan')
        ParentCtl3D = False
        TabOrder = 21
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 272
        Width = 921
        Height = 223
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Invoice '
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
        TabOrder = 13
        OnEnter = dxDBGrid1Enter
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
        object dxDBGrid1Column13: TdxDBGridButtonColumn
          Caption = 'No Unit'
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NoUnit'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1Column13ButtonClick
        end
        object dxDBGrid1Column14: TdxDBGridColumn
          Caption = 'Description No Unit'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ltypeunit'
        end
        object dxDBGrid1ItemID: TdxDBGridButtonColumn
          Caption = 'Part Number'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Visible = False
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBGrid1ItemIDButtonClick
        end
        object dxDBGrid1ItemName: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 175
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemName'
        end
        object dxDBGrid1Konsinyasi: TdxDBGridButtonColumn
          Caption = 'Nota Konsinyasi'
          Visible = False
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonTransBrgId'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1KonsinyasiButtonClick
        end
        object dxDBGrid1Qty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dxDBGrid1UOMID: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Satuan'
          MinWidth = 16
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
          Descriptions.Strings = (
            'HM'
            'Day'
            'Month'
            'Year'
            'KG'
            'TON'
            'Retase'
            'Meter'
            'Liter'
            'Unit'
            'Hour'
            'Kamar'
            'Others')
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
          ShowDescription = True
          Values.Strings = (
            'HM'
            'Day'
            'Month'
            'Year'
            'KG'
            'TON'
            'Retase'
            'Meter'
            'Liter'
            'Unit'
            'Hour'
            'Kamar'
            'Others')
        end
        object dxDBGrid1Column12: TdxDBGridColumn
          Caption = 'Bonus'
          Visible = False
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DiscItem'
        end
        object dxDBGrid1UserPrice: TdxDBGridColumn
          Caption = 'Harga'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dxDBGrid1LUserPrice: TdxDBGridColumn
          Caption = 'Price List'
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LUserPrice'
        end
        object dxDBGrid1UpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGrid1UpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dxDBGrid1FgTax: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Tax'
          MinWidth = 16
          Visible = False
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH23'
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
        object dxDBGrid1ValueTotal: TdxDBGridColumn
          Caption = 'Total'
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
        end
        object dxDBGrid1Column15: TdxDBGridColumn
          Caption = 'Total IDR'
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATotal'
        end
        object dxDBGrid1Column16: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Jasa'
          MinWidth = 16
          Visible = False
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgJasa'
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
        object dxDBGrid1Column17: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'PPh'
          MinWidth = 16
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH23'
          Descriptions.Strings = (
            '2%'
            '3%'
            '4%'
            '5%'
            '6%'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ShowDescription = True
          Values.Strings = (
            'Y'
            'A'
            'B'
            'C'
            'D'
            'T')
        end
      end
      object bbSave: TdxButton
        Left = 704
        Top = 237
        Width = 101
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        TabOrder = 11
      end
      object bbCancel: TdxButton
        Left = 806
        Top = 237
        Width = 101
        Height = 33
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActCancel
        Caption = 'Batal (Esc)'
        TabOrder = 12
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 272
        Top = 496
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
        TabOrder = 17
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 182
        Top = 496
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
        TabOrder = 16
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 92
        Top = 496
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
        TabOrder = 15
        TabStop = False
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 2
        Top = 496
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
        TabOrder = 14
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 672
        Top = 6
        Width = 236
        Height = 59
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        object Label8: TLabel
          Left = 23
          Top = 12
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
          Top = 13
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
          Left = 15
          Top = 33
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
          Left = 68
          Top = 34
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
      object dxButton4: TdxButton
        Tag = 4444
        Left = 1243
        Top = 742
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Ubah No'
        TabOrder = 23
        TabStop = False
      end
      object dxButton5: TdxButton
        Left = 1056
        Top = 774
        Width = 90
        Hint = 'Cancel Changes'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Multi'
        TabOrder = 24
        TabStop = False
      end
      object dxButton2: TdxButton
        Left = 1061
        Top = 742
        Width = 90
        Hint = 'Cancel Changes'
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Amplop'
        TabOrder = 25
        TabStop = False
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 1134
        Top = 469
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningD'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit6ButtonClick
        ExistButtons = True
      end
      object dxButton3: TdxButton
        Left = 1235
        Top = 774
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        Caption = 'Jurnal'
        TabOrder = 27
      end
      object txtKonInvPelID: TdxDBEdit
        Left = 119
        Top = 5
        Width = 202
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'KonInvPelID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 119
        Top = 77
        Width = 119
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 1407
        Top = 333
        Width = 144
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'SOID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object txtPelangganID: TdxDBButtonEdit
        Left = 119
        Top = 101
        Width = 90
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'CustID'
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
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 1407
        Top = 429
        Width = 90
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'SalesID'
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
        Left = 119
        Top = 125
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'CurrID'
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
      object dxDBMaskEdit1: TdxDBMaskEdit
        Left = 252
        Top = 125
        Width = 98
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Rate'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 119
        Top = 149
        Width = 498
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object txtJatuhTempo: TdxDBMaskEdit
        Left = 119
        Top = 173
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBSpinEdit1: TdxDBSpinEdit
        Left = 242
        Top = 823
        Width = 61
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
        DataField = 'Discount'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 112
      end
      object dxDBSpinEdit2: TdxDBSpinEdit
        Left = 1172
        Top = 315
        Width = 40
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
        Visible = False
        Alignment = taCenter
        DataField = 'LuPajak'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 113
      end
      object dxDBEdit1: TdxDBEdit
        Left = 271
        Top = 645
        Width = 258
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 32
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'POCust'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        StoredValues = 64
      end
      object RgCetak: TRadioGroup
        Left = 1408
        Top = 470
        Width = 100
        Height = 83
        Caption = '[ Cetak ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'PPN'
          'Include PPN')
        ParentFont = False
        TabOrder = 33
      end
      object dxDBEdit6: TdxDBEdit
        Left = 387
        Top = 739
        Width = 135
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 34
        Visible = False
        CharCase = ecUpperCase
        DataField = 'Ongkir'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 387
        Top = 765
        Width = 135
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 35
        Visible = False
        CharCase = ecUpperCase
        DataField = 'Repack'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit8: TdxDBEdit
        Left = 387
        Top = 791
        Width = 135
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 36
        Visible = False
        CharCase = ecUpperCase
        DataField = 'Administrasi'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object CheckBox1: TCheckBox
        Left = 1320
        Top = 648
        Width = 97
        Height = 17
        Caption = 'PPN'
        Enabled = False
        TabOrder = 37
        Visible = False
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 1320
        Top = 670
        Width = 97
        Height = 17
        Caption = 'Non PPN'
        Enabled = False
        TabOrder = 38
        Visible = False
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 1320
        Top = 624
        Width = 97
        Height = 17
        Caption = 'Normal'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 39
        Visible = False
        OnClick = CheckBox3Click
      end
      object dxButton6: TdxButton
        Tag = 4444
        Left = 362
        Top = 496
        Width = 150
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
        Caption = 'Jurnal'
        TabOrder = 18
        TabStop = False
      end
      object dxDBButtonEdit8: TdxDBButtonEdit
        Left = 1134
        Top = 513
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 40
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningO'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit8ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit9: TdxDBButtonEdit
        Left = 1134
        Top = 535
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 41
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningR'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit9ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit10: TdxDBButtonEdit
        Left = 1134
        Top = 557
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 42
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningA'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit10ButtonClick
        ExistButtons = True
      end
      object dxButton1: TdxButton
        Left = 362
        Top = 525
        Width = 150
        Height = 36
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActPrint
        TabOrder = 19
      end
      object dxDBButtonEdit11: TdxDBButtonEdit
        Left = 1134
        Top = 425
        Width = 80
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 43
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningHPP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit11ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit12: TdxDBButtonEdit
        Left = 1407
        Top = 357
        Width = 90
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 44
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'WarehouseID'
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
      object dxDBButtonEdit13: TdxDBButtonEdit
        Left = 1407
        Top = 405
        Width = 90
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 45
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'DivisiID'
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
      object RadioGroup1: TRadioGroup
        Left = 222
        Top = 570
        Width = 283
        Height = 50
        Caption = '[ CETAK ]'
        Columns = 3
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Auto'
          'Invoice + Kop'
          'Invoice')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 46
      end
      object dxDBButtonEdit14: TdxDBButtonEdit
        Left = 119
        Top = 245
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekJual'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit14ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 743
        Top = 781
        Width = 162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 47
        Visible = False
        DataField = 'FgPerforma'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        Descriptions.Strings = (
          'RENTAL'
          'HAULING'
          'TAMBANG'
          'KONSUMSI'
          'OVERTIME'
          'SOLAR'
          'MESS')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        Values.Strings = (
          'R'
          'H'
          'T'
          'A'
          'O'
          'S'
          'M')
        StoredValues = 64
      end
      object dxDBEdit4: TdxDBEdit
        Left = 119
        Top = 197
        Width = 498
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'PeriodeCharge'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit5: TdxDBEdit
        Left = 119
        Top = 221
        Width = 498
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'FPS'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object RadioGroup2: TRadioGroup
        Left = 6
        Top = 570
        Width = 187
        Height = 50
        Caption = '[ TTD : hanya untuk non ppn ]'
        Columns = 2
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 1
        Items.Strings = (
          'Tampilkan'
          'Kosong')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 48
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 335
        Top = -2
        Width = 209
        Height = 55
        Columns = 2
        Ctl3D = False
        DataField = 'FgDN'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Invoice'
          'Debit Note')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 49
        Values.Strings = (
          'T'
          'Y')
      end
      object dxDBButtonEdit15: TdxDBButtonEdit
        Left = 334
        Top = 77
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 50
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'SiteID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit15ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit16: TdxDBButtonEdit
        Left = 119
        Top = 29
        Width = 146
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Lperforma'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit16ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 639
        Top = 573
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 51
        DataField = 'FgPPH23'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        Descriptions.Strings = (
          'Ya'
          'Tidak')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'Y'
          'T')
        StoredValues = 64
      end
      object dxDBMaskEdit2: TdxDBMaskEdit
        Left = 586
        Top = 573
        Width = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 52
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'NilaiPPh'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBPajak: TdxDBImageEdit
        Left = 574
        Top = 523
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 53
        DataField = 'FgTax'
        DataSource = dsMain
        ReadOnly = False
        StyleController = SCEdit
        Descriptions.Strings = (
          'Ya'
          'Tidak')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'Y'
          'T')
        StoredValues = 64
      end
      object dxDBEdit9: TdxDBEdit
        Left = 634
        Top = 523
        Width = 42
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 54
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'NilaiTax'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1116
    inherited sbLast: TSpeedButton
      Left = 1088
    end
    inherited sbNext: TSpeedButton
      Left = 1065
    end
    inherited sbPrev: TSpeedButton
      Left = 1042
    end
    inherited sbFirst: TSpeedButton
      Left = 1019
    end
    inherited sbPeriod: TSpeedButton
      Left = 991
      Top = 8
      Height = 20
    end
    inherited BvlPeriod: TBevel
      Left = 745
    end
    inherited laPeriod: TLabel
      Left = 749
    end
  end
  object dxDBButtonEdit17: TdxDBButtonEdit [9]
    Left = 312
    Top = 113
    Width = 146
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = txtKonInvPelIDKeyPress
    DataField = 'SaleID'
    DataSource = dsMain
    ReadOnly = True
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit17ButtonClick
    StoredValues = 64
    ExistButtons = True
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelHd'
      '')
    object quMainKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      OnChange = quMainCustIDChange
      Size = 50
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
      Size = 50
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainSalesName: TStringField
      FieldKind = fkLookup
      FieldName = 'SalesName'
      LookupDataSet = quSales
      LookupKeyFields = 'SalesID'
      LookupResultField = 'SalesName'
      KeyFields = 'SalesID'
      Size = 50
      Lookup = True
    end
    object quMainCJthTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CJthTempo'
      Calculated = True
    end
    object quMainDiscount: TBCDField
      FieldName = 'Discount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      OnChange = quMainCurrIDChange
      FixedChar = True
      Size = 3
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainCustName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustName'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrID'
      Size = 50
      Lookup = True
    end
    object quMainTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      Precision = 18
      Size = 0
    end
    object quMainSTKJ: TBCDField
      FieldName = 'STKJ'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainSOID: TStringField
      FieldName = 'SOID'
      OnChange = quMainSOIDChange
      Size = 50
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
    end
    object quMainRekeningP: TStringField
      FieldName = 'RekeningP'
    end
    object quMainRekeningU: TStringField
      FieldName = 'RekeningU'
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
    end
    object quMainFgInvoice: TStringField
      FieldName = 'FgInvoice'
      Size = 1
    end
    object quMainFgTerm: TBCDField
      FieldName = 'FgTerm'
      Precision = 18
    end
    object quMainBankID: TStringField
      FieldName = 'BankID'
    end
    object quMainLRekPenjualan: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPenjualan'
      Size = 200
      Calculated = True
    end
    object quMainLRekPPN: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPPN'
      Size = 200
      Calculated = True
    end
    object quMainLRekDisc: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekDisc'
      Size = 200
      Calculated = True
    end
    object quMainLRekPiutangDagang: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPiutangDagang'
      Size = 200
      Calculated = True
    end
    object quMainLFgTerm: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFgTerm'
      Size = 200
      Calculated = True
    end
    object quMainLuPajak: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuPajak'
      Size = 3
      Calculated = True
    end
    object quMainPOCust: TStringField
      FieldKind = fkCalculated
      FieldName = 'POCust'
      Size = 200
      Calculated = True
    end
    object quMainOngkir: TBCDField
      FieldName = 'Ongkir'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainRePack: TBCDField
      FieldName = 'RePack'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainAdministrasi: TBCDField
      FieldName = 'Administrasi'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainRekeningA: TStringField
      FieldName = 'RekeningA'
    end
    object quMainRekeningO: TStringField
      FieldName = 'RekeningO'
    end
    object quMainRekeningR: TStringField
      FieldName = 'RekeningR'
    end
    object quMainLOngkir: TStringField
      FieldKind = fkCalculated
      FieldName = 'LOngkir'
      Size = 50
      Calculated = True
    end
    object quMainLAdmin: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAdmin'
      Size = 50
      Calculated = True
    end
    object quMainLRepak: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRepak'
      Size = 50
      Calculated = True
    end
    object quMainModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
    object quMainRekeningHPP: TStringField
      FieldName = 'RekeningHPP'
    end
    object quMainRekeningPsd: TStringField
      FieldName = 'RekeningPsd'
    end
    object quMainLRekHPP: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekHPP'
      Size = 200
      Calculated = True
    end
    object quMainWarehouseID: TStringField
      FieldName = 'WarehouseID'
      Size = 50
    end
    object quMainDivisiID: TStringField
      FieldName = 'DivisiID'
      Size = 50
    end
    object quMainLWarehouse: TStringField
      FieldKind = fkCalculated
      FieldName = 'LWarehouse'
      Size = 100
      Calculated = True
    end
    object quMainLdivisi: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ldivisi'
      Size = 100
      Calculated = True
    end
    object quMainFgPPH23: TStringField
      FieldName = 'FgPPH23'
      Size = 10
    end
    object quMainRekJual: TStringField
      FieldName = 'RekJual'
      Size = 10
    end
    object quMainLRekJual: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekJual'
      Size = 100
      Calculated = True
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainLCurr: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCurr'
      Size = 50
      Calculated = True
    end
    object quMainLperforma: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lperforma'
      Size = 100
      Calculated = True
    end
    object quMainFgPerforma: TStringField
      FieldName = 'FgPerforma'
      OnChange = quMainFgPerformaChange
      Size = 10
    end
    object quMainPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
    end
    object quMainNoKontrak: TStringField
      FieldName = 'NoKontrak'
      Size = 100
    end
    object quMainFPS: TStringField
      FieldName = 'FPS'
      Size = 100
    end
    object quMainPeriodeCharge: TStringField
      FieldName = 'PeriodeCharge'
      Size = 100
    end
    object quMainFgDN: TStringField
      FieldName = 'FgDN'
      Size = 10
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainLSites: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSites'
      Size = 100
      Calculated = True
    end
    object quMainNilaiPPh: TBCDField
      FieldName = 'NilaiPPh'
      Precision = 18
    end
    object quMainSaleID: TStringField
      FieldName = 'SaleID'
      Size = 50
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 1
    end
    object quMainLFgOto: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFgOto'
      Size = 50
      Calculated = True
    end
    object quMainNilaiTax: TBCDField
      FieldName = 'NilaiTax'
      Precision = 18
    end
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = dxButton1Click
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonInvPelID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelDt'
      'WHERE KonInvPelID=:KonInvPelID'
      'ORDER BY NoUnit,ItemName')
    Left = 328
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object quDetilLItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilKonInvPelID: TStringField
      FieldName = 'KonInvPelID'
      Size = 50
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      OnChange = quDetilPriceChange
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilKonTransBrgId: TStringField
      FieldName = 'KonTransBrgId'
      Size = 50
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quDetilKomisi: TBCDField
      FieldName = 'Komisi'
      Precision = 18
    end
    object quDetilLKomisi: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LKomisi'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'Komisi'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object quDetilLUserPrice: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LUserPrice'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'UserPrice'
      KeyFields = 'ItemID'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Lookup = True
    end
    object quDetilFgTax: TStringField
      FieldName = 'FgTax'
      OnChange = quDetilFgTaxChange
      FixedChar = True
      Size = 1
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      Size = 50
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilDiscItem: TBCDField
      FieldName = 'DiscItem'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilLtypeunit: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ltypeunit'
      Size = 100
      Calculated = True
    end
    object quDetilFgPPH23: TStringField
      FieldName = 'FgPPH23'
      Size = 10
    end
    object quDetilLNoUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNoUnit'
      Size = 100
      Calculated = True
    end
    object quDetilATotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ATotal'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilFgJasa: TStringField
      FieldName = 'FgJasa'
      Size = 10
    end
    object quDetilModal: TBCDField
      FieldName = 'Modal'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
    Left = 360
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 596
    Top = 60
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsSales ORDER BY SalesName')
    Left = 624
    Top = 60
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from INMsItem')
    Left = 740
    Top = 40
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 766
    Top = 40
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'KonInvPelID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select ROUND(K.Total,0) as SubTotal,'
      
        'ROUND((CASE WHEN K.FgTax='#39'Y'#39' THEN ROUND(K.Total,0)*(K.NilaiTax/1' +
        '00) ELSE 0 END),0) as PPN, '
      
        'ROUND(K.Total,0)+ROUND((CASE WHEN K.FgTax='#39'Y'#39' THEN ROUND(K.Total' +
        ',0)*(K.NilaiTax/100) ELSE 0 END),0) as Total,'
      'ROUND(CASE WHEN K.FgPPH23='#39'Y'#39' THEN K.PPH ELSE 0 END,0) as PPH23,'
      
        'ROUND(K.Total,0)+ROUND((CASE WHEN K.FgTax='#39'Y'#39' THEN ROUND(K.Total' +
        ',0)*(K.NilaiTax/100) ELSE 0 END),0)-'
      
        'ROUND(CASE WHEN K.FgPPH23='#39'Y'#39' THEN K.PPH ELSE 0 END,0) as Nilai,' +
        '0 as Modal'
      'FROM ('
      'select A.KonInvPelID,B.FgTax,B.FgPPH23,'
      'ISNULL(SUM(A.Qty*A.Price*B.Rate),0) as Total,'
      
        'ISNULL(SUM(CASE WHEN A.FgPPH23='#39'Y'#39' THEN A.Qty*A.Price*B.Rate*B.N' +
        'ilaiPPh/100 '
      'WHEN A.FgPPH23='#39'A'#39' THEN A.Qty*A.Price*B.Rate*3/100 '
      'WHEN A.FgPPH23='#39'B'#39' THEN A.Qty*A.Price*B.Rate*4/100'
      'WHEN A.FgPPH23='#39'C'#39' THEN A.Qty*A.Price*B.Rate*5/100'
      
        'WHEN A.FgPPH23='#39'D'#39' THEN A.Qty*A.Price*B.Rate*6/100 ELSE 0 END),0' +
        ') as PPH,B.NilaiTax'
      'from ARTrKonInvPelDt A '
      'inner join ARTrKonInvPelHd B on A.KonInvPelID=B.KonInvPelID'
      'group by A.KonInvPelID,B.FgTax,B.FgPPH23,B.NilaiTax ) as K'
      'WHERE K.KonInvPelID=:KonInvPelID'
      '')
    Left = 712
    Top = 373
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalPPN: TBCDField
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 7
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 7
    end
    object quTotalPPH23: TBCDField
      FieldName = 'PPH23'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 7
    end
    object quTotalNilai: TBCDField
      FieldName = 'Nilai'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 7
    end
    object quTotalModal: TIntegerField
      FieldName = 'Modal'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 740
    Top = 373
  end
  object quValuta: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SAMSValuta')
    Left = 792
    Top = 40
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 628
    Top = 92
  end
  object quCetak: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 52
  end
end
