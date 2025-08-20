inherited fmARChangeNoInv: TfmARChangeNoInv
  Left = 906
  Top = 413
  Caption = 'Change Nomor Invoice'
  ClientHeight = 194
  ClientWidth = 305
  PixelsPerInch = 96
  TextHeight = 13
  object Label36: TLabel [1]
    Left = 20
    Top = 64
    Width = 61
    Height = 16
    Caption = 'Nomor SO'
    Color = 14467152
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 20
    Top = 88
    Width = 117
    Height = 16
    Caption = 'Nomor Invoice Lama'
    Color = 14467152
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 20
    Top = 112
    Width = 112
    Height = 16
    Caption = 'Nomor Invoice Baru'
    Color = 14467152
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  inherited paToolBar: TdxContainer
    Width = 305
    inherited sbLast: TSpeedButton
      Left = 268
    end
    inherited sbNext: TSpeedButton
      Left = 241
    end
    inherited sbPrev: TSpeedButton
      Left = 214
    end
    inherited sbFirst: TSpeedButton
      Left = 187
    end
    inherited sbPeriod: TSpeedButton
      Left = 161
    end
    inherited BvlPeriod: TBevel
      Left = -85
    end
    inherited laPeriod: TLabel
      Left = -81
    end
  end
  object Edit1: TEdit [5]
    Left = 147
    Top = 107
    Width = 117
    Height = 21
    TabOrder = 1
  end
  object txtPelangganID: TdxDBButtonEdit [6]
    Left = 146
    Top = 56
    Width = 119
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    DataField = 'POID'
    DataSource = dsMain
    ReadOnly = True
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = txtPelangganIDButtonClick
    StoredValues = 64
    ExistButtons = True
  end
  object dxDBButtonEdit1: TdxDBButtonEdit [7]
    Left = 146
    Top = 81
    Width = 119
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    DataField = 'InvoiceID'
    DataSource = dsMain
    ReadOnly = True
    StyleController = SCEdit
    Buttons = <
      item
        Default = True
      end>
    ClickKey = 113
    OnButtonClick = dxDBButtonEdit1ButtonClick
    StoredValues = 64
    ExistButtons = True
  end
  object bbSimpanDetil: TdxButton [8]
    Tag = 4444
    Left = 148
    Top = 134
    Width = 116
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Version = '1.0.2e'
    OnClick = bbSimpanDetilClick
    Caption = 'Proses'
    TabOrder = 4
    TabStop = False
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      'select * from artrpurchaseorderhd')
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainInvoiceID: TStringField
      FieldName = 'InvoiceID'
      Size = 50
    end
    object quMainIDInvoice: TStringField
      FieldName = 'IDInvoice'
      Size = 50
    end
  end
end
