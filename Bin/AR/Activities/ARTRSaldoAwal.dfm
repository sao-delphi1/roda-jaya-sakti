inherited fmSaldoAwal: TfmSaldoAwal
  Caption = 'Saldo Awal'
  ClientHeight = 245
  ClientWidth = 639
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel [1]
    Left = 0
    Top = 0
    Width = 27
    Height = 16
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [2]
    Left = 0
    Top = 0
    Width = 4
    Height = 16
    Alignment = taRightJustify
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 196
    inherited pa3: TdxContainer
      Height = 17
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 233
    Width = 639
  end
  inherited pa2: TdxContainer
    Height = 196
  end
  inherited dxContainer7: TdxContainer
    Width = 446
    Height = 196
    inherited pcParent: TdxPageControl
      Width = 446
      Height = 196
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 10
          Top = 11
          Width = 65
          Height = 17
          Caption = 'No Invoice'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel [1]
          Left = 120
          Top = 11
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [2]
          Left = 10
          Top = 35
          Width = 46
          Height = 17
          Alignment = taRightJustify
          Caption = 'Tanggal'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel [3]
          Left = 120
          Top = 35
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Color = 14467152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel [4]
          Left = 10
          Top = 83
          Width = 69
          Height = 17
          Caption = 'Valuta/Rate'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel [5]
          Left = 120
          Top = 83
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel [6]
          Left = 10
          Top = 107
          Width = 29
          Height = 17
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel [7]
          Left = 120
          Top = 440
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel [8]
          Left = 10
          Top = 59
          Width = 61
          Height = 17
          Caption = 'Pelanggan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel [9]
          Left = 120
          Top = 59
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText [10]
          Left = 216
          Top = 58
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
        object DBText1: TDBText [11]
          Left = 138
          Top = 317
          Width = 120
          Height = 17
          Alignment = taRightJustify
          DataField = 'SubTotal'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText [12]
          Left = 138
          Top = 341
          Width = 120
          Height = 17
          Alignment = taRightJustify
          DataField = 'PPN'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [13]
          Left = 10
          Top = 343
          Width = 29
          Height = 17
          Caption = 'PPN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [14]
          Left = 120
          Top = 416
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel [15]
          Left = 10
          Top = 319
          Width = 51
          Height = 17
          Caption = 'SubTotal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel [16]
          Left = 120
          Top = 393
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel [17]
          Left = 10
          Top = 393
          Width = 89
          Height = 17
          Caption = 'Rek Pembelian'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel [18]
          Left = 10
          Top = 416
          Width = 101
          Height = 17
          Caption = 'Rek PPN Masuk'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel [19]
          Left = 10
          Top = 440
          Width = 75
          Height = 17
          Caption = 'Rek Hutang '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText10: TDBText [20]
          Left = 241
          Top = 440
          Width = 150
          Height = 20
          DataField = 'LRekU'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText16: TDBText [21]
          Left = 241
          Top = 416
          Width = 150
          Height = 20
          DataField = 'LRekP'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText12: TDBText [22]
          Left = 241
          Top = 392
          Width = 150
          Height = 20
          DataField = 'LRekK'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel [23]
          Left = 120
          Top = 319
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel [24]
          Left = 120
          Top = 343
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel [25]
          Left = 120
          Top = 107
          Width = 3
          Height = 17
          Alignment = taRightJustify
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 323
          Top = 137
          Width = 104
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
        end
        inherited bbCancel: TdxButton
          Left = 323
          Top = 161
          Width = 104
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
        end
        object txtKonInvPelID: TdxDBEdit
          Left = 138
          Top = 5
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = txtKonInvPelIDKeyPress
          DataField = 'KonsinyasiInvId'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 138
          Top = 29
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = txtKonInvPelIDKeyPress
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 138
          Top = 77
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
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 138
          Top = 101
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = txtKonInvPelIDKeyPress
          DataField = 'TTLKs'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object txtPelangganID: TdxDBButtonEdit
          Left = 138
          Top = 53
          Width = 75
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = txtKonInvPelIDKeyPress
          DataField = 'SuppId'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = txtPelangganIDButtonClick
          ExistButtons = True
        end
        object GroupBox1: TGroupBox
          Left = 9
          Top = 132
          Width = 236
          Height = 59
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
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
        object dxDBPajak: TdxDBImageEdit
          Left = 46
          Top = 338
          Width = 49
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyPress = txtKonInvPelIDKeyPress
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
        object dxDBEdit1: TdxDBEdit
          Left = 212
          Top = 77
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = txtKonInvPelIDKeyPress
          DataField = 'Rate'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 138
          Top = 388
          Width = 102
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnKeyPress = txtKonInvPelIDKeyPress
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
        object dxDBButtonEdit6: TdxDBButtonEdit
          Left = 138
          Top = 436
          Width = 102
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyPress = txtKonInvPelIDKeyPress
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
        object dxDBButtonEdit5: TdxDBButtonEdit
          Left = 138
          Top = 412
          Width = 102
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
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
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 639
    inherited sbLast: TSpeedButton
      Left = 602
    end
    inherited sbNext: TSpeedButton
      Left = 575
    end
    inherited sbPrev: TSpeedButton
      Left = 548
    end
    inherited sbFirst: TSpeedButton
      Left = 521
    end
    inherited sbPeriod: TSpeedButton
      Left = 495
    end
    inherited BvlPeriod: TBevel
      Left = 249
    end
    inherited laPeriod: TLabel
      Left = 253
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select KonsinyasiInvId,TransDate,SuppId,CurrID,TTLKs,'
      'SubTotal,FgTax,Rate,upduser,upddate,FgPerforma,'
      'RekeningU,RekeningK,RekeningD,RekeningP'
      ' FROM APTrKonsinyasiInvHd')
    object quMainKonsinyasiInvId: TStringField
      FieldName = 'KonsinyasiInvId'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSuppId: TStringField
      FieldName = 'SuppId'
      Size = 50
    end
    object quMainCurrID: TStringField
      FieldName = 'CurrID'
      OnChange = quMainCurrIDChange
      FixedChar = True
      Size = 3
    end
    object quMainTTLKs: TBCDField
      FieldName = 'TTLKs'
      OnChange = quMainTTLKsChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustName'
      Size = 50
      Calculated = True
    end
    object quMainSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgTax: TStringField
      FieldName = 'FgTax'
      OnChange = quMainFgTaxChange
      Size = 1
    end
    object quMainRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainupduser: TStringField
      FieldName = 'upduser'
    end
    object quMainupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quMainPPN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object quMainFgPerforma: TStringField
      FieldName = 'FgPerforma'
      Size = 50
    end
    object quMainRekeningU: TStringField
      FieldName = 'RekeningU'
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
    end
    object quMainRekeningP: TStringField
      FieldName = 'RekeningP'
    end
    object quMainLRekU: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekU'
      Size = 50
      Calculated = True
    end
    object quMainLRekP: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekP'
      Size = 50
      Calculated = True
    end
    object quMainLRekK: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekK'
      Size = 50
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 4
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 560
    Top = 52
  end
end
