inherited fmAPTrPurchaseOrder: TfmAPTrPurchaseOrder
  Left = 275
  Top = 109
  Caption = 'Purchase Order'
  ClientHeight = 595
  ClientWidth = 1124
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 546
    inherited pa3: TdxContainer
      Height = 367
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 583
    Width = 1124
  end
  inherited pa2: TdxContainer
    Height = 546
  end
  inherited dxContainer7: TdxContainer
    Width = 931
    Height = 546
    inherited pcParent: TdxPageControl
      Width = 931
      Height = 546
      inherited ts01: TdxTabSheet
        object DBText1: TDBText [0]
          Left = 202
          Top = 81
          Width = 61
          Height = 19
          AutoSize = True
          DataField = 'LuSuppName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel [1]
          Left = 19
          Top = 21
          Width = 52
          Height = 19
          Alignment = taRightJustify
          Caption = 'PO ID :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [2]
          Left = 29
          Top = 51
          Width = 42
          Height = 19
          Alignment = taRightJustify
          Caption = 'Date :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [3]
          Left = 7
          Top = 81
          Width = 64
          Height = 19
          Alignment = taRightJustify
          Caption = 'Supplier :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [4]
          Left = 29
          Top = 139
          Width = 42
          Height = 19
          Alignment = taRightJustify
          Caption = 'Note :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel [5]
          Left = 3
          Top = 173
          Width = 150
          Height = 19
          Caption = 'Detail Purchase Order'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Shape6: TShape [6]
          Left = 630
          Top = 380
          Width = 298
          Height = 33
          Brush.Color = 15259016
        end
        object Label3: TLabel [7]
          Left = 693
          Top = 387
          Width = 68
          Height = 19
          Alignment = taRightJustify
          Caption = 'Total PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText [8]
          Left = 804
          Top = 388
          Width = 118
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel [9]
          Left = 57
          Top = 655
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'No PR :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Shape3: TShape [10]
          Left = 630
          Top = 476
          Width = 298
          Height = 33
          Brush.Color = 15259016
        end
        object Label9: TLabel [11]
          Left = 636
          Top = 483
          Width = 125
          Height = 19
          Alignment = taRightJustify
          Caption = 'TAX                      :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText6: TDBText [12]
          Left = 804
          Top = 484
          Width = 118
          Height = 16
          Alignment = taRightJustify
          DataField = 'Pajak'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape [13]
          Left = 630
          Top = 508
          Width = 298
          Height = 33
          Brush.Color = 15259016
        end
        object Label12: TLabel [14]
          Left = 636
          Top = 515
          Width = 125
          Height = 19
          Alignment = taRightJustify
          Caption = 'Grand Total PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText7: TDBText [15]
          Left = 804
          Top = 516
          Width = 118
          Height = 16
          Alignment = taRightJustify
          DataField = 'GrandTotalPO'
          DataSource = dsTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel [16]
          Left = 195
          Top = 51
          Width = 38
          Height = 19
          Alignment = taRightJustify
          Caption = 'ETA :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape5: TShape [17]
          Left = 630
          Top = 412
          Width = 298
          Height = 33
          Brush.Color = 15259016
        end
        object Label6: TLabel [18]
          Left = 722
          Top = 419
          Width = 39
          Height = 19
          Alignment = taRightJustify
          Caption = 'Disc :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Shape7: TShape [19]
          Left = 630
          Top = 444
          Width = 298
          Height = 33
          Brush.Color = 15259016
        end
        object Label7: TLabel [20]
          Left = 656
          Top = 451
          Width = 105
          Height = 19
          Alignment = taRightJustify
          Caption = 'SubTotal PO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText [21]
          Left = 804
          Top = 452
          Width = 118
          Height = 16
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
        object DBText8: TDBText [22]
          Left = 458
          Top = 665
          Width = 77
          Height = 13
          Alignment = taRightJustify
          DataField = 'priceB'
          Visible = False
        end
        object DBText9: TDBText [23]
          Left = 458
          Top = 681
          Width = 77
          Height = 13
          Alignment = taRightJustify
          DataField = 'priceK'
          Visible = False
        end
        object Label15: TLabel [24]
          Left = 361
          Top = 649
          Width = 227
          Height = 13
          Caption = 'Harga beli terakhir (Jakarta / Surabaya)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label16: TLabel [25]
          Left = 369
          Top = 665
          Width = 59
          Height = 13
          Caption = 'Harga Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label17: TLabel [26]
          Left = 369
          Top = 681
          Width = 55
          Height = 13
          Caption = 'Harga Kecil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label18: TLabel [27]
          Left = 433
          Top = 665
          Width = 20
          Height = 13
          Caption = ': Rp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label19: TLabel [28]
          Left = 433
          Top = 681
          Width = 20
          Height = 13
          Caption = ': Rp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label20: TLabel [29]
          Left = 361
          Top = 695
          Width = 293
          Height = 13
          Caption = 'Note : kalau haga yang ditampilkan kosong berarti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label21: TLabel [30]
          Left = 361
          Top = 711
          Width = 225
          Height = 13
          Caption = 'pernah beli dari Jakarta atau surabaya'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label23: TLabel [31]
          Left = 19
          Top = 109
          Width = 52
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valuta :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel [32]
          Left = 277
          Top = 109
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
        object DBText12: TDBText [33]
          Left = 765
          Top = 387
          Width = 69
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText13: TDBText [34]
          Left = 765
          Top = 419
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
        end
        object DBText14: TDBText [35]
          Left = 765
          Top = 451
          Width = 74
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText15: TDBText [36]
          Left = 765
          Top = 515
          Width = 74
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText16: TDBText [37]
          Left = 765
          Top = 483
          Width = 74
          Height = 19
          AutoSize = True
          Color = 15259016
          DataField = 'CurrID'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label24: TLabel [38]
          Left = 234
          Top = 465
          Width = 29
          Height = 19
          Alignment = taRightJustify
          Caption = 'DP :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label25: TLabel [39]
          Left = 219
          Top = 497
          Width = 44
          Height = 19
          Alignment = taRightJustify
          Caption = 'Term :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        inherited bbSave: TdxButton
          Left = 744
          Top = 171
          Height = 23
          Caption = 'Save (F3)'
        end
        inherited bbCancel: TdxButton
          Left = 825
          Top = 171
          Height = 23
          Caption = 'Cancel (Esc)'
        end
        object dbg: TdxDBGrid
          Left = 1
          Top = 196
          Width = 929
          Height = 178
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'List Item(s)'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KonTransBrgID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = dbgEnter
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
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
          object dbgPOID: TdxDBGridMaskColumn
            Visible = False
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dbgItemID: TdxDBGridButtonColumn
            Caption = 'Item ID'
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgItemIDButtonClick
          end
          object dbgLuItemName: TdxDBGridColumn
            Caption = 'Item Name'
            ReadOnly = True
            TabStop = False
            Width = 267
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LuItemName'
          end
          object dbgPRID: TdxDBGridButtonColumn
            Caption = 'Nota PR'
            Width = 169
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
            Caption = 'Qty'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgUOMID: TdxDBGridButtonColumn
            Caption = 'Unit'
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMIDButtonClick
          end
          object dbgDisc2: TdxDBGridColumn
            Caption = 'Disc 2'
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc2'
          end
          object dbgDisc3: TdxDBGridColumn
            Caption = 'Disc 3'
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc3'
          end
          object dbgPrice: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Price'
          end
          object dbgUpdDate: TdxDBGridDateColumn
            Visible = False
            Width = 144
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgDisc: TdxDBGridColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc'
          end
          object dbgUpdUser: TdxDBGridMaskColumn
            Visible = False
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgCTotal: TdxDBGridColumn
            Caption = 'Total'
            ReadOnly = True
            TabStop = False
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CTotal'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 3
          Top = 376
          Width = 87
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Item'
          TabOrder = 3
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 90
          Top = 376
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Item'
          TabOrder = 4
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 178
          Top = 376
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Save'
          TabOrder = 5
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 266
          Top = 376
          Width = 88
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Cancel'
          TabOrder = 6
          TabStop = False
        end
        object bbCetak: TdxButton
          Tag = 4444
          Left = 370
          Top = 376
          Width = 175
          Height = 22
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbCetakClick
          Caption = 'Print'
          TabOrder = 7
          TabStop = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 82
          Top = 15
          Width = 173
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          CharCase = ecUpperCase
          DataField = 'POID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 82
          Top = 45
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 238
          Top = 45
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'TglKirim'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 82
          Top = 75
          Width = 117
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
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
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 106
          Top = 651
          Width = 215
          TabOrder = 12
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
        object dxDBEdit2: TdxDBEdit
          Left = 82
          Top = 135
          Width = 711
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit4: TdxDBEdit
          Left = 805
          Top = 413
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Disc'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBPajak: TdxDBImageEdit
          Left = 678
          Top = 477
          Width = 49
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnKeyPress = dxDBDateEdit1KeyPress
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
        object ceBerat: TdxCheckEdit
          Left = 609
          Top = 707
          Width = 101
          ParentShowHint = False
          ShowHint = False
          TabOrder = 16
          TabStop = False
          Visible = False
          Caption = 'Tampilkan berat'
          StyleController = SCCheckEdit
        end
        object CePOLokal: TdxCheckEdit
          Left = 537
          Top = 723
          Width = 120
          ParentShowHint = False
          ShowHint = False
          TabOrder = 17
          TabStop = False
          Visible = False
          Caption = 'PO Non Local'
          StyleController = SCCheckEdit
          State = cbsChecked
        end
        object CePOPrice: TdxCheckEdit
          Left = 361
          Top = 722
          Width = 168
          ParentShowHint = False
          ShowHint = False
          TabOrder = 18
          TabStop = False
          Visible = False
          Caption = 'Tampilkan Harga PO Terakhir'
          StyleController = SCCheckEdit
          State = cbsChecked
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 82
          Top = 105
          Width = 117
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
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
          Left = 322
          Top = 105
          Width = 119
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Kurs'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox1: TGroupBox
          Left = 672
          Top = 6
          Width = 249
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
          object Label10: TLabel
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
          object DBText3: TDBText
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
          object Label11: TLabel
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
          object DBText4: TDBText
            Left = 69
            Top = 30
            Width = 174
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
        object dbTerm: TDBRadioGroup
          Left = 10
          Top = 404
          Width = 200
          Height = 119
          Caption = '[ Term of Payment ]'
          Ctl3D = False
          DataField = 'FgTerm'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Items.Strings = (
            'Cash On Delivery'
            'Cash Before Delivery'
            'DP'
            'Term')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
          OnChange = dbTermChange
        end
        object dxDBEdit5: TdxDBEdit
          Left = 266
          Top = 461
          Width = 119
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'DP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit6: TdxDBEdit
          Left = 266
          Top = 493
          Width = 119
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          Visible = False
          OnKeyPress = dxDBDateEdit1KeyPress
          DataField = 'Term'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1124
    inherited sbLast: TSpeedButton
      Left = 1087
    end
    inherited sbNext: TSpeedButton
      Left = 1060
    end
    inherited sbPrev: TSpeedButton
      Left = 1033
    end
    inherited sbFirst: TSpeedButton
      Left = 1006
    end
    inherited sbPeriod: TSpeedButton
      Left = 980
    end
    inherited BvlPeriod: TBevel
      Left = 734
    end
    inherited laPeriod: TLabel
      Left = 738
    end
  end
  inherited quAct: TADOQuery
    Left = 276
  end
  inherited quMain: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM APTrPurchaseOrderHD')
    object quMainPOID: TStringField
      FieldName = 'POID'
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quMainSuppID: TStringField
      FieldName = 'SuppID'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
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
      Precision = 18
    end
    object quMainFgEdit: TStringField
      FieldName = 'FgEdit'
      FixedChar = True
      Size = 10
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      Caption = 'Simpan (F3)'
    end
    inherited ActCancel: TAction
      Caption = 'Batal (F4)'
    end
  end
  inherited quDetil: TADOQuery
    CursorType = ctStatic
    BeforeEdit = quDetilBeforeEdit
    AfterPost = quMainAfterPost
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
        Value = 'PO/SMI/1803/0001'
      end>
    SQL.Strings = (
      'SELECT * FROM APTrPurchaseOrderDt'
      'WHERE POID=:POID ')
    Left = 316
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
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
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
    object quDetilJumlah: TIntegerField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      EditFormat = '#,0'
    end
    object quDetilCTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
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
    end
    object quDetilLuItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuItemName'
      Size = 200
      Calculated = True
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
      
        'SELECT isnull(round((K.T-K.D1-K.D2-K.D3),0),0) as Total,isnull(r' +
        'ound((K.T-K.D1-K.D2-K.D3)-K.Disc,0),0) as SubTotal,isnull(CASE W' +
        'HEN K.FgTax='#39'Y'#39' THEN ((K.T-K.D1-K.D2-K.D3)-K.Disc)*0.1 ELSE 0 EN' +
        'D,0) as Pajak,'
      
        'isnull(round(CASE WHEN K.FgTax='#39'Y'#39' THEN ((K.T-K.D1-K.D2-K.D3)-K.' +
        'Disc)+(((K.T-K.D1-K.D2-K.D3)-K.Disc)*0.1) ELSE (K.T-K.D1-K.D2-K.' +
        'D3)-K.Disc END,0),0) as GrandTotalPO, '
      
        'isnull(round(CASE WHEN K.FgTax='#39'Y'#39' THEN ((K.T-K.D1-K.D2-K.D3)-K.' +
        'Disc)+(((K.T-K.D1-K.D2-K.D3)-K.Disc)*0.1) ELSE (K.T-K.D1-K.D2-K.' +
        'D3)-K.Disc END,0)*K.Kurs,0) as GrandTotal '
      'FROM ('
      
        'SELECT B.POID,B.FgTax,SUM(A.Jumlah*A.Price) as T,SUM(A.Jumlah*A.' +
        'Price)*A.Disc/100 as D1,B.Kurs,'
      
        '(SUM(A.Jumlah*A.Price)-(SUM(A.Jumlah*A.Price)*A.Disc))*A.Disc2/1' +
        '00 as D2,'
      '(SUM(A.Jumlah*A.Price)-(SUM(A.Jumlah*A.Price)*A.Disc)-'
      
        '((SUM(A.Jumlah*A.Price)-(SUM(A.Jumlah*A.Price)*A.Disc))*A.Disc2/' +
        '100))*A.Disc3/100 as D3,ISNULL(B.Disc,0) as Disc '
      'FROM APTrPurchaseOrderDT A'
      'INNER JOIN APTrPurchaseOrderHD B ON A.POID=B.POID'
      
        'GROUP BY B.POID,B.FgTax,B.Disc,A.Disc,A.Disc2,A.Disc3,B.Kurs) as' +
        ' K'
      'Where K.POID=:POID')
    Left = 512
    Top = 301
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalSubTotal: TBCDField
      FieldName = 'SubTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalPajak: TBCDField
      FieldName = 'Pajak'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
      Size = 5
    end
    object quTotalGrandTotal: TBCDField
      FieldName = 'GrandTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quTotalGrandTotalPO: TBCDField
      FieldName = 'GrandTotalPO'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
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
    Left = 548
    Top = 88
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,A.ItemName,A.ItemName2,A.ProductID,A.GroupID, '
      'B.ProductDesc,C.GroupDesc,A.UOMID,A.UOMID2'
      'FROM INMsItem A'
      'INNER JOIN INMsProduct B ON A.ProductID = B.ProductID'
      'INNER JOIN INMsGroup C ON A.GroupID = C.GroupID'
      '')
    Left = 576
    Top = 88
    object quItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object quItemItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quItemProductID: TStringField
      FieldName = 'ProductID'
    end
    object quItemGroupID: TStringField
      FieldName = 'GroupID'
    end
    object quItemProductDesc: TStringField
      FieldName = 'ProductDesc'
      Size = 150
    end
    object quItemGroupDesc: TStringField
      FieldName = 'GroupDesc'
      Size = 200
    end
    object quItemUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quItemUOMID2: TStringField
      FieldName = 'UOMID2'
    end
  end
  object quCalc: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 276
    Top = 52
  end
end
