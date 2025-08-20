inherited fmARRptKaryawan: TfmARRptKaryawan
  Left = 406
  Top = 194
  Caption = 'Laporan Daftar Karyawan'
  ClientHeight = 129
  ClientWidth = 669
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 669
    inherited laTitle: TLabel
      Width = 233
      Caption = 'DAFTAR KARYAWAN'
    end
  end
  inherited paCenter: TPanel
    Width = 669
    Height = 47
    object Label7: TLabel
      Left = 11
      Top = 12
      Width = 95
      Height = 20
      Alignment = taRightJustify
      Caption = 'Pilih Laporan :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 504
      Top = 12
      Width = 48
      Height = 18
      Caption = 'TAHUN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 8
      Width = 321
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      Text = '--Pilih Laporan--'
      OnChange = ComboBox1Change
      Items.Strings = (
        'SEMUA KARYAWAN AKTIF'
        'KARYAWAN DGN MASA KERJA >='
        'KARYAWAN LAKI-LAKI'
        'KARYAWAN PEREMPUAN'
        'KARYAWAN KONTRAK HABIS PADA')
    end
    object Edit1: TEdit
      Left = 440
      Top = 8
      Width = 57
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '3'
      Visible = False
    end
    object ComboBox2: TComboBox
      Left = 440
      Top = 8
      Width = 145
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 2
      Text = 'JANUARI'
      Visible = False
      OnChange = ComboBox1Change
      Items.Strings = (
        'JANUARI'
        'FEBRUARI'
        'MARET'
        'APRIL'
        'MEI'
        'JUNI'
        'JULI'
        'AGUSTUS'
        'SEPTEMBER'
        'OKTOBER'
        'NOVEMBER'
        'DESEMBER')
    end
    object Edit2: TEdit
      Left = 592
      Top = 8
      Width = 65
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '3'
      Visible = False
    end
  end
  inherited paBottom: TPanel
    Top = 88
    Width = 669
    inherited bbPreview: TBitBtn
      Left = 443
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 517
    end
    inherited bbExit: TBitBtn
      Left = 591
    end
  end
end
