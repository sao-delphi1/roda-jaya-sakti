inherited fmARTrPiutangIDR: TfmARTrPiutangIDR
  Left = 393
  Top = 30
  Caption = 'Pembayaran Piutang'
  ClientHeight = 588
  ClientWidth = 869
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 539
    inherited pa3: TdxContainer
      Height = 360
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 576
    Width = 869
  end
  inherited pa2: TdxContainer
    Height = 539
  end
  inherited pcMain: TdxPageControl
    Width = 676
    Height = 539
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 779
        Height = 509
        Filter.Criteria = {00000000}
        object dbgListPiutangID: TdxDBGridMaskColumn
          Caption = 'Nota Pembayaran Piutang'
          Width = 152
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PiutangID'
        end
        object dbgListTransDate: TdxDBGridDateColumn
          Caption = 'Tanggal'
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TransDate'
        end
        object dbgListCustID: TdxDBGridMaskColumn
          Caption = 'Kode Pelanggan'
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustID'
        end
        object dbgListColumn8: TdxDBGridColumn
          Caption = 'Nama Pelanggan'
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CustName'
        end
        object dbgListValutaID: TdxDBGridMaskColumn
          Caption = 'Valuta'
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CurrId'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 166
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        Width = 676
        Height = 516
        inherited ts0201: TdxTabSheet
          DesignSize = (
            676
            516)
          object DBText4: TDBText [0]
            Left = 281
            Top = 6
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
          object dxDBGrid1: TdxDBGrid [1]
            Left = 0
            Top = 224
            Width = 676
            Height = 252
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Detail Pembayaran Piutang'
                Width = 364
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
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
            HeaderFont.Style = [fsBold]
            LookAndFeel = lfUltraFlat
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowBands = True
            object dxDBGrid1PenjualanID: TdxDBGridButtonColumn
              Caption = 'Invoice'
              Width = 209
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SaleID'
              Buttons = <
                item
                  Default = True
                end>
              ClickKey = 113
              OnButtonClick = dxDBGrid1PenjualanIDButtonClick
            end
            object dxDBGrid1tgl: TdxDBGridColumn
              Caption = 'Tgl Nota'
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CTgl'
            end
            object dxDBGrid1CustName: TdxDBGridColumn
              Caption = 'Nama Pelanggan'
              Visible = False
              Width = 215
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CustName'
            end
            object dxDBGrid1UpdDate: TdxDBGridDateColumn
              Visible = False
              Width = 135
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdDate'
            end
            object dxDBGrid1ValuePayment: TdxDBGridColumn
              Caption = 'Nilai Pembayaran'
              Width = 132
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ValuePayment'
            end
            object dxDBGrid1UpdUser: TdxDBGridMaskColumn
              Visible = False
              Width = 152
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UpdUser'
            end
          end
          object Panel2: TPanel [2]
            Left = 0
            Top = 476
            Width = 676
            Height = 40
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14467152
            TabOrder = 3
            object bbTambah: TdxButton
              Tag = 1111
              Left = 5
              Top = 9
              Width = 86
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbTambahClick
              Caption = '(+) Data'
              TabOrder = 0
            end
            object bbHapus: TdxButton
              Tag = 2222
              Left = 92
              Top = 9
              Width = 86
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbHapusClick
              Caption = '(-) Data'
              TabOrder = 1
            end
            object bbSimpan: TdxButton
              Tag = 4444
              Left = 179
              Top = 9
              Width = 86
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbSimpanClick
              Caption = 'Simpan'
              TabOrder = 2
            end
            object bbBatal: TdxButton
              Tag = 4444
              Left = 266
              Top = 9
              Width = 86
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Version = '1.0.2e'
              OnClick = bbBatalClick
              Caption = 'Batal'
              TabOrder = 3
            end
            object dxButton3: TdxButton
              Left = 353
              Top = 9
              Width = 101
              Height = 23
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Version = '1.0.2e'
              OnClick = dxButton3Click
              Caption = 'CETAK (F9)'
              TabOrder = 4
            end
            object GroupBox3: TGroupBox
              Left = 462
              Top = 3
              Width = 201
              Height = 34
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              object DBText1: TDBText
                Left = 48
                Top = 9
                Width = 146
                Height = 20
                Alignment = taRightJustify
                DataField = 'Total'
                DataSource = dsTotal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 8
                Top = 10
                Width = 43
                Height = 19
                Caption = 'Total :'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object Panel1: TPanel [3]
            Left = 0
            Top = 0
            Width = 676
            Height = 224
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14467152
            TabOrder = 4
            object Label1: TLabel
              Left = 17
              Top = 15
              Width = 33
              Height = 19
              Alignment = taRightJustify
              Caption = 'Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 17
              Top = 45
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
            end
            object Label3: TLabel
              Left = 17
              Top = 75
              Width = 69
              Height = 19
              Alignment = taRightJustify
              Caption = 'Pelanggan'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 17
              Top = 195
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
            end
            object DBText3: TDBText
              Left = 239
              Top = 73
              Width = 69
              Height = 23
              AutoSize = True
              DataField = 'CustName'
              DataSource = dsMain
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Valuta: TLabel
              Left = 17
              Top = 105
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
            object DBText6: TDBText
              Left = 239
              Top = 103
              Width = 69
              Height = 23
              AutoSize = True
              DataField = 'LCurrName'
              DataSource = dsMain
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 239
              Top = 45
              Width = 64
              Height = 19
              Alignment = taRightJustify
              Caption = 'Tgl Cair :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 17
              Top = 135
              Width = 36
              Height = 19
              Alignment = taRightJustify
              Caption = 'Bank'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label17: TLabel
              Left = 17
              Top = 165
              Width = 87
              Height = 19
              Alignment = taRightJustify
              Caption = 'No BG / Cek'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText5: TDBText
              Left = 239
              Top = 133
              Width = 69
              Height = 23
              AutoSize = True
              DataField = 'LBankName'
              DataSource = dsMain
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 110
              Top = 15
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
            object Label7: TLabel
              Left = 110
              Top = 45
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
            object Label8: TLabel
              Left = 110
              Top = 75
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
              Left = 110
              Top = 195
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
            object Label10: TLabel
              Left = 110
              Top = 105
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
            object Label23: TLabel
              Left = 110
              Top = 135
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
            object Label24: TLabel
              Left = 110
              Top = 165
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
            object GroupBox2: TGroupBox
              Left = 419
              Top = 6
              Width = 249
              Height = 50
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
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
              object DBText2: TDBText
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
              object DBText9: TDBText
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
            object txtPiutangID: TdxDBEdit
              Left = 124
              Top = 9
              Width = 186
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'PiutangID'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 124
              Top = 39
              Width = 109
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'TransDate1'
              DataSource = dsMain
              StyleController = SCEdit
              UseEditMask = True
              StoredValues = 4
            end
            object dxDBDateEdit3: TdxDBDateEdit
              Left = 307
              Top = 39
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'TransDate'
              DataSource = dsMain
              StyleController = SCEdit
              UseEditMask = True
              StoredValues = 4
            end
            object txtCustID: TdxDBButtonEdit
              Left = 124
              Top = 69
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'CustID'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              ClickKey = 113
              OnButtonClick = txtCustIDButtonClick
              ExistButtons = True
            end
            object dxDBButtonEdit2: TdxDBButtonEdit
              Left = 124
              Top = 99
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              OnKeyPress = txtNomorBuktiKeyPress
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
            object dxDBButtonEdit3: TdxDBButtonEdit
              Left = 124
              Top = 129
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'BankID'
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
            object dxDBEdit3: TdxDBEdit
              Left = 124
              Top = 159
              Width = 300
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              DataField = 'BGCID'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBEdit2: TdxDBEdit
              Left = 124
              Top = 189
              Width = 525
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              OnKeyPress = txtNomorBuktiKeyPress
              DataField = 'Note'
              DataSource = dsMain
              StyleController = SCEdit
            end
          end
          inherited bbSave: TdxButton
            Left = 464
            Top = 103
            Width = 100
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Height = -16
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabStop = False
          end
          inherited bbCancel: TdxButton
            Left = 566
            Top = 103
            Width = 100
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Height = -16
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '&Batal (Esc)'
            TabStop = False
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 869
    inherited sbLast: TSpeedButton
      Left = 841
    end
    inherited sbNext: TSpeedButton
      Left = 818
    end
    inherited sbPrev: TSpeedButton
      Left = 795
    end
    inherited sbFirst: TSpeedButton
      Left = 772
    end
    inherited sbPeriod: TSpeedButton
      Left = 744
    end
    inherited BvlPeriod: TBevel
      Left = 498
    end
    inherited laPeriod: TLabel
      Left = 502
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARTrPiutangHd ')
    Left = 224
    object quMainPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quMainTransDate1: TDateTimeField
      FieldName = 'TransDate1'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainCurrId: TStringField
      FieldName = 'CurrId'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY HH:MM:SS'
      EditMask = 'DD MMMM YYYY HH:MM:SS'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
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
    object quMainLCurrName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCurrName'
      LookupDataSet = quValuta
      LookupKeyFields = 'CurrID'
      LookupResultField = 'CurrName'
      KeyFields = 'CurrId'
      Size = 50
      Lookup = True
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
    end
    object quMainFgBayar: TStringField
      FieldName = 'FgBayar'
      Size = 1
    end
    object quMainBankID: TStringField
      FieldName = 'BankID'
      Size = 30
    end
    object quMainBGCID: TStringField
      FieldName = 'BGCID'
      Size = 100
    end
    object quMainLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankID'
      LookupResultField = 'BankName'
      KeyFields = 'BankID'
      Size = 80
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    inherited ActSave: TAction
      ShortCut = 114
    end
    inherited ActCancel: TAction
      ShortCut = 27
    end
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'CETAK (F9)'
      ShortCut = 120
      OnExecute = dxButton3Click
    end
  end
  inherited quDetil: TADOQuery
    AfterDelete = quDetilAfterDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'PiutangID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARTrPiutangDt WHERE PiutangID=:PiutangID')
    object quDetilPiutangID: TStringField
      FieldName = 'PiutangID'
      Size = 50
    end
    object quDetilValueTotal: TBCDField
      FieldName = 'ValueTotal'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilSaleID: TStringField
      FieldName = 'SaleID'
      Size = 50
    end
    object quDetilValuePayment: TBCDField
      FieldName = 'ValuePayment'
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
    object quDetilCTgl: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'CTgl'
      Calculated = True
    end
    object quDetilCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustName'
      Size = 50
      Calculated = True
    end
    object quDetilBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quDetilLBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'LBankName'
      LookupDataSet = quBank
      LookupKeyFields = 'BankId'
      LookupResultField = 'BankName'
      KeyFields = 'BankId'
      Size = 50
      Lookup = True
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
    Left = 544
    Top = 136
    object quCustomerCustID: TStringField
      FieldName = 'CustID'
    end
    object quCustomerCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quCustomerAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quCustomerCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quCustomerPhone: TStringField
      FieldName = 'Phone'
    end
    object quCustomerFax: TStringField
      FieldName = 'Fax'
    end
    object quCustomerEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quCustomerNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quCustomerCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quCustomerUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quCustomerUpdUser: TStringField
      FieldName = 'UpdUser'
    end
  end
  object quPj: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    BeforePost = quDetilBeforePost
    AfterPost = quDetilAfterPost
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'Select * FROM ARTrPenjualanHd')
    Left = 572
    Top = 136
  end
  object dsTotal: TDataSource
    DataSet = quTotal
    OnStateChange = dsDetilStateChange
    Left = 576
    Top = 456
  end
  object quTotal: TADOQuery
    Connection = dmMain.dbConn
    DataSource = dsMain
    Parameters = <
      item
        Name = 'PiutangID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select isnull(Sum(ValuePayment ),0) as Total FROM ARTrPiutangDt '
      'WHERE PiutangID=:PiutangID'
      '')
    Left = 548
    Top = 456
    object quTotalTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
  end
  object quCal: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 448
    Top = 4
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
    Left = 600
    Top = 136
  end
  object quBank: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 456
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CFMsBank')
    Left = 488
    Top = 272
  end
end
