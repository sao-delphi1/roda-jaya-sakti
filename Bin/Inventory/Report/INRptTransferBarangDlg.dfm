inherited fmINRptTransferBarangDlg: TfmINRptTransferBarangDlg
  Left = 248
  Top = 126
  Caption = ''
  ClientHeight = 150
  ClientWidth = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 306
    inherited laTitle: TLabel
      Width = 239
      Caption = 'Laporan Transfer Barang'
    end
  end
  inherited paCenter: TPanel
    Width = 306
    Height = 68
    object GroupBox1: TGroupBox
      Left = 16
      Top = 18
      Width = 269
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 122
        Top = 20
        Width = 33
        Height = 13
        Caption = 'sampai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 86
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 173
        Top = 14
        Width = 88
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 64
      Width = 185
      Height = 49
      ItemIndex = 0
      Items.Strings = (
        'Sparepart'
        'Inventaris')
      TabOrder = 1
      Visible = False
    end
  end
  inherited paBottom: TPanel
    Top = 109
    Width = 306
    inherited bbPreview: TBitBtn
      Left = 60
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 154
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 228
    end
  end
end
