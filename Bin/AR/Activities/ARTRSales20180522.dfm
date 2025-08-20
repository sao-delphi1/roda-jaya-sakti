inherited fmARTRSales: TfmARTRSales
  Left = 246
  Top = 205
  Caption = 'Sales Order'
  ClientHeight = 555
  ClientWidth = 1148
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 506
    inherited pa3: TdxContainer
      Height = 327
    end
  end
  inherited paBottom: TdxContainer
    Top = 543
    Width = 1148
  end
  inherited pa2: TdxContainer
    Height = 506
  end
  inherited dxContainer7: TdxContainer
    Width = 955
    Height = 506
    inherited pcParent: TdxPageControl
      Width = 955
      Height = 506
      inherited ts01: TdxTabSheet
        object Shape3: TShape [0]
          Left = 538
          Top = 429
          Width = 415
          Height = 25
          Brush.Color = 13676331
        end
        object DBText3: TDBText [1]
          Left = 273
          Top = 161
          Width = 63
          Height = 20
          AutoSize = True
          DataField = 'LSalesName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText [2]
          Left = 273
          Top = 131
          Width = 61
          Height = 20
          AutoSize = True
          DataField = 'LuCustomer'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText [3]
          Left = 273
          Top = 101
          Width = 63
          Height = 20
          AutoSize = True
          DataField = 'LuLocation'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText [4]
          Left = 201
          Top = 41
          Width = 63
          Height = 20
          AutoSize = True
          DataField = 'LuCurrName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [5]
          Left = 16
          Top = 13
          Width = 35
          Height = 20
          Caption = 'Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel [6]
          Left = 16
          Top = 43
          Width = 45
          Height = 20
          Caption = 'Valuta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [7]
          Left = 16
          Top = 73
          Width = 54
          Height = 20
          Caption = 'Tanggal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel [8]
          Left = 16
          Top = 103
          Width = 51
          Height = 20
          Caption = 'Gudang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [9]
          Left = 16
          Top = 133
          Width = 68
          Height = 20
          Caption = 'Pelanggan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel [10]
          Left = 17
          Top = 163
          Width = 37
          Height = 20
          Caption = 'Sales'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [11]
          Left = 16
          Top = 193
          Width = 88
          Height = 19
          Alignment = taRightJustify
          Caption = 'Keterangan :'
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
        object Label13: TLabel [12]
          Left = 99
          Top = 163
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
        object Label9: TLabel [13]
          Left = 99
          Top = 133
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
        object Label8: TLabel [14]
          Left = 99
          Top = 103
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
        object Label7: TLabel [15]
          Left = 99
          Top = 73
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
        object Label6: TLabel [16]
          Left = 99
          Top = 13
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
        object Label11: TLabel [17]
          Left = 99
          Top = 43
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
        object Shape5: TShape [18]
          Left = 538
          Top = 453
          Width = 415
          Height = 25
          Brush.Color = 13676331
        end
        object Shape4: TShape [19]
          Left = 538
          Top = 405
          Width = 415
          Height = 25
          Brush.Color = 13676331
        end
        object Shape6: TShape [20]
          Left = 538
          Top = 379
          Width = 415
          Height = 27
          Brush.Color = 13676331
        end
        object Label14: TLabel [21]
          Left = 549
          Top = 384
          Width = 135
          Height = 19
          Alignment = taRightJustify
          Caption = 'SUBTOTAL NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel [22]
          Left = 549
          Top = 410
          Width = 141
          Height = 19
          Alignment = taRightJustify
          Caption = 'DISCOUNT              '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText [23]
          Left = 791
          Top = 385
          Width = 150
          Height = 17
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel [24]
          Left = 812
          Top = 384
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
        object Label18: TLabel [25]
          Left = 812
          Top = 410
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
        object Label19: TLabel [26]
          Left = 812
          Top = 457
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
        object Label22: TLabel [27]
          Left = 812
          Top = 434
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
        object DBText6: TDBText [28]
          Left = 791
          Top = 435
          Width = 150
          Height = 15
          Alignment = taRightJustify
          DataField = 'GT'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel [29]
          Left = 549
          Top = 434
          Width = 166
          Height = 19
          Alignment = taRightJustify
          Caption = 'GRAND TOTAL NOTA '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel [30]
          Left = 695
          Top = 408
          Width = 26
          Height = 19
          Alignment = taRightJustify
          Caption = '(%)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText8: TDBText [31]
          Left = 791
          Top = 409
          Width = 150
          Height = 17
          Alignment = taRightJustify
          DataField = 'Discount'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel [32]
          Left = 270
          Top = 73
          Width = 93
          Height = 20
          Caption = 'Tanggal Kirim'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel [33]
          Left = 391
          Top = 73
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
        object Label10: TLabel [34]
          Left = 549
          Top = 458
          Width = 72
          Height = 19
          Alignment = taRightJustify
          Caption = 'PPN 10%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText11: TDBText [35]
          Left = 824
          Top = 457
          Width = 118
          Height = 17
          Alignment = taRightJustify
          DataField = 'PPN'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel [36]
          Left = 324
          Top = 43
          Width = 55
          Height = 20
          Alignment = taRightJustify
          Caption = 'PO Cust'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel [37]
          Left = 391
          Top = 43
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
        object Shape8: TShape [38]
          Left = 538
          Top = 477
          Width = 415
          Height = 27
          Brush.Color = 13676331
        end
        object Label16: TLabel [39]
          Left = 549
          Top = 481
          Width = 84
          Height = 19
          Alignment = taRightJustify
          Caption = 'SISA NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel [40]
          Left = 812
          Top = 482
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
        object DBText7: TDBText [41]
          Left = 745
          Top = 482
          Width = 196
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object dxDBPajak: TdxDBImageEdit [42]
          Left = 629
          Top = 455
          Width = 49
          TabOrder = 20
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
        end
        inherited bbSave: TdxButton
          Left = 672
          Top = 124
          Width = 112
          Height = 37
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
        end
        inherited bbCancel: TdxButton
          Left = 792
          Top = 124
          Width = 112
          Height = 37
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Caption = 'BATAL (ESC)'
        end
        object dxDBEdit1: TdxDBEdit
          Left = 113
          Top = 7
          Width = 192
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          CharCase = ecUpperCase
          DataField = 'POID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 113
          Top = 37
          Width = 80
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          DataField = 'CurrID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          ExistButtons = True
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 113
          Top = 67
          Width = 152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 113
          Top = 97
          Width = 152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          DataField = 'WareHouseID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          ExistButtons = True
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 113
          Top = 127
          Width = 152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          DataField = 'CustID'
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
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 113
          Top = 157
          Width = 152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          DataField = 'SalesID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 113
          Top = 187
          Width = 728
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Visible = False
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dbg: TdxDBGrid
          Left = -1
          Top = 188
          Width = 954
          Height = 183
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Detail Sales Order'
              Width = 915
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'POID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -16
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Times New Roman'
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
            ClickKey = 113
            OnButtonClick = dbgItemIDButtonClick
          end
          object dbgTipe: TdxDBGridColumn
            Caption = 'Tipe'
            Visible = False
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LuTipe'
          end
          object dbgItemName: TdxDBGridColumn
            Caption = 'Nama Barang'
            Color = clWhite
            ReadOnly = True
            TabStop = False
            Width = 270
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dbgQty: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgUOMID: TdxDBGridButtonColumn
            Caption = 'Unit'
            Color = clWhite
            ReadOnly = True
            TabStop = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMIDButtonClick
          end
          object dbgHarga: TdxDBGridColumn
            Caption = 'Harga'
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgFgTax: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Tax'
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Fgtax'
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
          object dbgTotal: TdxDBGridColumn
            Caption = 'Total'
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ATotal'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 6
          Top = 378
          Width = 94
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 10
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 102
          Top = 378
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 11
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 194
          Top = 378
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 12
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 286
          Top = 378
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 13
          TabStop = False
        end
        object dxButton3: TdxButton
          Tag = 4444
          Left = 405
          Top = 378
          Width = 104
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = dxButton3Click
          Caption = 'Cetak(F9)'
          TabOrder = 14
          TabStop = False
        end
        object dxButton5: TdxButton
          Left = 535
          Top = 539
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
          Caption = 'Multi'
          TabOrder = 15
          TabStop = False
        end
        object dxButton4: TdxButton
          Tag = 4444
          Left = 627
          Top = 538
          Width = 90
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          Caption = 'Ubah No'
          TabOrder = 16
          TabStop = False
        end
        object dxDBEdit7: TdxDBEdit
          Left = 638
          Top = 407
          Width = 53
          TabOrder = 17
          TabStop = False
          DataField = 'Discount'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox2: TGroupBox
          Left = 672
          Top = 9
          Width = 249
          Height = 72
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 18
          object Label21: TLabel
            Left = 27
            Top = 18
            Width = 41
            Height = 20
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 77
            Top = 17
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 14
            Top = 38
            Width = 55
            Height = 20
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 78
            Top = 38
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 397
          Top = 67
          Width = 152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          DataField = 'TglKirim'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBEdit4: TdxDBEdit
          Left = 397
          Top = 37
          Width = 192
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          CharCase = ecUpperCase
          DataField = 'POCust'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1148
    inherited sbLast: TSpeedButton
      Left = 1111
    end
    inherited sbNext: TSpeedButton
      Left = 1084
    end
    inherited sbPrev: TSpeedButton
      Left = 1057
    end
    inherited sbFirst: TSpeedButton
      Left = 1030
    end
    inherited sbPeriod: TSpeedButton
      Left = 1004
    end
    inherited BvlPeriod: TBevel
      Left = 758
    end
    inherited laPeriod: TLabel
      Left = 762
    end
  end
  inherited quMain: TADOQuery
    BeforeEdit = quMainBeforeEdit
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from artrpurchaseorderhd A')
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainTTLSO: TBCDField
      FieldName = 'TTLSO'
      Precision = 18
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      Size = 1
    end
    object quMainTglKirim: TDateTimeField
      FieldName = 'TglKirim'
    end
    object quMainFgCetak: TStringField
      FieldName = 'FgCetak'
      Size = 1
    end
    object quMainProductID: TStringField
      FieldName = 'ProductID'
    end
    object quMainTaxAmount: TBCDField
      FieldName = 'TaxAmount'
      Precision = 18
      Size = 0
    end
    object quMainDiscType: TWordField
      FieldName = 'DiscType'
    end
    object quMainDiscAmount: TBCDField
      FieldName = 'DiscAmount'
      Precision = 18
      Size = 0
    end
    object quMainDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 18
      Size = 0
    end
    object quMainDP: TBCDField
      FieldName = 'DP'
      Precision = 18
      Size = 0
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
      Size = 200
    end
    object quMainAdministrasi: TBCDField
      FieldName = 'Administrasi'
      Precision = 18
      Size = 0
    end
    object quMainWareHouseID: TStringField
      FieldName = 'WareHouseID'
      Size = 50
    end
    object quMainJenis: TStringField
      FieldName = 'Jenis'
      Size = 50
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      Size = 50
    end
    object quMainLuCurrName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuCurrName'
      Size = 200
      Calculated = True
    end
    object quMainLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 200
      Calculated = True
    end
    object quMainLuLocation: TStringField
      FieldKind = fkLookup
      FieldName = 'LuLocation'
      LookupDataSet = quGudang
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'WarehouseName'
      KeyFields = 'WareHouseID'
      Size = 200
      Lookup = True
    end
    object quMainLuCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LuCustomer'
      LookupDataSet = quCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object quMainPOCust: TStringField
      FieldName = 'POCust'
      Size = 50
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 4
  end
  inherited quDetil: TADOQuery
    BeforeInsert = quDetilBeforeInsert
    BeforeEdit = quDetilBeforeEdit
    BeforeDelete = quDetilBeforeDelete
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'poid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from artrpurchaseorderdt where poid=:poid')
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      OnChange = quDetilItemIDChange
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
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
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
      OnChange = quDetilUOMIDChange
    end
    object quDetilATotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ATotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilFgtax: TStringField
      FieldName = 'Fgtax'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
  object quGudang: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 524
    Top = 156
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsItem A')
    Left = 552
    Top = 156
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 524
    Top = 180
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 568
    Top = 188
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 596
    Top = 188
  end
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 624
    Top = 188
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 652
    Top = 188
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
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select SUM(K.SubTotal) as SubTotal,SUM(K.SubTotal)*K.Discount*0.' +
        '01 as Discount,SUM(K.SubTotal)-(SUM(K.SubTotal)*K.Discount*0.01)' +
        ' as GT,'
      
        'CASE WHEN K.FgTax='#39'Y'#39' THEN (SUM(K.SubTotal)-(SUM(K.SubTotal)*K.D' +
        'iscount*0.01))*0.1 ELSE 0 END as PPN,'
      
        'CASE WHEN K.FgTax='#39'Y'#39' THEN SUM(K.SubTotal)-(SUM(K.SubTotal)*K.Di' +
        'scount*0.01)+((SUM(K.SubTotal)-(SUM(K.SubTotal)*K.Discount*0.01)' +
        ')*0.1) ELSE SUM(K.SubTotal)-(SUM(K.SubTotal)*K.Discount*0.01) EN' +
        'D as Total'
      'FROM ('
      
        'select B.POID,CASE WHEN B.FgTax='#39'Y'#39' then (B.Qty*B.Price)*1.1 els' +
        'e (B.Qty*B.Price) END as SubTotal,ISNULL(A.Discount,0) as Discou' +
        'nt,ISNULL(A.FgTax,'#39'T'#39') as FgTax from ARTrPurchaseOrderHD A '
      'Inner Join ARTrPurchaseOrderDt B on A.POID=B.POID ) as K'
      'WHERE K.POID=:POID'
      'Group BY K.Discount,K.Fgtax')
    Left = 560
    Top = 448
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalDiscount: TBCDField
      FieldName = 'Discount'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalGT: TBCDField
      FieldName = 'GT'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalPPN: TBCDField
      FieldName = 'PPN'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 6
    end
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    Left = 588
    Top = 448
  end
end
