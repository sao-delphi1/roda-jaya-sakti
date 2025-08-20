inherited fmAPPurchaseOrder: TfmAPPurchaseOrder
  Left = 434
  Top = 79
  Caption = 'Pembelian'
  ClientHeight = 679
  ClientWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel [0]
    Left = 248
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Label12'
  end
  inherited paLeft: TdxContainer
    Height = 630
    inherited pa3: TdxContainer
      Height = 451
      object DBText18: TDBText
        Left = 30
        Top = 30
        Width = 100
        Height = 51
        DataField = 'BAID'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bbPembayaran: TdxButton
        Tag = 4444
        Left = -442
        Top = -147
        Width = 135
        Height = 45
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbPembayaranClick
        Caption = 'Pembayaran'
        TabOrder = 0
        TabStop = False
      end
      object Panel1: TPanel
        Left = -442
        Top = -147
        Width = 165
        Height = 233
        Color = 13676331
        TabOrder = 1
        object Label26: TLabel
          Left = 4
          Top = 8
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'Pembelian :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 4
          Top = 170
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'Disc Pembelian :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 4
          Top = 128
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'Hutang Dagang :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 4
          Top = 88
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'PPN Masukan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 4
          Top = 48
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'Pembelian Jasa :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 0
          Top = 0
          Width = 151
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
          Left = 0
          Top = 0
          Width = 151
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'RekeningD'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ExistButtons = True
        end
        object dxDBButtonEdit6: TdxDBButtonEdit
          Left = 0
          Top = 0
          Width = 151
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
        object dxDBButtonEdit12: TdxDBButtonEdit
          Left = 0
          Top = 0
          Width = 151
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
        object dxDBButtonEdit13: TdxDBButtonEdit
          Left = 0
          Top = 0
          Width = 151
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'RekeningJ'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ExistButtons = True
        end
      end
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 667
    Width = 1007
  end
  inherited pa2: TdxContainer
    Height = 630
  end
  inherited pcMain: TdxPageControl
    Width = 814
    Height = 630
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 809
        Height = 582
        DefaultLayout = False
        Filter.Criteria = {00000000}
        object dbgListPOID: TdxDBGridMaskColumn
          Caption = 'Invoice Pembelian'
          DisableEditor = True
          Width = 202
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PurchaseID'
        end
        object dbgListPODate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          DisableEditor = True
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListSuppId: TdxDBGridMaskColumn
          Caption = 'Kode Supplier'
          DisableEditor = True
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SuppID'
        end
        object dbgListLSuppname: TdxDBGridLookupColumn
          Caption = 'Nama Supplier'
          DisableEditor = True
          Width = 153
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuSupplier'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Shape3: TShape
        Left = 449
        Top = 337
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label14: TLabel
        Left = 1117
        Top = 425
        Width = 186
        Height = 20
        Caption = 'Serial Number per Item'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 459
        Top = 340
        Width = 59
        Height = 18
        Caption = 'Subtotal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 649
        Top = 342
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'SubTotal'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 43
        Top = 34
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nota Pembelian :'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 79
        Top = 54
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 80
        Top = 74
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Supplier :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 63
        Top = 94
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Keterangan :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 5
        Top = 142
        Width = 136
        Height = 20
        Caption = 'Detail Pembelian'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 218
        Top = 74
        Width = 523
        Height = 13
        DataField = 'LuSupplier'
        DataSource = dsMain
      end
      object Label5: TLabel
        Left = 1166
        Top = 326
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valuta :'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText4: TDBText
        Left = 1354
        Top = 326
        Width = 79
        Height = 13
        DataField = 'LCurrName'
        DataSource = dsMain
        Enabled = False
        Visible = False
      end
      object DBText6: TDBText
        Left = 1149
        Top = 268
        Width = 283
        Height = 34
        Alignment = taCenter
        DataField = 'LCurrName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 56
        Top = 114
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jatuh Tempo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 173
        Top = 114
        Width = 21
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 202
        Top = 114
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
      end
      object DBText7: TDBText
        Left = 292
        Top = 114
        Width = 141
        Height = 13
        DataField = 'TglJthTempo'
        DataSource = dsMain
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 1397
        Top = 238
        Width = 85
        Height = 20
        Alignment = taRightJustify
        DataField = 'Rate'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1109
        Top = 238
        Width = 291
        Height = 20
        Caption = 'Transaksi ini menggunakan Rate Rp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape4: TShape
        Left = 449
        Top = 385
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label15: TLabel
        Left = 459
        Top = 388
        Width = 38
        Height = 18
        Caption = 'Pajak'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 449
        Top = 409
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label16: TLabel
        Left = 459
        Top = 412
        Width = 35
        Height = 18
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText10: TDBText
        Left = 649
        Top = 414
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 642
        Top = 388
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 642
        Top = 412
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 642
        Top = 340
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 64
        Top = 15
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nomor FPP :'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape6: TShape
        Left = 449
        Top = 361
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label22: TLabel
        Left = 459
        Top = 364
        Width = 31
        Height = 18
        Caption = 'Disc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 642
        Top = 364
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText9: TDBText
        Left = 649
        Top = 366
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'Disc'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText11: TDBText
        Left = 649
        Top = 390
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'Pajak'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape7: TShape
        Left = 449
        Top = 433
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label25: TLabel
        Left = 459
        Top = 436
        Width = 49
        Height = 18
        Caption = 'PPh 21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText12: TDBText
        Left = 649
        Top = 438
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'PPH21'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 642
        Top = 436
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape8: TShape
        Left = 449
        Top = 457
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label30: TLabel
        Left = 459
        Top = 460
        Width = 49
        Height = 18
        Caption = 'PPh 23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText13: TDBText
        Left = 649
        Top = 462
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'PPH23'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 642
        Top = 460
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape9: TShape
        Left = 449
        Top = 529
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label32: TLabel
        Left = 459
        Top = 532
        Width = 59
        Height = 18
        Caption = 'PPh 4(2)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText14: TDBText
        Left = 649
        Top = 534
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'PPH42'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 642
        Top = 532
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape10: TShape
        Left = 449
        Top = 577
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label34: TLabel
        Left = 459
        Top = 580
        Width = 60
        Height = 18
        Caption = 'Payment'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText15: TDBText
        Left = 649
        Top = 582
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'GT'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 642
        Top = 580
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 281
        Top = 15
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'No Faktur Pajak :'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 9
        Top = 570
        Width = 105
        Height = 29
        Caption = 'INVOICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 311
        Top = 34
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jenis FPP :'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Shape11: TShape
        Left = 449
        Top = 553
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label40: TLabel
        Left = 459
        Top = 556
        Width = 115
        Height = 18
        Caption = 'PPh Blm Potong'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 642
        Top = 556
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape12: TShape
        Left = 449
        Top = 481
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label42: TLabel
        Left = 459
        Top = 484
        Width = 49
        Height = 18
        Caption = 'PPh 15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText16: TDBText
        Left = 649
        Top = 486
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'PPH15'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 642
        Top = 484
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 340
        Top = 54
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Site :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText17: TDBText
        Left = 426
        Top = 54
        Width = 207
        Height = 13
        DataField = 'LSites'
        DataSource = dsMain
      end
      object Shape13: TShape
        Left = 449
        Top = 505
        Width = 359
        Height = 25
        Brush.Color = 14467152
      end
      object Label45: TLabel
        Left = 459
        Top = 508
        Width = 51
        Height = 18
        Caption = 'PPH 26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText19: TDBText
        Left = 649
        Top = 510
        Width = 150
        Height = 21
        Alignment = taRightJustify
        DataField = 'PPH26'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 642
        Top = 508
        Width = 4
        Height = 18
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 18
        Top = 404
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Hutang :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText27: TDBText
        Left = 260
        Top = 402
        Width = 182
        Height = 20
        DataField = 'LRekHutDagang'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 18
        Top = 426
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Pembelian / Beban :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText40: TDBText
        Left = 260
        Top = 424
        Width = 182
        Height = 20
        DataField = 'LRekPemb'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 18
        Top = 470
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek PPN :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText41: TDBText
        Left = 260
        Top = 468
        Width = 182
        Height = 20
        DataField = 'LRekPPN'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 18
        Top = 448
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Pembelian / Jasa :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText42: TDBText
        Left = 260
        Top = 446
        Width = 182
        Height = 20
        DataField = 'LAPDisc'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 713
        Top = 108
        Width = 75
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = '&Batal (F4)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 10
        TabStop = False
      end
      object GroupBox2: TGroupBox
        Left = 564
        Top = 6
        Width = 221
        Height = 50
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        object Label10: TLabel
          Left = 16
          Top = 10
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'User :'
        end
        object DBText2: TDBText
          Left = 53
          Top = 9
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
        end
        object Label11: TLabel
          Left = 7
          Top = 30
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Waktu :'
        end
        object DBText3: TDBText
          Left = 54
          Top = 30
          Width = 132
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
        end
      end
      object dbg: TdxDBGrid
        Left = 0
        Top = 162
        Width = 807
        Height = 174
        Bands = <
          item
          end>
        DefaultLayout = False
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 11
        OnEnter = dbgEnter
        DataSource = dsDetil
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgKdItem: TdxDBGridButtonColumn
          Caption = 'Kode Barang'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgKdItemButtonClick
        end
        object dbgNmItem: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          DisableEditor = True
          TabStop = False
          Width = 216
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuItemName'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '0 Item(s)'
        end
        object dbgLokasi: TdxDBGridButtonColumn
          Caption = 'Lokasi'
          Visible = False
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WarehouseID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dbgLokasiButtonClick
        end
        object dbgColumn11: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'DPP'
          MinWidth = 16
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPN'
          Descriptions.Strings = (
            'PPN'
            'Non PPN')
          ImageIndexes.Strings = (
            '0'
            '1')
          ShowDescription = True
          Values.Strings = (
            'Y'
            'T')
        end
        object dbgColumn8: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Jasa'
          MinWidth = 16
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH21'
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
        object dbgColumn9: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'PPh'
          MinWidth = 16
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH23'
          Descriptions.Strings = (
            'Tidak'
            'PPh 21'
            'PPh 23'
            'PPh 23 Atas Bunga'
            'PPh 4 (2)'
            'PPh 15'
            'PPH 26')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          ShowDescription = True
          Values.Strings = (
            '00'
            '21'
            '23'
            '23B'
            '42'
            '15'
            '26')
        end
        object dbgColumn10: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'NPWP'
          MinWidth = 16
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH42'
          Descriptions.Strings = (
            'Ada'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          ShowDescription = True
          Values.Strings = (
            'Y'
            'T')
        end
        object dbgQty: TdxDBGridColumn
          Caption = 'Jumlah'
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#0'
          SummaryField = 'Qty'
        end
        object dbgHarga: TdxDBGridColumn
          Caption = 'Harga'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgDisc: TdxDBGridColumn
          Caption = 'Disc (%)'
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Disc'
        end
        object dbgTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          DisableEditor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabStop = False
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CTotal'
          SummaryFooterType = cstSum
        end
      end
      object dbgSerialNumber: TdxDBGrid
        Left = 1115
        Top = 444
        Width = 374
        Height = 184
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Enabled = False
        TabOrder = 17
        DataSource = dsSN
        Filter.Criteria = {00000000}
        HideFocusRect = True
        HideSelection = True
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        object dbgSerialNumberSNID: TdxDBGridColumn
          Caption = 'Serial Number'
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SNID'
        end
      end
      object dxButton3: TdxButton
        Left = 1159
        Top = 358
        Width = 146
        Height = 53
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = ' SERIAL NUMBER'
        TabOrder = 18
      end
      object TmbBrg: TdxButton
        Tag = 1111
        Left = 2
        Top = 338
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 12
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 113
        Top = 338
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 13
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 224
        Top = 338
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = bbSimpanDetilClick
        Caption = 'Simpan'
        TabOrder = 14
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 336
        Top = 338
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = BtlBrgClick
        Caption = 'Batal'
        TabOrder = 15
        TabStop = False
      end
      object dxButton1: TdxButton
        Tag = 1111
        Left = 1117
        Top = 629
        Width = 91
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = '(+) SN'
        TabOrder = 19
        TabStop = False
      end
      object dxButton2: TdxButton
        Tag = 2222
        Left = 1209
        Top = 629
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = '(-) SN'
        TabOrder = 20
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 4444
        Left = 1302
        Top = 629
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = 'Simpan'
        TabOrder = 21
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 1395
        Top = 629
        Width = 92
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Batal'
        TabOrder = 22
        TabStop = False
      end
      object dxDBEdit1: TdxDBEdit
        Left = 128
        Top = 30
        Width = 149
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FPBID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 128
        Top = 50
        Width = 89
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object txtSupplier: TdxDBButtonEdit
        Left = 128
        Top = 70
        Width = 89
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SuppID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end
          item
            Default = False
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
              F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
              F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
              F000}
            Kind = bkGlyph
          end>
        OnButtonClick = txtSupplierButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 1208
        Top = 322
        Width = 141
        Enabled = False
        TabOrder = 23
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
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
      object dxDBEdit2: TdxDBEdit
        Left = 128
        Top = 90
        Width = 465
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit3: TdxDBEdit
        Left = 128
        Top = 110
        Width = 44
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBPajak: TdxDBImageEdit
        Left = 504
        Top = 386
        Width = 86
        TabOrder = 24
        OnKeyPress = dxDBEdit1KeyPress
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
      object bbSave: TdxButton
        Tag = 3333
        Left = 637
        Top = 108
        Width = 75
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        ParentColor = False
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
        TabOrder = 9
        TabStop = False
      end
      object dxDBEdit5: TdxDBEdit
        Left = 128
        Top = 10
        Width = 149
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'PurchaseID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit4: TdxDBEdit
        Left = 555
        Top = 362
        Width = 85
        TabOrder = 25
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Disc'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 496
        Top = 362
        Width = 60
        TabOrder = 26
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'DiscType'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Amount'
          'Percent')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'A'
          'P')
      end
      object dxButton7: TdxButton
        Tag = 4444
        Left = 224
        Top = 367
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton7Click
        Caption = 'Cetak Jurnal'
        TabOrder = 27
        TabStop = False
      end
      object dxButton8: TdxButton
        Tag = 4444
        Left = 336
        Top = 367
        Width = 110
        Height = 26
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton8Click
        Caption = 'Cetak FPP'
        TabOrder = 28
        TabStop = False
      end
      object dxDBEdit6: TdxDBEdit
        Left = 368
        Top = 10
        Width = 150
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 512
        Top = 434
        Width = 62
        TabOrder = 29
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FGpph21'
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
      end
      object dxDBImageEdit3: TdxDBImageEdit
        Left = 512
        Top = 459
        Width = 62
        TabOrder = 30
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FGpph23'
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
      end
      object dxDBImageEdit4: TdxDBImageEdit
        Left = 368
        Top = 30
        Width = 150
        TabOrder = 7
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgPajak'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'Pembelian Tanpa PO'
          'Pengajuan Kas')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBEdit7: TdxDBEdit
        Left = 650
        Top = 555
        Width = 150
        TabOrder = 31
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'DiscCashAmount'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit5: TdxDBImageEdit
        Left = 512
        Top = 483
        Width = 62
        TabOrder = 32
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgPPh15'
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
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 368
        Top = 50
        Width = 57
        TabOrder = 8
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'SiteID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit6: TdxDBImageEdit
        Left = 512
        Top = 507
        Width = 62
        TabOrder = 33
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgPPH26'
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
      end
      object dxDBButtonEdit11: TdxDBButtonEdit
        Left = 177
        Top = 401
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 34
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
      object dxDBButtonEdit17: TdxDBButtonEdit
        Left = 177
        Top = 423
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 35
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
      object dxDBButtonEdit18: TdxDBButtonEdit
        Left = 177
        Top = 467
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 36
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
      object dxDBButtonEdit19: TdxDBButtonEdit
        Left = 177
        Top = 445
        Width = 80
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 37
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningJ'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ExistButtons = True
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1007
    inherited sbLast: TSpeedButton
      Left = 979
    end
    inherited sbNext: TSpeedButton
      Left = 956
    end
    inherited sbPrev: TSpeedButton
      Left = 933
    end
    inherited sbFirst: TSpeedButton
      Left = 910
    end
    inherited sbPeriod: TSpeedButton
      Left = 882
    end
    inherited BvlPeriod: TBevel
      Left = 636
    end
    inherited laPeriod: TLabel
      Left = 640
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from APTrPurchaseHd '
      ''
      '')
    Left = 224
    object quMainPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 400
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
      FixedChar = True
      Size = 3
    end
    object quMainLuSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'LuSupplier'
      LookupDataSet = quSup
      LookupKeyFields = 'SuppID'
      LookupResultField = 'SuppName'
      KeyFields = 'SuppID'
      Lookup = True
    end
    object quMainTTLPb: TBCDField
      FieldName = 'TTLPb'
      Precision = 18
      Size = 0
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##.00'
      Precision = 18
      Size = 0
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
    object quMainJatuhTempo: TIntegerField
      FieldName = 'JatuhTempo'
    end
    object quMainTglJthTempo: TStringField
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'TglJthTempo'
      Size = 10
      Calculated = True
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      Precision = 18
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainDiscCash: TBCDField
      FieldName = 'DiscCash'
      Precision = 18
    end
    object quMainStPb: TBCDField
      FieldName = 'StPb'
      Precision = 18
    end
    object quMainDiscAmount: TBCDField
      FieldName = 'DiscAmount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainDiscCashType: TWordField
      FieldName = 'DiscCashType'
    end
    object quMainDiscCashAmount: TBCDField
      FieldName = 'DiscCashAmount'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quMainFgPajak: TStringField
      FieldName = 'FgPajak'
      Size = 1
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainFPBID: TStringField
      FieldName = 'FPBID'
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainFgLocal: TStringField
      FieldName = 'FgLocal'
      Size = 1
    end
    object quMainBAID: TStringField
      FieldName = 'BAID'
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
    object quMainTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object quMainRekeningJ: TStringField
      FieldName = 'RekeningJ'
      Size = 50
    end
    object quMainPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
    end
    object quMainDiscType: TStringField
      FieldName = 'DiscType'
      Size = 10
    end
    object quMainLstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lstatus'
      Size = 100
      Calculated = True
    end
    object quMainSubTotalU: TBCDField
      FieldName = 'SubTotalU'
      Precision = 18
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quMainOtoby: TStringField
      FieldName = 'Otoby'
      Size = 50
    end
    object quMainFGpph21: TStringField
      FieldName = 'FGpph21'
      Size = 10
    end
    object quMainFGpph23: TStringField
      FieldName = 'FGpph23'
      Size = 10
    end
    object quMainpph21: TBCDField
      FieldName = 'pph21'
      Precision = 18
    end
    object quMainpph23: TBCDField
      FieldName = 'pph23'
      Precision = 18
    end
    object quMainpph42: TBCDField
      FieldName = 'pph42'
      Precision = 18
    end
    object quMaintglFPS: TDateTimeField
      FieldName = 'tglFPS'
    end
    object quMainFgPPh15: TStringField
      FieldName = 'FgPPh15'
      Size = 10
    end
    object quMainpph15: TBCDField
      FieldName = 'pph15'
      Precision = 18
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
    object quMainFgPPH26: TStringField
      FieldName = 'FgPPH26'
      Size = 1
    end
    object quMainPPH26: TBCDField
      FieldName = 'PPH26'
      Precision = 18
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
    object quMainLAPDisc: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAPDisc'
      Size = 200
      Calculated = True
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PurchaseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SuppId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from APTrPurchaseDt  WHERE PurchaseID=:PurchaseID '
      'And SuppId=:SuppId order by updDate')
    object quDetilPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quDetilItemID: TStringField
      DisplayWidth = 20
      FieldName = 'ItemID'
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0'
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
    object quDetilCTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object quDetilLWareHouse: TStringField
      FieldKind = fkLookup
      FieldName = 'LWareHouse'
      LookupDataSet = quWarehouse
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WarehouseID'
      Size = 50
      Lookup = True
    end
    object quDetilSuppId: TStringField
      FieldName = 'SuppId'
    end
    object quDetilDisc: TFloatField
      FieldName = 'Disc'
    end
    object quDetilFgPPH42: TStringField
      FieldName = 'FgPPH42'
      Size = 10
    end
    object quDetilFgPPH21: TStringField
      FieldName = 'FgPPH21'
      Size = 10
    end
    object quDetilFgPPH23: TStringField
      FieldName = 'FgPPH23'
      Size = 10
    end
    object quDetilFgPPN: TStringField
      FieldName = 'FgPPN'
      Size = 10
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quSup: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from APMsSupplier order by suppname')
    Left = 548
    Top = 8
    object quSupSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quSupSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quSupAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quSupCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quSupContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object quSupPhone: TStringField
      FieldName = 'Phone'
    end
    object quSupFax: TStringField
      FieldName = 'Fax'
    end
    object quSupEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quSupNote: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object quSupUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSupUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by itemname')
    Left = 484
    Top = 264
    object quItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object quItemItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quItemUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quItemUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quWarehouse: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsWarehouse ')
    Left = 512
    Top = 264
    object quWarehouseWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quWarehouseWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 100
    end
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 420
    Top = 4
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'PurchaseId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT X.PurchaseID,ROUND(X.SubTotal+X.SubPPN,0) as Subtotal,ROU' +
        'ND(CASE WHEN X.DiscType='#39'A'#39' THEN X.Disc ELSE X.SubTotal*X.Disc/1' +
        '00 END,0) as Disc,ROUND(X.PPh42,0) as PPH42,'
      
        'ROUND(CASE WHEN X.FgPPH21='#39'Y'#39' THEN X.PPh21 ELSE 0 END,0) as PPH2' +
        '1,'
      
        'ROUND(CASE WHEN X.FgPPH23='#39'Y'#39' THEN X.PPh23 ELSE 0 END,0) as PPH2' +
        '3,'
      
        'ROUND(CASE WHEN X.FgPPH15='#39'Y'#39' THEN X.PPh15 ELSE 0 END,0) as PPH1' +
        '5,'
      
        'ROUND(CASE WHEN X.FgPPH26='#39'Y'#39' THEN X.PPh26 ELSE 0 END,0) as PPH2' +
        '6,'
      'ROUND(X.SubTotalU,0) as SubtotalU,'
      
        'CASE WHEN X.FgTax='#39'Y'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN ' +
        'ROUND(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.Sub' +
        'Total*X.Disc/100),0) END)*0.1,0) '
      
        'WHEN X.FgTax='#39'E'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN ROUND' +
        '(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.SubTotal' +
        '*X.Disc/100),0) END)*0.01,0) ELSE 0 END as Pajak,'
      
        'ROUND(X.SubTotal+X.SubPPN,0)-ROUND(CASE WHEN X.DiscType='#39'A'#39' THEN' +
        ' X.Disc ELSE X.SubTotal*X.Disc/100 END,0)+'
      
        '(CASE WHEN X.FgTax='#39'Y'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN' +
        ' ROUND(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.Su' +
        'bTotal*X.Disc/100),0) END)*0.1,0)'
      
        'WHEN X.FgTax='#39'E'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN ROUND' +
        '(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.SubTotal' +
        '*X.Disc/100),0) END)*0.01,0) ELSE 0 END) as Total,'
      ''
      
        'ROUND(X.SubTotal+X.SubPPN,0)-ROUND(CASE WHEN X.DiscType='#39'A'#39' THEN' +
        ' X.Disc ELSE X.SubTotal*X.Disc/100 END,0)+'
      
        '(CASE WHEN X.FgTax='#39'Y'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN' +
        ' ROUND(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.Su' +
        'bTotal*X.Disc/100),0) END)*0.1,0)'
      
        'WHEN X.FgTax='#39'E'#39' THEN ROUND((CASE WHEN X.DiscType='#39'A'#39' THEN ROUND' +
        '(X.Subtotal,0)-X.Disc ELSE ROUND(X.SubTotal,0)-ROUND((X.SubTotal' +
        '*X.Disc/100),0) END)*0.01,0) ELSE 0 END)-'
      
        'ROUND(CASE WHEN X.FgPPH21='#39'Y'#39' THEN X.PPh21 ELSE 0 END,0)-ROUND(C' +
        'ASE WHEN X.FgPPH23='#39'Y'#39' THEN X.PPh23 ELSE 0 END,0)-ROUND(CASE WHE' +
        'N X.FgPPH15='#39'Y'#39' THEN X.PPh15 ELSE 0 END,0)-'
      'ROUND(X.PPh42,0)-ROUND(X.PPh26,0)-X.PT as GT'
      'FROM ('
      ''
      ''
      
        'select A.PurchaseID,ISNULL(B.FGpph21,'#39'Y'#39') as FgPPH21,ISNULL(B.FG' +
        'pph23,'#39'Y'#39') as FgPPH23,ISNULL(B.FGpph15,'#39'Y'#39') as FgPPh15,ISNULL(B.' +
        'FGpph26,'#39'Y'#39') as FgPPh26,'
      
        'ISNULL(SUM(CASE WHEN A.FgPPN='#39'Y'#39' THEN Price*Qty ELSE 0 END),0) a' +
        's SubTotal,'
      
        'ISNULL(SUM(CASE WHEN A.FgPPN='#39'T'#39' THEN Price*Qty ELSE 0 END),0) a' +
        's SubPPN,ISNULL(B.DiscCashamount,0) as PT,'
      
        'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN A.Price*A.Qty ELSE 0 END' +
        '),0) as SubTotalU,'
      ''
      
        'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN (CASE WHEN A.FgPPH23='#39'21' +
        #39' THEN (CASE WHEN A.FgPPH42='#39'Y'#39' THEN A.Price*A.Qty*(1-B.Disc/100' +
        ')*50/100*5/100 '
      
        'ELSE A.Price*A.Qty*(1-B.Disc/100)*50/100*6/100 END) ELSE 0 END) ' +
        'ELSE 0 END),0) as PPh21,'
      ''
      'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH23='#39'23'#39' THEN (CASE WHEN A.FgPPH42='#39'Y'#39' THEN A.Pr' +
        'ice*A.Qty*(1-B.Disc/100)*2/100 ELSE A.Price*A.Qty*(1-B.Disc/100)' +
        '*4/100 END) '
      
        '     WHEN A.FgPPH23='#39'23B'#39' THEN A.Price*A.Qty*(1-B.Disc/100)*15/1' +
        '00 ELSE 0 END) ELSE 0 END),0) as PPh23,'
      ''
      
        'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN (CASE WHEN A.FgPPH23='#39'42' +
        #39' THEN A.Price*A.Qty*(1-B.Disc/100)*0.1 ELSE 0 END) ELSE 0 END),' +
        '0) as PPh42,'
      ''
      
        'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN (CASE WHEN A.FgPPH23='#39'26' +
        #39' THEN A.Price*A.Qty*(1-B.Disc/100)*0.2 ELSE 0 END) ELSE 0 END),' +
        '0) as PPh26,'
      ''
      
        'ISNULL(SUM(CASE WHEN A.FgPPH21='#39'Y'#39' THEN (CASE WHEN A.FgPPH23='#39'15' +
        #39' THEN A.Price*A.Qty*(1-B.Disc/100)*1.2/100 ELSE 0 END) ELSE 0 E' +
        'ND),0) as PPh15,'
      ''
      'B.DiscType,B.Disc,B.FgTax'
      'FROM APTrPurchaseDt A'
      'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID'
      'WHERE B.PurchaseId=:PurchaseID'
      
        'GROUP BY A.PurchaseID,B.DiscType,B.Disc,B.FgTax,B.FGpph21,B.FGpp' +
        'h23,B.DiscCashamount,B.FgPPh15,B.FgPPh26 '
      ''
      ''
      ') as X'
      '')
    Left = 608
    Top = 380
    object quTotalPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPPH42: TBCDField
      FieldName = 'PPH42'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalPPH21: TBCDField
      FieldName = 'PPH21'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPPH23: TBCDField
      FieldName = 'PPH23'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalSubTotalU: TBCDField
      FieldName = 'SubTotalU'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalDisc: TBCDField
      FieldName = 'Disc'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPPH15: TBCDField
      FieldName = 'PPH15'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPPH26: TBCDField
      FieldName = 'PPH26'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 636
    Top = 380
  end
  object quSN: TADOQuery
    Connection = dmMain.dbConn
    BeforeInsert = quSNBeforeInsert
    BeforePost = quSNBeforePost
    AfterPost = quSNAfterPost
    BeforeDelete = quSNBeforeDelete
    OnNewRecord = quSNNewRecord
    DataSource = dsDetil
    Parameters = <
      item
        Name = 'PurchaseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SuppId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'WareHouseID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Price'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'Select * from APTrPurchaseDtSN'
      'WHERE PurchaseID=:PurchaseID AND SuppId=:SuppId '
      'AND ItemID=:ItemID AND WareHouseID=:WareHouseID '
      'AND Price=:Price')
    Left = 288
    Top = 484
    object quSNPurchaseID: TStringField
      FieldName = 'PurchaseID'
      Size = 50
    end
    object quSNItemID: TStringField
      FieldName = 'ItemID'
    end
    object quSNSuppId: TStringField
      FieldName = 'SuppId'
    end
    object quSNWarehouseID: TStringField
      FieldName = 'WarehouseID'
    end
    object quSNPrice: TBCDField
      FieldName = 'Price'
      Precision = 18
    end
    object quSNSNID: TStringField
      FieldName = 'SNID'
      Size = 50
    end
    object quSNUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quSNUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quSNFgJual: TStringField
      FieldName = 'FgJual'
      Size = 1
    end
    object quSNFgSN: TStringField
      FieldName = 'FgSN'
      Size = 1
    end
  end
  object dsSN: TDataSource
    DataSet = quSN
    OnStateChange = dsSNStateChange
    Left = 316
    Top = 484
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    Left = 352
    Top = 488
    object StringField1: TStringField
      FieldName = 'SuppID'
    end
    object StringField2: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'City'
      Size = 150
    end
    object StringField5: TStringField
      FieldName = 'ContactPerson'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'Phone'
    end
    object StringField7: TStringField
      FieldName = 'Fax'
    end
    object StringField8: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Note'
      Size = 300
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UpdDate'
    end
    object StringField10: TStringField
      FieldName = 'UpdUser'
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
    Left = 540
    Top = 264
  end
  object quCetak: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 52
  end
end
