inherited fmRptJurnalHarian: TfmRptJurnalHarian
  Left = 556
  Top = 262
  Caption = 'Jurnal Harian'
  ClientHeight = 149
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited laTitle: TLabel
      Width = 219
      Caption = 'Laporan Jurnal Harian'
    end
  end
  inherited paCenter: TPanel
    Height = 67
    object GroupBox1: TGroupBox
      Left = 45
      Top = 4
      Width = 338
      Height = 57
      Caption = 'Periode'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 143
        Top = 24
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
        Left = 25
        Top = 20
        Width = 110
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 199
        Top = 20
        Width = 110
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  inherited paBottom: TPanel
    Top = 108
  end
end
