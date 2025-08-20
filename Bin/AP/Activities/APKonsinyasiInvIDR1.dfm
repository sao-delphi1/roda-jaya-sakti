inherited fmAPKonsinyasiInvIDR: TfmAPKonsinyasiInvIDR
  Left = 232
  Top = 17
  Action = ActCancel
  Caption = 'INVOICE PEMBELIAN'
  ClientHeight = 581
  ClientWidth = 997
  OnClick = ActCancelExecute
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 532
    inherited pa3: TdxContainer
      Height = 353
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
  inherited pa2: TdxContainer [2]
    Height = 532
  end
  inherited pcMain: TdxPageControl [3]
    Width = 804
    Height = 532
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 800
        Height = 472
        Filter.Criteria = {00000000}
        object dbgListTransferID: TdxDBGridMaskColumn
          Caption = 'Nota Invoice  Konsinyasi'
          DisableEditor = True
          Width = 163
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KonsinyasiInvID'
        end
        object dbgListTransferDate: TdxDBGridDateColumn
          Caption = 'Tgl Nota'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustomerID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          DisableEditor = True
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListCustomerName: TdxDBGridLookupColumn
          Caption = 'Nama Pelanggan '
          DisableEditor = True
          Width = 237
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuCustName'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Shape3: TShape
        Left = 480
        Top = 414
        Width = 320
        Height = 30
        Brush.Color = 14467152
      end
      object Label1: TLabel
        Left = 14
        Top = 12
        Width = 73
        Height = 19
        Alignment = taRightJustify
        Caption = 'No Invoice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 14
        Top = 77
        Width = 53
        Height = 19
        Alignment = taRightJustify
        Caption = 'Tanggal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 14
        Top = 101
        Width = 55
        Height = 19
        Alignment = taRightJustify
        Caption = 'Supplier'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 244
        Top = 102
        Width = 69
        Height = 23
        AutoSize = True
        DataField = 'LSuppName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 162
        Width = 79
        Height = 19
        Alignment = taRightJustify
        Caption = 'Keterangan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 135
        Top = 132
        Width = 48
        Height = 23
        DataField = 'LCurrName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 134
        Width = 43
        Height = 19
        Alignment = taRightJustify
        Caption = 'Valuta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 488
        Top = 417
        Width = 79
        Height = 23
        Caption = 'Sub Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 592
        Top = 417
        Width = 200
        Height = 23
        Alignment = taRightJustify
        DataField = 'SubTotal'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 14
        Top = 194
        Width = 86
        Height = 19
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 199
        Top = 191
        Width = 21
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 193
        Top = 194
        Width = 121
        Height = 19
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 318
        Top = 192
        Width = 69
        Height = 23
        AutoSize = True
        DataField = 'TglJthTempo'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 14
        Top = 42
        Width = 68
        Height = 19
        Alignment = taRightJustify
        Caption = 'Nota BPB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText9: TDBText
        Left = 321
        Top = 42
        Width = 69
        Height = 23
        AutoSize = True
        DataField = 'LDOSupp'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 244
        Top = 134
        Width = 42
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rate :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 110
        Top = 12
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
      object Label11: TLabel
        Left = 110
        Top = 77
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
      object Label14: TLabel
        Left = 110
        Top = 101
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
        Left = 110
        Top = 162
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
      object Label16: TLabel
        Left = 110
        Top = 134
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
        Left = 110
        Top = 194
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
        Left = 110
        Top = 42
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
      object Shape4: TShape
        Left = 480
        Top = 443
        Width = 320
        Height = 30
        Brush.Color = 14467152
      end
      object Label13: TLabel
        Left = 488
        Top = 446
        Width = 38
        Height = 23
        Caption = 'PPN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 592
        Top = 446
        Width = 200
        Height = 23
        Alignment = taRightJustify
        DataField = 'Pajak'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 480
        Top = 472
        Width = 320
        Height = 30
        Brush.Color = 14467152
      end
      object Label19: TLabel
        Left = 488
        Top = 475
        Width = 43
        Height = 23
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 592
        Top = 475
        Width = 200
        Height = 23
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 575
        Top = 417
        Width = 17
        Height = 23
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 575
        Top = 446
        Width = 17
        Height = 23
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 575
        Top = 475
        Width = 17
        Height = 23
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 8
        Top = 449
        Width = 102
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek Pembelian'
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
        Left = 8
        Top = 469
        Width = 131
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek PPN Masukan'
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
        Left = 8
        Top = 489
        Width = 147
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rek Hutang Dagang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label29: TLabel
        Left = 150
        Top = 469
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
        Visible = False
      end
      object Label30: TLabel
        Left = 150
        Top = 449
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
        Visible = False
      end
      object DBText10: TDBText
        Left = 244
        Top = 449
        Width = 69
        Height = 19
        AutoSize = True
        DataField = 'LRekPemb'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBText11: TDBText
        Left = 244
        Top = 469
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
        Visible = False
      end
      object DBText12: TDBText
        Left = 259
        Top = 489
        Width = 69
        Height = 19
        AutoSize = True
        DataField = 'LRekHutDagang'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 674
        Top = 126
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 0
        TabStop = False
      end
      object dbg: TdxDBGrid
        Left = 3
        Top = 221
        Width = 797
        Height = 191
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detil Pembelian'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TransID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = dbgEnter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -19
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -16
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
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgItemIDButtonClick
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 291
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Harga Beli'
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgNota: TdxDBGridColumn
          Caption = 'Harga Jual'
          Visible = False
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LHargaJual'
        end
        object dbgDisc: TdxDBGridColumn
          Caption = 'Disc (%)'
          Visible = False
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Disc'
        end
        object dbgTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
          SummaryFooterType = cstSum
          SummaryFooterField = 'CTotal'
          SummaryFooterFormat = '0'
          SummaryType = cstSum
          SummaryFormat = '0'
        end
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 3
        Top = 416
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 2
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 94
        Top = 416
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 3
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 184
        Top = 416
        Width = 65
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 4
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 250
        Top = 416
        Width = 65
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 5
        TabStop = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 551
        Top = 126
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'SIMPAN (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 6
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 573
        Top = 6
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object Label21: TLabel
          Left = 18
          Top = 8
          Width = 41
          Height = 19
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
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
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 7
          Top = 29
          Width = 53
          Height = 19
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 69
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 129
        Top = 8
        Width = 189
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonsinyasiInvID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 129
        Top = 38
        Width = 189
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BPBID'
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
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 129
        Top = 68
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 129
        Top = 98
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
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
        Left = 129
        Top = 128
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnKeyPress = dxDBEdit1KeyPress
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
      object dxDBEdit4: TdxDBEdit
        Left = 293
        Top = 128
        Width = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Rate'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 129
        Top = 158
        Width = 650
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit3: TdxDBEdit
        Left = 129
        Top = 188
        Width = 50
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton1: TdxButton
        Tag = 4444
        Left = 316
        Top = 416
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'Cetak (F9)'
        TabOrder = 16
        TabStop = False
      end
      object dxDBButtonEdit4: TdxDBButtonEdit
        Left = 160
        Top = 448
        Width = 80
        TabOrder = 17
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
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
        Left = 160
        Top = 468
        Width = 80
        TabOrder = 18
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
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
        Left = 160
        Top = 488
        Width = 80
        TabOrder = 19
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningU'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
      object dxButton2: TdxButton
        Tag = 4444
        Left = 411
        Top = 416
        Width = 65
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        Caption = 'Jurnal'
        TabOrder = 20
        TabStop = False
      end
    end
  end
  inherited paBottom: TdxContainer [4]
    Top = 569
    Width = 997
  end
  inherited paToolBar: TdxContainer
    Width = 997
    inherited sbLast: TSpeedButton
      Left = 969
    end
    inherited sbNext: TSpeedButton
      Left = 946
    end
    inherited sbPrev: TSpeedButton
      Left = 923
    end
    inherited sbFirst: TSpeedButton
      Left = 900
    end
    inherited sbPeriod: TSpeedButton
      Left = 872
    end
    inherited BvlPeriod: TBevel
      Left = 626
    end
    inherited laPeriod: TLabel
      Left = 630
    end
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiInvHd')
    Left = 224
    object quMainKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      OnChange = quMainCurrIDChange
      FixedChar = True
      Size = 3
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
    object quMainTTLKS: TBCDField
      FieldName = 'TTLKS'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##.00'
      Precision = 18
      Size = 0
    end
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainTglJthTempo: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'TglJthTempo'
      Calculated = True
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quMainLSuppName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSuppName'
      LookupDataSet = quSupplier
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Size = 100
      Lookup = True
    end
    object quMainBPBID: TStringField
      FieldName = 'BPBID'
      OnChange = quMainBPBIDChange
    end
    object quMainLDOSupp: TStringField
      FieldKind = fkCalculated
      FieldName = 'LDOSupp'
      Size = 200
      Calculated = True
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
    end
    object quMainTBobot: TBCDField
      FieldName = 'TBobot'
      Precision = 18
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      Precision = 18
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      Precision = 18
    end
    object quMainPayment: TBCDField
      FieldName = 'Payment'
      Precision = 18
    end
    object quMainPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
    end
    object quMainFgForm: TStringField
      FieldName = 'FgForm'
      Size = 1
    end
    object quMainTaxID: TStringField
      FieldName = 'TaxID'
      Size = 50
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
    object quMainLRekPemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPemb'
      Size = 200
      Calculated = True
    end
    object quMainLRekPPN: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekPPN'
      Size = 200
      Calculated = True
    end
    object quMainLRekHutDagang: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekHutDagang'
      Size = 200
      Calculated = True
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
    CursorType = ctStatic
    BeforeInsert = quMainBeforeEdit
    BeforeEdit = quMainBeforeEdit
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'KonsinyasiInvID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '1231'
      end
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'ACG-JKT'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiInvDt'
      'WHERE KonsinyasiInvID=:KonsinyasiInvID AND SuppID=:SuppID'
      'ORDER BY ItemID')
    object quDetilKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 18
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilLuItemName: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'LuItemName'
      LookupDataSet = quItem
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 100
      Lookup = True
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object quDetilDisc: TFloatField
      FieldName = 'Disc'
    end
    object quDetilSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quDetilLHargaJual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LHargaJual'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by ItemID')
    Left = 204
    Top = 360
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 564
    Top = 104
  end
  object quKonsinyasi: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <
      item
        Name = 'customerID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  KonsinyasiID  from APTrKonsinyasiHd where customerID = :' +
        'customerID order by KonsinyasiID')
    Left = 232
    Top = 360
  end
  object quKonsinyasiDt: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from APTrKonsinyasiDt')
    Left = 260
    Top = 360
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 696
    Top = 400
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'KonsinyasiInvID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SuppID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT K.Qty,round(K.Jumlah,0) as SubTotal,'
      
        'round(CASE WHEN K.FgTax='#39'Y'#39' THEN K.Jumlah*0.1 ELSE 0 END,0) as P' +
        'ajak,'
      
        'round(CASE WHEN K.FgTax='#39'Y'#39' THEN K.Jumlah+K.Jumlah*0.1 ELSE K.Ju' +
        'mlah END,0) as Total '
      ' FROM ('
      'SELECT SUM(Price*Qty) as Jumlah,SUM(Qty) as Qty,'
      '(SELECT FgTax FROM SAMsSet) as FgTax'
      '  FROM APTrKonsinyasiInvDt  '
      'WHERE KonsinyasiInvID=:KonsinyasiInvID  AND SuppID=:SuppID'
      ') as K')
    Left = 668
    Top = 400
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 8
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 7
    end
    object quTotalQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
      Precision = 32
    end
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
    Left = 288
    Top = 360
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 336
    Top = 44
  end
end
