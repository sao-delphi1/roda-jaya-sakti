inherited fmAPKonsinyasiInvIDR: TfmAPKonsinyasiInvIDR
  Left = 394
  Top = 83
  Action = ActCancel
  Caption = 'Form Pengajuan Pembayaran'
  ClientHeight = 709
  ClientWidth = 1223
  OnClick = ActCancelExecute
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 660
    inherited pa3: TdxContainer
      Height = 481
      object Panel1: TPanel
        Left = -275
        Top = -128
        Width = 175
        Height = 313
        Color = 13676331
        TabOrder = 0
        object Label26: TLabel
          Left = 3
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
          Left = 3
          Top = 168
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
          Left = 3
          Top = 129
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
        object Label15: TLabel
          Left = 3
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
          Left = 3
          Top = 49
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
        object Label39: TLabel
          Left = 3
          Top = 207
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'Ongkir :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 3
          Top = 249
          Width = 140
          Height = 17
          AutoSize = False
          Caption = 'PBB-KB :'
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
          OnButtonClick = dxDBButtonEdit4ButtonClick
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
          OnButtonClick = dxDBButtonEdit5ButtonClick
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
          OnButtonClick = dxDBButtonEdit6ButtonClick
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
          OnButtonClick = dxDBButtonEdit12ButtonClick
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
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit14: TdxDBButtonEdit
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
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'RekeningO'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit9ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit15: TdxDBButtonEdit
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
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'RekPBBKB'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit9ButtonClick
          ExistButtons = True
        end
      end
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
    Height = 660
  end
  inherited pcMain: TdxPageControl [3]
    Width = 1030
    Height = 660
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 1020
        Height = 605
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
      object Shape8: TShape
        Left = 1283
        Top = 373
        Width = 403
        Height = 27
        Brush.Color = 15259016
        Enabled = False
        Visible = False
      end
      object Shape3: TShape
        Left = 727
        Top = 325
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object Label1: TLabel
        Left = 28
        Top = 12
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nomor FPP :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 28
        Top = 61
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tanggal :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 28
        Top = 85
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supplier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 215
        Top = 84
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LSuppName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 28
        Top = 133
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 1079
        Top = 210
        Width = 48
        Height = 23
        DataField = 'LCurrName'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 1284
        Top = 878
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valuta :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 858
        Top = 329
        Width = 150
        Height = 23
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
      object Label6: TLabel
        Left = 28
        Top = 156
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 177
        Top = 156
        Width = 26
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 220
        Top = 156
        Width = 105
        Height = 17
        Alignment = taRightJustify
        Caption = 'Tgl Jatuh Tempo :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 330
        Top = 156
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'TglJthTempo'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 1290
        Top = 539
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota PO :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText9: TDBText
        Left = 1639
        Top = 548
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LDOSupp'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1460
        Top = 878
        Width = 35
        Height = 17
        Alignment = taRightJustify
        Caption = 'Rate :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape4: TShape
        Left = 727
        Top = 417
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText3: TDBText
        Left = 858
        Top = 421
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'Pajak'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape5: TShape
        Left = 727
        Top = 440
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText6: TDBText
        Left = 858
        Top = 444
        Width = 150
        Height = 23
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
      object DBText11: TDBText
        Left = 1292
        Top = 853
        Width = 227
        Height = 20
        DataField = 'LRekPPN'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 278
        Top = 13
        Width = 104
        Height = 17
        Alignment = taRightJustify
        Caption = 'No Faktur Pajak :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape6: TShape
        Left = 727
        Top = 394
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object Shape7: TShape
        Left = 1283
        Top = 347
        Width = 403
        Height = 27
        Brush.Color = 15259016
        Enabled = False
        Visible = False
      end
      object DBText13: TDBText
        Left = 858
        Top = 398
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'Disc'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText14: TDBText
        Left = 1543
        Top = 354
        Width = 135
        Height = 23
        Alignment = taRightJustify
        DataField = 'DP'
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
      object Shape9: TShape
        Left = 1283
        Top = 399
        Width = 403
        Height = 27
        Brush.Color = 15259016
        Enabled = False
        Visible = False
      end
      object Shape10: TShape
        Left = 1283
        Top = 425
        Width = 403
        Height = 27
        Brush.Color = 15259016
        Enabled = False
        Visible = False
      end
      object Label41: TLabel
        Left = 1241
        Top = 721
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Uang Muka :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText15: TDBText
        Left = 1539
        Top = 722
        Width = 227
        Height = 20
        DataField = 'LDrDP'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBText17: TDBText
        Left = 1136
        Top = 305
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
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
        Left = 740
        Top = 329
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 740
        Top = 422
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPN 10% :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 740
        Top = 446
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Grand Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 740
        Top = 399
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Diskon :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 1308
        Top = 378
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ongkir :'
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
      object Label36: TLabel
        Left = 1308
        Top = 352
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DP                               :'
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
      object Label35: TLabel
        Left = 1308
        Top = 404
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Repacking :'
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
      object Label37: TLabel
        Left = 1308
        Top = 430
        Width = 150
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Administrasi :'
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
      object DBText18: TDBText
        Left = 1136
        Top = 332
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText19: TDBText
        Left = 1136
        Top = 357
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
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
        Left = 1463
        Top = 378
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
        Left = 1463
        Top = 404
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
      object DBText22: TDBText
        Left = 1463
        Top = 430
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
      object DBText23: TDBText
        Left = 1463
        Top = 352
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
      object DBText24: TDBText
        Left = 1136
        Top = 385
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label10: TLabel
        Left = 1241
        Top = 743
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Ongkir :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText25: TDBText
        Left = 1539
        Top = 744
        Width = 227
        Height = 20
        DataField = 'LRekOng'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 1241
        Top = 765
        Width = 140
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rek Repacking :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText26: TDBText
        Left = 1539
        Top = 766
        Width = 227
        Height = 20
        DataField = 'LRekRepak'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 186
        Top = 540
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
        Left = 500
        Top = 538
        Width = 222
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
      object Label16: TLabel
        Left = 1312
        Top = 563
        Width = 63
        Height = 17
        Alignment = taRightJustify
        Caption = 'Company :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 84
        Top = 109
        Width = 29
        Height = 17
        Alignment = taRightJustify
        Caption = 'Site :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 1335
        Top = 611
        Width = 40
        Height = 17
        Alignment = taRightJustify
        Caption = 'Divisi :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText29: TDBText
        Left = 1477
        Top = 562
        Width = 61
        Height = 17
        AutoSize = True
        DataField = 'Lwarehouse'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 215
        Top = 108
        Width = 61
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
      object DBText31: TDBText
        Left = 1477
        Top = 610
        Width = 61
        Height = 17
        AutoSize = True
        DataField = 'LDivisi'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 36
        Top = 36
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
      object Shape11: TShape
        Left = 727
        Top = 578
        Width = 292
        Height = 26
        Brush.Color = 15259016
      end
      object Label24: TLabel
        Left = 728
        Top = 584
        Width = 125
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh Blm Potong :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText33: TDBText
        Left = 1136
        Top = 487
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Shape12: TShape
        Left = 727
        Top = 463
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText34: TDBText
        Left = 858
        Top = 467
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPh21'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 734
        Top = 468
        Width = 119
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh 21               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText35: TDBText
        Left = 1136
        Top = 410
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Shape13: TShape
        Left = 727
        Top = 486
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText36: TDBText
        Left = 858
        Top = 490
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPh23'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 734
        Top = 492
        Width = 119
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh 23               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText37: TDBText
        Left = 1136
        Top = 435
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Shape14: TShape
        Left = 727
        Top = 555
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText38: TDBText
        Left = 858
        Top = 559
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPH42'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 740
        Top = 561
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh 4(2) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText39: TDBText
        Left = 1136
        Top = 461
        Width = 68
        Height = 17
        AutoSize = True
        DataField = 'CurrID'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label33: TLabel
        Left = 496
        Top = 36
        Width = 117
        Height = 31
        Alignment = taCenter
        Caption = 'INVOICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape15: TShape
        Left = 727
        Top = 371
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText10: TDBText
        Left = 858
        Top = 375
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'SubP'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape16: TShape
        Left = 727
        Top = 348
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText12: TDBText
        Left = 858
        Top = 352
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'SubO'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 740
        Top = 376
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PBB-KB :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 740
        Top = 353
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ongkir :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape17: TShape
        Left = 727
        Top = 603
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText16: TDBText
        Left = 858
        Top = 605
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'GT'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 740
        Top = 607
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Grand Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape18: TShape
        Left = 727
        Top = 509
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText28: TDBText
        Left = 858
        Top = 513
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPh15'
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
        Left = 734
        Top = 515
        Width = 119
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh 15               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape19: TShape
        Left = 727
        Top = 532
        Width = 292
        Height = 24
        Brush.Color = 15259016
      end
      object DBText32: TDBText
        Left = 858
        Top = 537
        Width = 150
        Height = 23
        Alignment = taRightJustify
        DataField = 'PPH26'
        DataSource = dsTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 734
        Top = 537
        Width = 119
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PPh 26               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 186
        Top = 562
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
        Left = 500
        Top = 560
        Width = 222
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
      object Label48: TLabel
        Left = 186
        Top = 606
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
        Left = 500
        Top = 604
        Width = 222
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
      object Label49: TLabel
        Left = 186
        Top = 584
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
        Left = 500
        Top = 582
        Width = 222
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
      object dxDBButtonEdit7: TdxDBButtonEdit
        Left = 1334
        Top = 348
        Width = 119
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        DataField = 'DPID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 113
        OnButtonClick = dxDBButtonEdit7ButtonClick
        Height = 25
        ExistButtons = True
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 886
        Top = 134
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 8
        TabStop = False
      end
      object dbg: TdxDBGrid
        Left = 1
        Top = 360
        Width = 724
        Height = 172
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Barang'
            Width = 877
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ItemID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
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
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowBands = True
        object dbgItemID: TdxDBGridButtonColumn
          Caption = 'Part Number'
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemID'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgItemName: TdxDBGridColumn
          Caption = 'Nama Barang'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 127
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LItemName'
        end
        object dbgColumn11: TdxDBGridColumn
          Caption = 'No Unit'
          Visible = False
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nounit'
        end
        object dbgColumn10: TdxDBGridColumn
          Caption = 'Type Unit'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'typeunit'
        end
        object dbgColumn12: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Jasa'
          MinWidth = 16
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgJasa'
          Descriptions.Strings = (
            'Barang'
            'Jasa'
            'PBBKB'
            'Ongkir')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          ShowDescription = True
          Values.Strings = (
            'T'
            'Y'
            'P'
            'O')
        end
        object dbgColumn13: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'PPh'
          MinWidth = 16
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgPPH'
          Descriptions.Strings = (
            'Tidak'
            'PPh 21'
            'PPh 23'
            'PPh 23 Atas Bunga'
            'PPh 4 (2)'
            'PPh 15'
            'PPh 26')
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
        object dbgColumn14: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'NPWP'
          MinWidth = 16
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgNPWP'
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
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Qty'
        end
        object dbgColumn9: TdxDBGridColumn
          Caption = 'Satuan'
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LUOMID'
        end
        object dbgPrice: TdxDBGridColumn
          Caption = 'Harga'
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Price'
        end
        object dbgTotal: TdxDBGridColumn
          Caption = 'Total'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 80
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
        Top = 647
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = TmbBrgClick
        Caption = '(+) Barang'
        TabOrder = 12
        TabStop = False
      end
      object KrgBrg: TdxButton
        Tag = 2222
        Left = 94
        Top = 647
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = KrgBrgClick
        Caption = '(-) Barang'
        TabOrder = 13
        TabStop = False
      end
      object bbSimpanDetil: TdxButton
        Tag = 4444
        Left = 1
        Top = 535
        Width = 90
        Height = 29
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
        TabOrder = 14
        TabStop = False
      end
      object BtlBrg: TdxButton
        Tag = 4444
        Left = 92
        Top = 535
        Width = 90
        Height = 29
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
        TabOrder = 15
        TabStop = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 765
        Top = 134
        Width = 120
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 7
        TabStop = False
      end
      object GroupBox1: TGroupBox
        Left = 754
        Top = 6
        Width = 260
        Height = 68
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        object Label21: TLabel
          Left = 23
          Top = 18
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
          Top = 18
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
          Top = 37
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
        object DBText2: TDBText
          Left = 68
          Top = 37
          Width = 180
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
        Left = 122
        Top = 8
        Width = 151
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'KonsinyasiInvID'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit3: TdxDBButtonEdit
        Left = 1384
        Top = 534
        Width = 191
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'POID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit3ButtonClick
        ExistButtons = True
      end
      object dxDBDateEdit1: TdxDBDateEdit
        Left = 122
        Top = 56
        Width = 119
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'TransDate'
        DataSource = dsMain
        StyleController = SCEdit
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 122
        Top = 80
        Width = 87
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
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
        Left = 1378
        Top = 872
        Width = 76
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
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
      object dxDBEdit4: TdxDBEdit
        Left = 1502
        Top = 872
        Width = 110
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Rate'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 122
        Top = 128
        Width = 487
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        Height = 25
      end
      object dxDBEdit3: TdxDBEdit
        Left = 122
        Top = 152
        Width = 50
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'JatuhTempo'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxButton1: TdxButton
        Tag = 4444
        Left = 1412
        Top = 814
        Width = 94
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton1Click
        Caption = 'Cetak (F9)'
        TabOrder = 20
        TabStop = False
      end
      object dxButton2: TdxButton
        Tag = 4444
        Left = 1295
        Top = 815
        Width = 114
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton2Click
        Caption = 'Jurnal'
        TabOrder = 21
        TabStop = False
      end
      object dxDBEdit5: TdxDBEdit
        Left = 386
        Top = 8
        Width = 199
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'FPS'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit6: TdxDBEdit
        Left = 1548
        Top = 374
        Width = 130
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Ongkir'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit7: TdxDBEdit
        Left = 1548
        Top = 400
        Width = 130
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Repack'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit8: TdxDBEdit
        Left = 1548
        Top = 426
        Width = 130
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'Administrasi'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit8: TdxDBButtonEdit
        Left = 1384
        Top = 718
        Width = 151
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningDP'
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
        Left = 1384
        Top = 740
        Width = 151
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningO'
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
        Left = 1384
        Top = 762
        Width = 151
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningR'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit10ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit11: TdxDBButtonEdit
        Left = 345
        Top = 537
        Width = 151
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningU'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit11ButtonClick
        ExistButtons = True
      end
      object dxDBEdit9: TdxDBEdit
        Left = 1384
        Top = 558
        Width = 87
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'warehouseid'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit11: TdxDBEdit
        Left = 1384
        Top = 606
        Width = 87
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 31
        OnKeyPress = dxDBEdit1KeyPress
        CharCase = ecUpperCase
        DataField = 'divisiid'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit5: TdxDBImageEdit
        Left = 122
        Top = 32
        Width = 175
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'warehouseID'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'RODA JAYA SAKTI'
          'TRIDAYA INDOMINERAL')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'RJS'
          'TIM')
      end
      object dxDBGrid1: TdxDBGrid
        Left = 1
        Top = 184
        Width = 1018
        Height = 140
        Bands = <
          item
            Alignment = taLeftJustify
            Caption = 'Detail Pengajuan'
            Width = 877
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'POID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnEnter = dxDBGrid1Enter
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -12
        BandFont.Name = 'Times New Roman'
        BandFont.Style = [fsBold]
        DataSource = dsSub
        Filter.Criteria = {00000000}
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Times New Roman'
        HeaderFont.Style = [fsBold]
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
        ShowBands = True
        object dxDBGridButtonColumn1: TdxDBGridButtonColumn
          Caption = 'Nomor PO'
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'POID'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBGridButtonColumn1ButtonClick
        end
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'Tanggal'
          Color = clWhite
          ReadOnly = True
          TabStop = False
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ltanggal'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dxDBGrid1Column11: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'PPh 4(2)'
          MinWidth = 16
          Visible = False
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'fgpph42'
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
        object dxDBGridColumn3: TdxDBGridColumn
          Caption = 'Disc (%)'
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Disc'
        end
        object dxDBGridColumn4: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Pajak'
          MinWidth = 16
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FgTax'
          Descriptions.Strings = (
            'Ya'
            'Tidak'
            'Ya (040)')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          ShowDescription = True
          Values.Strings = (
            'Y'
            'T'
            'E')
        end
        object dxDBGridColumn5: TdxDBGridColumn
          Caption = 'Subtotal'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SubtotalM'
        end
        object dxDBGridColumn6: TdxDBGridColumn
          Caption = 'Jasa'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SubtotalU'
        end
        object dxDBGrid1Column12: TdxDBGridColumn
          Caption = 'PBBKB'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'pbbkb'
        end
        object dxDBGrid1Column13: TdxDBGridColumn
          Caption = 'Ongkir'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ongkir'
        end
        object dxDBGridColumn7: TdxDBGridColumn
          Caption = 'Discount'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DiscAmount'
        end
        object dxDBGridColumn8: TdxDBGridColumn
          Caption = 'Nilai Pajak'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PPN'
        end
        object dxDBGridColumn9: TdxDBGridColumn
          Caption = 'Total PO'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TTLKJ'
        end
      end
      object dxButton3: TdxButton
        Tag = 1111
        Left = 3
        Top = 327
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton3Click
        Caption = '(+) Barang'
        TabOrder = 32
        TabStop = False
      end
      object dxButton4: TdxButton
        Tag = 2222
        Left = 94
        Top = 327
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton4Click
        Caption = '(-) Barang'
        TabOrder = 33
        TabStop = False
      end
      object dxButton5: TdxButton
        Tag = 4444
        Left = 185
        Top = 327
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton5Click
        Caption = 'Simpan'
        TabOrder = 34
        TabStop = False
      end
      object dxButton6: TdxButton
        Tag = 4444
        Left = 276
        Top = 327
        Width = 90
        Height = 30
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'Batal'
        TabOrder = 35
        TabStop = False
      end
      object dxButton7: TdxButton
        Tag = 4444
        Left = 1
        Top = 566
        Width = 90
        Height = 30
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
        TabOrder = 36
        TabStop = False
      end
      object dxButton8: TdxButton
        Tag = 4444
        Left = 92
        Top = 566
        Width = 90
        Height = 30
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
        TabOrder = 37
        TabStop = False
      end
      object dxDBPajak: TdxDBImageEdit
        Left = 791
        Top = 463
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 38
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
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 791
        Top = 486
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 39
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
      object dxDBEdit12: TdxDBEdit
        Left = 863
        Top = 578
        Width = 148
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 40
        OnKeyPress = dxDBEdit1KeyPress
        AutoSize = False
        DataField = 'Payment'
        DataSource = dsMain
        StyleController = SCEdit
        Height = 25
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 791
        Top = 509
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 41
        DataField = 'Fgpph15'
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
      object dxDBButtonEdit16: TdxDBButtonEdit
        Left = 122
        Top = 104
        Width = 87
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'siteid'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit16ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit3: TdxDBImageEdit
        Left = 791
        Top = 533
        Width = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 42
        DataField = 'FGpph26'
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
      object dxDBButtonEdit17: TdxDBButtonEdit
        Left = 345
        Top = 559
        Width = 151
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 43
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningK'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit17ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit18: TdxDBButtonEdit
        Left = 345
        Top = 603
        Width = 151
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 44
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningP'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit18ButtonClick
        ExistButtons = True
      end
      object dxDBButtonEdit19: TdxDBButtonEdit
        Left = 345
        Top = 581
        Width = 151
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 45
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningJ'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit19ButtonClick
        ExistButtons = True
      end
    end
  end
  inherited paBottom: TdxContainer [4]
    Top = 697
    Width = 1223
  end
  inherited paToolBar: TdxContainer
    Width = 1223
    inherited sbLast: TSpeedButton
      Left = 1195
    end
    inherited sbNext: TSpeedButton
      Left = 1172
    end
    inherited sbPrev: TSpeedButton
      Left = 1149
    end
    inherited sbFirst: TSpeedButton
      Left = 1126
    end
    inherited sbPeriod: TSpeedButton
      Left = 1098
    end
    inherited BvlPeriod: TBevel
      Left = 852
    end
    inherited laPeriod: TLabel
      Left = 856
    end
  end
  inherited SCEdit: TdxEditStyleController
    Left = 492
    Top = 4
  end
  inherited SCCheckEdit: TdxCheckEditStyleController
    Left = 524
    Top = 4
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM APTrKonsinyasiInvHd Where ISNULL(FgPerforma,'#39'Y'#39')<>'#39'S'#39
      '')
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
      DisplayFormat = '#,0.00'
      EditFormat = '#.0,00'
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
      OnChange = quMainPOIDChange
    end
    object quMainSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#0,00'
      EditFormat = '#0,00'
      Precision = 18
    end
    object quMainTBobot: TBCDField
      FieldName = 'TBobot'
      Precision = 18
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#0,00'
      EditFormat = '#0,00'
      Precision = 18
    end
    object quMainKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainPayment: TBCDField
      FieldName = 'Payment'
      DisplayFormat = '#,0'
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
    object quMainFPS: TStringField
      FieldName = 'FPS'
      Size = 50
    end
    object quMainDPID: TStringField
      FieldName = 'DPID'
      OnChange = quMainDPIDChange
      Size = 50
    end
    object quMainTglDP: TDateTimeField
      FieldName = 'TglDP'
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
    object quMainRekeningDP: TStringField
      FieldName = 'RekeningDP'
      Size = 50
    end
    object quMainLDrDP: TStringField
      FieldKind = fkCalculated
      FieldName = 'LDrDP'
      Size = 50
      Calculated = True
    end
    object quMainFgPerforma: TStringField
      FieldName = 'FgPerforma'
      Size = 50
    end
    object quMainRekeningO: TStringField
      FieldName = 'RekeningO'
      Size = 50
    end
    object quMainRekeningR: TStringField
      FieldName = 'RekeningR'
      Size = 50
    end
    object quMainRekeningA: TStringField
      FieldName = 'RekeningA'
      Size = 50
    end
    object quMainLRekAdmin: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekAdmin'
      Size = 50
      Calculated = True
    end
    object quMainLRekOng: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekOng'
      Size = 50
      Calculated = True
    end
    object quMainLRekRepak: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekRepak'
      Size = 50
      Calculated = True
    end
    object quMainLAPDisc: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAPDisc'
      Size = 50
      Calculated = True
    end
    object quMainwarehouseid: TStringField
      FieldName = 'warehouseid'
      Size = 50
    end
    object quMainsiteid: TStringField
      FieldName = 'siteid'
      Size = 50
    end
    object quMaindivisiid: TStringField
      FieldName = 'divisiid'
      Size = 50
    end
    object quMainLwarehouse: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lwarehouse'
      Size = 100
      Calculated = True
    end
    object quMainLSites: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSites'
      Size = 100
      Calculated = True
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
    object quMainSubTotalJ: TBCDField
      FieldName = 'SubTotalJ'
      Precision = 18
    end
    object quMainRekeningJ: TStringField
      FieldName = 'RekeningJ'
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
    object quMainotoby: TStringField
      FieldName = 'otoby'
      Size = 50
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
    object quMainRekPBBKB: TStringField
      FieldName = 'RekPBBKB'
      Size = 50
    end
    object quMainpbbkb: TBCDField
      FieldName = 'pbbkb'
      Precision = 18
    end
    object quMainFgpph15: TStringField
      FieldName = 'Fgpph15'
      Size = 10
    end
    object quMainpph15: TBCDField
      FieldName = 'pph15'
      Precision = 18
    end
    object quMainFgPPH26: TStringField
      FieldName = 'FgPPH26'
      Size = 1
    end
    object quMainPPH26: TBCDField
      FieldName = 'PPH26'
      Precision = 18
    end
    object quMainLRekBeban: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekBeban'
      Size = 200
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 588
    Top = 4
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      Enabled = False
      ShortCut = 120
      OnExecute = dxButton1Click
    end
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quMainBeforeEdit
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    DataSource = dsSub
    Parameters = <
      item
        Name = 'konsinyasiinvid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 75
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM aptrkonsinyasiinvdt'
      'WHERE konsinyasiinvid=:konsinyasiinvid and POID=:POID '
      '')
    Left = 396
    object quDetilKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 75
    end
    object quDetilSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quDetilKonsinyasiID: TStringField
      FieldName = 'KonsinyasiID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quDetilDisc: TFloatField
      FieldName = 'Disc'
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilFgNum: TIntegerField
      FieldName = 'FgNum'
    end
    object quDetilDiscItem: TBCDField
      FieldName = 'DiscItem'
      Precision = 18
    end
    object quDetiltypeunit: TStringField
      FieldName = 'typeunit'
      Size = 50
    end
    object quDetilnounit: TStringField
      FieldName = 'nounit'
      Size = 50
    end
    object quDetilPriceU: TBCDField
      FieldName = 'PriceU'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilFgPPH: TStringField
      FieldName = 'FgPPH'
      Size = 10
    end
    object quDetilFgNPWP: TStringField
      FieldName = 'FgNPWP'
      Size = 10
    end
    object quDetilFgJasa: TStringField
      FieldName = 'FgJasa'
      Size = 10
    end
    object quDetilLitemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LitemName'
      Size = 100
      Calculated = True
    end
    object quDetilLUOMID: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUOMID'
      Size = 100
      Calculated = True
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
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
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
    Left = 424
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from INMsItem order by ItemID')
    Left = 620
    Top = 4
  end
  object quSupplier: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM APMsSupplier')
    Left = 772
    Top = 5
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
    Left = 648
    Top = 4
  end
  object quKonsinyasiDt: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'select * from APTrKonsinyasiDt')
    Left = 676
    Top = 4
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
      end>
    SQL.Strings = (
      
        'SELECT KonsinyasiInvID,ROUND(SUM(K.Total+K.TotalU),0) as SubTota' +
        'l,ROUND(SUM(K.TotalU),0) as SubU,ROUND(SUM(K.TotalP),0) as SubP,' +
        'ROUND(SUM(K.TotalO),0) as SubO,'
      
        'ROUND(SUM((K.Total+K.TotalU+K.TotalO+K.TotalP)*K.Disc/100),0) as' +
        ' Disc,'
      
        'ROUND(SUM(CASE WHEN K.FgTax='#39'Y'#39' THEN ((K.Total+K.TotalU)-ROUND((' +
        'K.Total+K.TotalU)*K.Disc/100,0))*0.1 '
      
        'WHEN K.FgTax='#39'E'#39' THEN ((K.Total+K.TotalU)-ROUND((K.Total+K.Total' +
        'U)*K.Disc/100,0))*0.01 ELSE 0 END),0) as Pajak,'
      
        'ROUND(SUM((K.Total+K.TotalU+K.TotalO+K.TotalP)),0)-(ROUND(SUM((K' +
        '.Total+K.TotalU+K.TotalO+K.TotalP)*K.Disc/100),0))+'
      
        '(ROUND(SUM(CASE WHEN K.FgTax='#39'Y'#39' THEN ((K.Total+K.TotalU)-ROUND(' +
        '(K.Total+K.TotalU)*K.Disc/100,0))*0.1'
      
        'WHEN K.FgTax='#39'E'#39' THEN ((K.Total+K.TotalU)-ROUND((K.Total+K.Total' +
        'U)*K.Disc/100,0))*0.01 ELSE 0 END),0)) as Total,'
      'SUM((CASE WHEN K.FgPPh21='#39'Y'#39' THEN K.PPH21 ELSE 0 END)) as PPH21,'
      ''
      'SUM((CASE WHEN K.FgPPh23='#39'Y'#39' THEN K.PPH23 ELSE 0 END)) as PPH23,'
      ''
      'SUM(K.PPH42) as PPH42,'
      ''
      'SUM(K.PPH15) as PPh15,'
      ''
      'SUM((CASE WHEN K.FgPPh26='#39'Y'#39' THEN K.PPH26 ELSE 0 END)) as PPH26,'
      ''
      
        'ROUND(SUM(((K.Total+K.TotalU)+K.TotalO+K.TotalP)),0)-(ROUND(SUM(' +
        '((K.Total+K.TotalU)+K.TotalO+K.TotalP)*K.Disc/100),0))+'
      
        '(ROUND(SUM(CASE WHEN K.FgTax='#39'Y'#39' THEN (((K.Total+K.TotalU))-ROUN' +
        'D((K.Total+K.TotalU)*K.Disc/100,0))*0.1'
      
        'WHEN K.FgTax='#39'E'#39' THEN (((K.Total+K.TotalU))-ROUND((K.Total+K.Tot' +
        'alU)*K.Disc/100,0))*0.01 ELSE 0 END),0))-'
      
        'SUM(CASE WHEN K.FgPPh21='#39'Y'#39' THEN K.PPH21 ELSE 0 END)-SUM(CASE WH' +
        'EN K.FgPPh23='#39'Y'#39' THEN K.PPH23 ELSE 0 END)-'
      
        'SUM(K.PPH42)-SUM(K.PPH15)-ISNULL(K.Payment,0)-SUM((CASE WHEN K.F' +
        'gPPh26='#39'Y'#39' THEN K.PPH26 ELSE 0 END)) as GT'
      'FROM ('
      ''
      'select A.KonsinyasiInvID,A.POID,B.FgTax,B.Disc,C.Payment,'
      
        'ISNULL(SUM(CASE WHEN A.FgJasa='#39'T'#39' THEN A.Price*A.Qty ELSE 0 END)' +
        ',0) as Total,ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN A.Price*A.Qt' +
        'y ELSE 0 END),0) as TotalU,'
      
        'ISNULL(SUM(CASE WHEN A.FgJasa='#39'P'#39' THEN A.Price*A.Qty ELSE 0 END)' +
        ',0) as TotalP,ISNULL(SUM(CASE WHEN A.FgJasa='#39'O'#39' THEN A.Price*A.Q' +
        'ty ELSE 0 END),0) as TotalO,'
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH='#39'42'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*10/100' +
        ') '
      'WHEN A.FgPPH='#39'23B'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*15/100) '
      'WHEN A.FgPPH='#39'15'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*1.2/100)'
      'WHEN A.FgPPH='#39'26'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*20/100)'
      
        'WHEN A.FgPPH='#39'21'#39' THEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A.Pric' +
        'e*(1-B.Disc/100)*5/100 ELSE A.Qty*A.Price*(1-B.Disc/100)*6/100 E' +
        'ND) '
      
        'WHEN A.FgPPH='#39'23'#39' THEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A.Pric' +
        'e*(1-B.Disc/100)*2/100 ELSE A.Qty*A.Price*(1-B.Disc/100)*4/100 E' +
        'ND) '
      'ELSE 0 END) ELSE 0 END),0) as PPH,'
      ''
      
        'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN (CASE WHEN A.FgPPH='#39'21'#39' T' +
        'HEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A.Price*(1-B.Disc/100)*5/' +
        '100 ELSE A.Qty*A.Price*(1-B.Disc/100)*6/100 END) '
      'ELSE 0 END) ELSE 0 END),0) as PPH21,'
      ''
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH='#39'23'#39' THEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A' +
        '.Price*(1-B.Disc/100)*2/100 ELSE A.Qty*A.Price*(1-B.Disc/100)*4/' +
        '100 END)'
      
        'WHEN A.FgPPH='#39'23B'#39' THEN A.Qty*A.Price*(1-B.Disc/100)*15/100 ELSE' +
        ' 0 END) ELSE 0 END),0) as PPH23,'
      ''
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH='#39'15'#39' THEN A.Qty*A.Price*(1-B.Disc/100)*1.2/100' +
        ' ELSE 0 END) ELSE 0 END),0) as PPH15,'
      ''
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH='#39'42'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*10/100' +
        ') ELSE 0 END) ELSE 0 END),0) as PPH42,'
      ''
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      
        'CASE WHEN A.FgPPH='#39'26'#39' THEN (A.Qty*A.Price*(1-B.Disc/100)*20/100' +
        ') ELSE 0 END) ELSE 0 END),0) as PPH26,'
      ''
      'C.FGpph21,C.FGpph23,C.Fgpph15,C.FgPPh26'
      ''
      'from APTrKonsinyasiInvdt A '
      
        'inner join APTrKonsinyasiInvsub B on A.KonsinyasiInvID=B.Konsiny' +
        'asiInvID AND A.POID=B.POID'
      
        'inner join APTrKonsinyasiInvHd C on A.KonsinyasiInvID=C.Konsinya' +
        'siInvID'
      ''
      
        'GROUP BY A.POID,A.KonsinyasiInvID,B.FgTax,B.Disc,C.FGpph21,C.FGp' +
        'ph23,C.Payment,C.FgPPh15,C.FgPPh26'
      ''
      ') as K WHERE K.KonsinyasiInvID=:KonsinyasiInvID'
      'group by K.KonsinyasiInvID,K.Payment')
    Left = 668
    Top = 400
    object quTotalKonsinyasiInvId: TStringField
      FieldName = 'KonsinyasiInvId'
      Size = 50
    end
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalDisc: TBCDField
      FieldName = 'Disc'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalPPh23: TBCDField
      FieldName = 'PPh23'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalPPh21: TBCDField
      FieldName = 'PPh21'
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
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalSubU: TBCDField
      FieldName = 'SubU'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
    end
    object quTotalSubP: TBCDField
      FieldName = 'SubP'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalSubO: TBCDField
      FieldName = 'SubO'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalPPh15: TBCDField
      FieldName = 'PPh15'
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
    Top = 4
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 736
    Top = 4
  end
  object quSub: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforeInsert = quSubBeforeInsert
    BeforeEdit = quSubBeforeEdit
    BeforePost = quSubBeforePost
    AfterPost = quSubAfterPost
    BeforeDelete = quSubBeforeDelete
    OnCalcFields = quSubCalcFields
    OnNewRecord = quSubNewRecord
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
      'SELECT *'
      'FROM APTrKonsinyasiInvSub'
      'WHERE KonsinyasiInvID=:KonsinyasiInvID AND SuppID=:SuppID'
      '')
    Left = 316
    Top = 4
    object quSubKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quSubPOID: TStringField
      FieldName = 'POID'
      Size = 75
    end
    object quSubFgTax: TStringField
      FieldName = 'FgTax'
      Size = 50
    end
    object quSubDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubSubtotalM: TBCDField
      FieldName = 'SubtotalM'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubSubtotalU: TBCDField
      FieldName = 'SubtotalU'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubDiscAmount: TBCDField
      FieldName = 'DiscAmount'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quSubupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quSubupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quSubSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quSubLtanggal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ltanggal'
      Size = 100
      Calculated = True
    end
    object quSubfgpph42: TStringField
      FieldName = 'fgpph42'
      Size = 10
    end
    object quSubpbbkb: TBCDField
      FieldName = 'pbbkb'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubongkir: TBCDField
      FieldName = 'ongkir'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quSubSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
  end
  object dsSub: TDataSource
    DataSet = quSub
    OnStateChange = dsSubStateChange
    Left = 344
    Top = 4
  end
  object quTotalSub: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsSub
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
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 75
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ROUND(K.Total,0) as SubTotal,ROUND(K.Ongkir,0) as Ongkir,' +
        'ROUND(K.PBBKB,0) as PBBKB,K.TotalU as SubTotalU,'
      
        'ROUND(((K.Total+K.TotalU)+K.PBBKB+K.Ongkir)*K.Disc/100,0) as Dis' +
        'c,'
      
        'ROUND(CASE WHEN K.FgTax='#39'Y'#39' THEN (ROUND((K.Total+K.TotalU),0)-RO' +
        'UND((K.Total+K.TotalU)*K.Disc/100,0))*0.1 '
      
        'WHEN K.FgTax='#39'E'#39' THEN (ROUND(K.Total+K.TotalU,0)-ROUND((K.Total+' +
        'K.TotalU)*K.Disc/100,0))*0.01 ELSE 0 END,0) as Pajak,'
      
        'ROUND(((K.Total+K.TotalU)+K.PBBKB+K.Ongkir),0)-(ROUND(((K.Total+' +
        'K.TotalU)+K.PBBKB+K.Ongkir)*K.Disc/100,0))+'
      
        '(ROUND(CASE WHEN K.FgTax='#39'Y'#39' THEN (ROUND((K.Total+K.TotalU),0)-R' +
        'OUND((K.Total+K.TotalU)*K.Disc/100,0))*0.1 '
      
        'WHEN K.FgTax='#39'E'#39' THEN (ROUND((K.Total+K.TotalU),0)-ROUND((K.Tota' +
        'l+K.TotalU)*K.Disc/100,0))*0.01 ELSE 0 END,0)) as GT'
      'FROM ('
      'select A.KonsinyasiInvID,A.POID,B.FgTax,B.Disc,'
      
        'ISNULL(SUM(CASE WHEN A.FgJasa='#39'T'#39' THEN A.Price*A.Qty ELSE 0 END)' +
        ',0) as Total,ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN A.Price*A.Qt' +
        'y ELSE 0 END),0) as TotalU,'
      
        'ISNULL(SUM(CASE WHEN A.FgJasa='#39'O'#39' THEN A.Price*A.Qty ELSE 0 END)' +
        ',0) as Ongkir,ISNULL(SUM(CASE WHEN A.FgJasa='#39'P'#39' THEN A.Price*A.Q' +
        'ty ELSE 0 END),0) as PBBKB,'
      'ISNULL(SUM(CASE WHEN A.FgJasa='#39'Y'#39' THEN ('
      'CASE WHEN A.FgPPH='#39'42'#39' THEN (A.Qty*A.Price*10/100) '
      'WHEN A.FgPPH='#39'23B'#39' THEN (A.Qty*A.Price*15/100) '
      'WHEN A.FgPPH='#39'23B'#39' THEN (A.Qty*A.Price*1.2/100)'
      
        'WHEN A.FgPPH='#39'21'#39' THEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A.Pric' +
        'e*50/100*5/100 ELSE A.Qty*A.Price*50/100*6/100 END) '
      
        'WHEN A.FgPPH='#39'23'#39' THEN (CASE WHEN A.FgNPWP='#39'Y'#39' THEN A.Qty*A.Pric' +
        'e*2/100 ELSE A.Qty*A.Price*4/100 END) ELSE 0 END) ELSE 0 END),0)' +
        ' as PPH'
      
        'from APTrKonsinyasiInvdt A inner join APTrKonsinyasiInvsub B on ' +
        'A.KonsinyasiInvID=B.KonsinyasiInvID AND A.POID=B.POID'
      'GROUP BY A.POID,A.KonsinyasiInvID,B.FgTax,B.Disc ) as K'
      'Where KonsinyasiInvID=:KonsinyasiInvID AND POID=:POID')
    Left = 740
    Top = 400
    object quTotalSubSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalSubSubTotalU: TBCDField
      FieldName = 'SubTotalU'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalSubDisc: TBCDField
      FieldName = 'Disc'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalSubPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalSubGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 6
    end
    object quTotalSubOngkir: TBCDField
      FieldName = 'Ongkir'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
    object quTotalSubPBBKB: TBCDField
      FieldName = 'PBBKB'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 32
      Size = 8
    end
  end
  object dsTotalSub: TDataSource
    DataSet = quTotalSub
    OnStateChange = dsDetilStateChange
    Left = 768
    Top = 400
  end
  object quCetak: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 540
    Top = 52
  end
end
