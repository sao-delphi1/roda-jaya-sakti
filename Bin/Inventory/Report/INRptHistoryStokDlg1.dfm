inherited fmINRptHistoryBarangDlg: TfmINRptHistoryBarangDlg
  Left = 504
  Top = 342
  Caption = ''
  ClientHeight = 263
  ClientWidth = 415
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 415
    inherited laTitle: TLabel
      Width = 193
      Caption = 'Laporan Kartu Stok'
    end
  end
  inherited paCenter: TPanel
    Width = 415
    Height = 181
    object Label1: TLabel
      Left = 16
      Top = 119
      Width = 143
      Height = 20
      Caption = 'Dari Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 146
      Width = 170
      Height = 20
      Caption = 'Sampai Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 92
      Width = 65
      Height = 20
      Caption = 'Gudang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 309
      Width = 102
      Height = 20
      Caption = 'Type Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 42
      Top = 10
      Width = 324
      Height = 63
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 137
        Top = 26
        Width = 51
        Height = 20
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 22
        Width = 109
        TabOrder = 0
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 198
        Top = 22
        Width = 110
        TabOrder = 1
        OnKeyPress = dt1KeyPress
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object dxGudang: TdxImageEdit
      Left = 201
      Top = 88
      Width = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dt1KeyPress
      StyleController = SCEdit
      Descriptions.Strings = (
        '')
      ImageIndexes.Strings = (
        '0')
      Values.Strings = (
        '')
    end
    object KodeDari: TdxButtonEdit
      Left = 201
      Top = 115
      Width = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = dt1KeyPress
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      ExistButtons = True
    end
    object KodeSampai: TdxButtonEdit
      Left = 201
      Top = 142
      Width = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = dt1KeyPress
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeSampaiButtonClick
      ExistButtons = True
    end
    object TypeBarang: TdxButtonEdit
      Left = 193
      Top = 305
      Width = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = dt1KeyPress
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = TypeBarangButtonClick
      ExistButtons = True
    end
  end
  inherited paBottom: TPanel
    Top = 222
    Width = 415
    DesignSize = (
      415
      41)
    inherited bbPreview: TBitBtn
      Left = 169
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 263
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 337
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select * FROM INMsItem'
      'Order by GroupID,ProductID,ItemID')
  end
  object ActionList: TActionList
    Left = 228
    Top = 8
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = bbPreviewClick
    end
  end
end
