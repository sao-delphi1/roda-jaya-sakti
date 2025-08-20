inherited fmHRRptPromotion: TfmHRRptPromotion
  Left = 680
  Top = 359
  Caption = 'Laporan Mutasi Karyawan'
  ClientHeight = 219
  ClientWidth = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 545
    inherited laTitle: TLabel
      Width = 260
      Caption = 'Laporan Mutasi Karyawan'
    end
  end
  inherited paCenter: TPanel
    Width = 545
    Height = 127
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 105
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Lokasi Karyawan'
        'Mutasi Karyawan')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object CheckBox1: TCheckBox
      Left = 208
      Top = 23
      Width = 185
      Height = 17
      Caption = 'Tampilkan Mutasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 201
      Top = 44
      Width = 331
      Height = 70
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 139
        Top = 30
        Width = 47
        Height = 19
        Caption = 'sampai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 9
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 196
        Top = 24
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 200
      Top = 48
      Width = 185
      Height = 65
      Caption = '[ Urut ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Nama Karyawan'
        'NIK'
        'Lokasi')
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited paBottom: TPanel
    Top = 168
    Width = 545
    Height = 51
    inherited bbPreview: TBitBtn
      Left = 299
      Top = 16
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 393
      Top = 16
    end
    inherited bbExit: TBitBtn
      Left = 467
      Top = 16
    end
  end
end
