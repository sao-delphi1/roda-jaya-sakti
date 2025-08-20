inherited fmARMsPelanggan: TfmARMsPelanggan
  Left = 167
  Top = 31
  Caption = 'Master Pelanggan'
  ClientHeight = 625
  ClientWidth = 929
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 216
    Top = 322
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fax :'
    Transparent = True
  end
  object Label12: TLabel [1]
    Left = 204
    Top = 350
    Width = 129
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Alamat :'
    Transparent = True
  end
  inherited paLeft: TdxContainer
    Height = 576
    inherited pa3: TdxContainer
      Height = 397
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 613
    Width = 929
  end
  inherited pa2: TdxContainer
    Height = 576
  end
  inherited paToolBar: TdxContainer
    Width = 929
    inherited sbLast: TSpeedButton
      Left = 892
    end
    inherited sbNext: TSpeedButton
      Left = 865
    end
    inherited sbPrev: TSpeedButton
      Left = 838
    end
    inherited sbFirst: TSpeedButton
      Left = 811
    end
    inherited sbPeriod: TSpeedButton
      Left = 785
    end
    inherited BvlPeriod: TBevel
      Left = 539
    end
    inherited laPeriod: TLabel
      Left = 543
    end
  end
  inherited pcMain: TdxPageControl
    Width = 736
    Height = 576
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 736
        Height = 553
        Filter.Criteria = {00000000}
      end
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      
        'SELECT *, CASE CustType WHEN '#39'U'#39' THEN '#39'User'#39' WHEN '#39'D'#39' THEN '#39'Deal' +
        'er'#39' END AS Tipe from ARMSCustomer ORDER BY CustID')
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
    object quMainCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object quMainCity: TStringField
      FieldName = 'City'
      Size = 150
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainCustType: TStringField
      FieldName = 'CustType'
      FixedChar = True
      Size = 1
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'DD MMMM YYYY'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainTipe: TStringField
      FieldName = 'Tipe'
      ReadOnly = True
      Size = 6
    end
    object quMainLimitPiutang: TBCDField
      FieldName = 'LimitPiutang'
      Precision = 18
      Size = 0
    end
    object quMainLimitasli: TBCDField
      FieldName = 'Limitasli'
      Precision = 18
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      Precision = 18
    end
    object quMainLWilayah: TStringField
      FieldKind = fkCalculated
      FieldName = 'LWilayah'
      Size = 200
      Calculated = True
    end
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainCPerson: TStringField
      FieldName = 'CPerson'
      Size = 100
    end
    object quMainLSales: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSales'
      Size = 200
      Calculated = True
    end
    object quMainWilayahID: TStringField
      FieldName = 'WilayahID'
    end
    object quMainKodePOS: TStringField
      FieldName = 'KodePOS'
      Size = 10
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object quMainFax: TStringField
      FieldName = 'Fax'
      Size = 100
    end
  end
  inherited ActionList: TActionList
    Left = 228
    Top = 56
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
end
