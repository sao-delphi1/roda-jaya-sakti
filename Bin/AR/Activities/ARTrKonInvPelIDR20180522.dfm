inherited fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR
  Left = 314
  Top = 358
  Caption = 'Invoice Penjualan'
  ClientHeight = 610
  ClientWidth = 1096
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 561
    inherited pa3: TdxContainer
      Height = 382
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
    Top = 598
    Width = 1096
  end
  inherited pa2: TdxContainer
    Height = 561
  end
  inherited pcMain: TdxPageControl
    Width = 903
    Height = 561
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 903
        Height = 538
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
      object Label1: TLabel
        Left = 19
        Top = 21
        Width = 51
        Height = 20
        Alignment = taRightJustify
        Caption = 'Invoice'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 19
        Top = 51
        Width = 54
        Height = 20
        Alignment = taRightJustify
        Caption = 'Tanggal'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 19
        Top = 111
        Width = 68
        Height = 20
        Alignment = taRightJustify
        Caption = 'Pelanggan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 201
        Width = 79
        Height = 20
        Alignment = taRightJustify
        Caption = 'Keterangan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 19
        Top = 231
        Width = 90
        Height = 20
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 304
        Top = 109
        Width = 63
        Height = 20
        AutoSize = True
        DataField = 'CustName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 604
        Top = 434
        Width = 288
        Height = 33
        Brush.Color = 15259016
      end
      object Shape4: TShape
        Left = 604
        Top = 498
        Width = 288
        Height = 33
        Brush.Color = 15259016
      end
      object Shape6: TShape
        Left = 604
        Top = 402
        Width = 288
        Height = 33
        Brush.Color = 15259016
      end
      object Label10: TLabel
        Left = 609
        Top = 409
        Width = 68
        Height = 20
        Caption = 'Sub Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 609
        Top = 441
        Width = 58
        Height = 20
        Caption = 'Disc (%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 757
        Top = 407
        Width = 130
        Height = 23
        Alignment = taRightJustify
        DataField = 'SubTotal'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 749
        Top = 409
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 749
        Top = 441
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 609
        Top = 505
        Width = 83
        Height = 20
        Caption = 'Grand Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 749
        Top = 505
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 757
        Top = 503
        Width = 130
        Height = 23
        Alignment = taRightJustify
        DataField = 'GT'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 250
        Top = 231
        Width = 162
        Height = 20
        Alignment = taRightJustify
        Caption = 'Hari. Tgl Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 416
        Top = 229
        Width = 63
        Height = 20
        AutoSize = True
        DataField = 'CJthTempo'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 19
        Top = 171
        Width = 45
        Height = 20
        Alignment = taRightJustify
        Caption = 'Valuta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 304
        Top = 169
        Width = 63
        Height = 20
        AutoSize = True
        DataField = 'LCurrName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 19
        Top = 141
        Width = 37
        Height = 20
        Alignment = taRightJustify
        Caption = 'Sales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 305
        Top = 139
        Width = 63
        Height = 20
        AutoSize = True
        DataField = 'SalesName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 19
        Top = 81
        Width = 47
        Height = 20
        Alignment = taRightJustify
        Caption = 'No DO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 119
        Top = 21
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 119
        Top = 51
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 119
        Top = 111
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 119
        Top = 201
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 119
        Top = 231
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 119
        Top = 171
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 119
        Top = 141
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 119
        Top = 81
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 604
        Top = 466
        Width = 288
        Height = 33
        Brush.Color = 15259016
      end
      object Label26: TLabel
        Left = 609
        Top = 473
        Width = 60
        Height = 20
        Caption = 'PPN 10%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 749
        Top = 473
        Width = 6
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 757
        Top = 471
        Width = 130
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPN'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText10: TDBText
        Left = 757
        Top = 439
        Width = 130
        Height = 23
        Alignment = taRightJustify
        DataField = 'Discount'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 464
        Top = 561
        Width = 98
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek Penjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 464
        Top = 581
        Width = 129
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek PPN Keluaran'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 463
        Top = 622
        Width = 148
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek Piutang Dagang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 606
        Top = 581
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 606
        Top = 561
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 464
        Top = 601
        Width = 132
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek Disc Penjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 606
        Top = 601
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText12: TDBText
        Left = 715
        Top = 601
        Width = 69
        Height = 19
        AutoSize = True
        DataField = 'LRekDisc'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 700
        Top = 581
        Width = 68
        Height = 19
        AutoSize = True
        DataField = 'LRekPPN'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 700
        Top = 561
        Width = 69
        Height = 19
        AutoSize = True
        DataField = 'LRekPenjualan'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 715
        Top = 621
        Width = 69
        Height = 19
        AutoSize = True
        DataField = 'LRekPiutangDagang'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 570
        Top = 231
        Width = 40
        Height = 20
        Alignment = taRightJustify
        Caption = 'Rate :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBText15: TDBText
        Left = 712
        Top = 229
        Width = 79
        Height = 23
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'LFgTerm'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label36: TLabel
        Left = 340
        Top = 81
        Width = 55
        Height = 20
        Alignment = taRightJustify
        Caption = 'PO Cust'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label37: TLabel
        Left = 399
        Top = 81
        Width = 5
        Height = 19
        Alignment = taRightJustify
        Caption = ':'
        Color = 14467152
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 433
        Top = 24
        Width = 170
        Height = 23
        Caption = 'PERFORMA INVOICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RbCetak: TRadioGroup
        Left = 1054
        Top = 223
        Width = 112
        Height = 87
        Caption = '[ CETAK ]'
        Ctl3D = False
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
        TabOrder = 0
      end
      object dxButton1: TdxButton
        Left = 374
        Top = 402
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActPrint
        TabOrder = 1
      end
      object RbHarga: TRadioGroup
        Left = 1054
        Top = 311
        Width = 113
        Height = 86
        Caption = '[ HARGA ]'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Satuan'
          'Gabungan')
        ParentCtl3D = False
        TabOrder = 2
      end
      object dxDBGrid1: TdxDBGrid
        Left = 5
        Top = 258
        Width = 890
        Height = 139
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Invoice Penjualan'
            Width = 837
          end>
        DefaultLayout = True
        KeyField = 'KonInvPelDetID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = dxDBGrid1Enter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -16
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -16
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = []
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
        object dxDBGrid1ItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 134
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
          Caption = 'Nama Barang'
          Width = 243
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dxDBGrid1Konsinyasi: TdxDBGridButtonColumn
          Caption = 'Nota Konsinyasi'
          Visible = False
          Width = 122
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
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dxDBGrid1UOMID: TdxDBGridButtonColumn
          Caption = 'Satuan'
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UOMID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGrid1UOMIDButtonClick
        end
        object dxDBGrid1UserPrice: TdxDBGridColumn
          Caption = 'Harga'
          Width = 135
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dxDBGrid1LUserPrice: TdxDBGridColumn
          Caption = 'Price List'
          Visible = False
          Width = 98
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LUserPrice'
        end
        object dxDBGrid1UpdDate: TdxDBGridDateColumn
          Visible = False
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dxDBGrid1UpdUser: TdxDBGridMaskColumn
          Visible = False
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dxDBGrid1FgTax: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Tax'
          MinWidth = 16
          Visible = False
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgTax'
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
          Width = 152
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
        end
      end
      object bbSave: TdxButton
        Left = 545
        Top = 153
        Width = 113
        Height = 38
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        TabOrder = 4
      end
      object bbCancel: TdxButton
        Left = 663
        Top = 153
        Width = 113
        Height = 38
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        Action = ActCancel
        Caption = 'Batal (Esc)'
        TabOrder = 5
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 278
        Top = 402
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 6
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 187
        Top = 402
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 7
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 96
        Top = 402
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 8
        TabStop = False
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 5
        Top = 402
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 9
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 632
        Top = 6
        Width = 249
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        object Label8: TLabel
          Left = 18
          Top = 8
          Width = 41
          Height = 20
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 68
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 5
          Top = 29
          Width = 55
          Height = 20
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 69
          Top = 30
          Width = 174
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 283
        Top = 566
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Ubah No'
        TabOrder = 11
        TabStop = False
      end
      object dxButton5: TdxButton
        Left = 96
        Top = 598
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
        OnClick = dxButton5Click
        Caption = 'Multi'
        TabOrder = 12
        TabStop = False
      end
      object dxButton2: TdxButton
        Left = 101
        Top = 566
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
        TabOrder = 13
        TabStop = False
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 614
        Top = 560
        Width = 80
        TabOrder = 14
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningK'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
      object dxDBButtonEdit5: TdxDBButtonEdit
        Left = 614
        Top = 580
        Width = 80
        TabOrder = 15
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
      object dxDBButtonEdit6: TdxDBButtonEdit
        Left = 614
        Top = 600
        Width = 80
        TabOrder = 16
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningD'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 614
        Top = 620
        Width = 80
        TabOrder = 17
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'RekeningU'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
      object dxButton3: TdxButton
        Left = 275
        Top = 598
        Width = 90
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        Caption = 'Jurnal'
        TabOrder = 18
      end
      object txtKonInvPelID: TdxDBEdit
        Left = 138
        Top = 15
        Width = 247
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'KonInvPelID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 138
        Top = 45
        Width = 135
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 138
        Top = 75
        Width = 190
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
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
        Left = 138
        Top = 105
        Width = 156
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
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
        Left = 138
        Top = 135
        Width = 156
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
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
        Left = 138
        Top = 165
        Width = 156
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
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
        Left = 625
        Top = 225
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
        Visible = False
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Rate'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 138
        Top = 195
        Width = 639
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object txtJatuhTempo: TdxDBMaskEdit
        Left = 138
        Top = 225
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        IgnoreMaskBlank = False
        StyleController = SCEdit
      end
      object dxDBSpinEdit1: TdxDBSpinEdit
        Left = 676
        Top = 435
        Width = 70
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
        DataField = 'Discount'
        DataSource = dsMain
        ReadOnly = True
        StyleController = SCEdit
        MaxValue = 100
        StoredValues = 112
      end
      object dxDBSpinEdit2: TdxDBSpinEdit
        Left = 972
        Top = 435
        Width = 40
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
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
        Left = 418
        Top = 75
        Width = 188
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
        OnKeyPress = txtKonInvPelIDKeyPress
        DataField = 'POCust'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBPajak: TdxDBImageEdit
        Left = 676
        Top = 467
        Width = 49
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 31
        AutoSize = False
        DataField = 'FgTax'
        DataSource = dsMain
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
        Height = 30
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1096
    inherited sbLast: TSpeedButton
      Left = 1068
    end
    inherited sbNext: TSpeedButton
      Left = 1045
    end
    inherited sbPrev: TSpeedButton
      Left = 1022
    end
    inherited sbFirst: TSpeedButton
      Left = 999
    end
    inherited sbPeriod: TSpeedButton
      Left = 971
      Top = 8
      Height = 20
    end
    inherited BvlPeriod: TBevel
      Left = 725
    end
    inherited laPeriod: TLabel
      Left = 729
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrKonInvPelHd ')
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
      EditFormat = '#,0.00'
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
    object quMainFgPerforma: TStringField
      FieldName = 'FgPerforma'
      FixedChar = True
      Size = 10
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
    DataSource = fmStdLv3.dsDetil
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
      'ORDER BY UpdDate')
    Left = 332
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
      EditFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
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
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer ORDER BY CustName')
    Left = 516
    Top = 100
  end
  object quSales: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsSales ORDER BY SalesName')
    Left = 544
    Top = 100
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from INMsItem')
    Left = 652
    Top = 160
  end
  object quLokasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select WareHouseID, WarehouseName from INMsWarehouse')
    Left = 678
    Top = 160
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
      'SELECT K.Koninvpelid, K.SubTotal,K.Discount,'
      'CASE WHEN K.FgTax='#39'T'#39' THEN 0 ELSE K.Total*0.1 END as PPN,'
      
        'CASE WHEN K.FgTax='#39'T'#39' THEN K.Total ELSE K.Total+(K.Total*0.1) EN' +
        'D as GT,'
      
        'CASE WHEN K.FgTax='#39'T'#39' THEN K.Total-K.DP ELSE K.Total+(K.Total*0.' +
        '1)-K.DP END as Total FROM ('
      
        'SELECT A.KonInvPelID,A.FgTax,CASE WHEN B.FgTax = '#39'Y'#39' THEN SUM(Qt' +
        'y*Price)*1.1 ELSE SUM(Qty*Price) END as SubTotal,'
      
        'CASE WHEN B.FgTax = '#39'Y'#39' THEN SUM(Qty*Price)*1.1*A.Discount*0.01 ' +
        'ELSE SUM(Qty*Price)*A.Discount*0.01 END as Discount,'
      
        'CASE WHEN B.FgTax = '#39'Y'#39' THEN SUM(Qty*Price)*1.1-SUM(Qty*Price)*1' +
        '.1*A.Discount*0.01 ELSE SUM(Qty*Price)-SUM(Qty*Price)*A.Discount' +
        '*0.01 END as Total,A.DP'
      
        'FROM ARTrKonInvPelhd A INNER JOIN ARTrKonInvPelDt B ON A.KonInvP' +
        'elId=B.KonInvPelId'
      'GROUP BY A.Discount,A.Dp,A.KonInvPelID,A.FgTax,B.FgTax) as K'
      'WHERE K.KonInvPelID=:KonInvPelID')
    Left = 728
    Top = 509
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
    object quTotalDiscount: TBCDField
      FieldName = 'Discount'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 0
    end
    object quTotalPPN: TBCDField
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 756
    Top = 509
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
    Left = 704
    Top = 160
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 212
  end
end
