inherited fmARTrSalesOrder: TfmARTrSalesOrder
  Left = 208
  Top = 152
  Caption = 'SALES ORDER'
  ClientWidth = 979
  PixelsPerInch = 96
  TextHeight = 13
  inherited paBottom: TdxContainer
    Width = 979
  end
  inherited dxContainer7: TdxContainer
    Width = 786
    inherited pcParent: TdxPageControl
      Width = 786
      inherited ts01: TdxTabSheet
        object DBText1: TDBText [0]
          Left = 234
          Top = 142
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LuCustomer'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText [1]
          Left = 234
          Top = 112
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LuLocation'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 16
          Top = 24
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
          Transparent = True
        end
        object Label2: TLabel [3]
          Left = 16
          Top = 84
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
        object Label3: TLabel [4]
          Left = 16
          Top = 114
          Width = 52
          Height = 19
          Alignment = taRightJustify
          Caption = 'Gudang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [5]
          Left = 16
          Top = 144
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
          Transparent = True
        end
        object Label5: TLabel [6]
          Left = 16
          Top = 204
          Width = 88
          Height = 19
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel [7]
          Left = 16
          Top = 54
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
        object DBText5: TDBText [8]
          Left = 234
          Top = 52
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LuCurrName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [9]
          Left = 99
          Top = 24
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
        object Label7: TLabel [10]
          Left = 99
          Top = 84
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
        object Label8: TLabel [11]
          Left = 99
          Top = 114
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
        object Label9: TLabel [12]
          Left = 99
          Top = 144
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
        object Label11: TLabel [13]
          Left = 99
          Top = 54
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
        object Label10: TLabel [14]
          Left = 233
          Top = 84
          Width = 44
          Height = 19
          Alignment = taRightJustify
          Caption = 'Jenis :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText3: TDBText [15]
          Left = 234
          Top = 172
          Width = 69
          Height = 23
          AutoSize = True
          DataField = 'LSalesName'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel [16]
          Left = 49
          Top = 174
          Width = 36
          Height = 19
          Alignment = taRightJustify
          Caption = 'Sales'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel [17]
          Left = 99
          Top = 174
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
        inherited bbSave: TdxButton
          Left = 551
          Top = 161
          Width = 100
          Height = 25
        end
        inherited bbCancel: TdxButton
          Left = 655
          Top = 161
          Width = 100
          Height = 25
        end
        object GroupBox1: TGroupBox
          Left = -409
          Top = -219
          Width = 248
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
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
        object dxDBEdit1: TdxDBEdit
          Left = 112
          Top = 16
          Width = 186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          CharCase = ecUpperCase
          DataField = 'POID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit3: TdxDBEdit
          Left = 298
          Top = 16
          Width = 191
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          CharCase = ecUpperCase
          DataField = 'Status'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 112
          Top = 48
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
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
          Left = 112
          Top = 78
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBImageEdit2: TdxDBImageEdit
          Left = 299
          Top = 77
          Width = 150
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          DataField = 'Jenis'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Spare Part'
            'Mesin')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'S'
            'M')
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 112
          Top = 108
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
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
          Left = 112
          Top = 138
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
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
          Left = 112
          Top = 168
          Width = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
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
          Left = 112
          Top = 198
          Width = 656
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 979
    inherited sbLast: TSpeedButton
      Left = 942
    end
    inherited sbNext: TSpeedButton
      Left = 915
    end
    inherited sbPrev: TSpeedButton
      Left = 888
    end
    inherited sbFirst: TSpeedButton
      Left = 861
    end
    inherited sbPeriod: TSpeedButton
      Left = 835
    end
    inherited BvlPeriod: TBevel
      Left = 589
    end
    inherited laPeriod: TLabel
      Left = 593
    end
  end
  inherited quAct: TADOQuery
    Left = 280
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
    object quMainStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 200
      Calculated = True
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
  end
  inherited ActionList: TActionList
    Left = 448
    Top = 8
  end
  inherited quDetil: TADOQuery
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
      'select * from artrpurchaseorderdt '
      'WHERE POID=:POID '
      'ORDER BY UpdDate')
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilQty: TIntegerField
      FieldName = 'Qty'
    end
    object quDetilPrice: TBCDField
      FieldName = 'Price'
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
    end
  end
  object quGudang: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INMsWareHouse')
    Left = 516
    Top = 148
  end
  object quItem: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.ItemID,A.ItemName,A.GroupID, A.Tipe,A.UOMID'
      'FROM INMsItem A')
    Left = 688
    Top = 268
  end
  object quCustomer: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARMsCustomer')
    Left = 516
    Top = 176
  end
  object quTemp: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 716
    Top = 268
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
  object quAct3: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 776
    Top = 116
  end
  object quAct2: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 748
    Top = 116
  end
  object quAct1: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 720
    Top = 116
  end
end
