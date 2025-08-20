inherited fmARQRRptSisaSO: TfmARQRRptSisaSO
  Left = 285
  Top = 142
  Width = 884
  Height = 516
  Caption = 'fmARQRRptSisaSO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MyReport: TQuickRep
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      50
      2794
      50
      2159
      50
      50
      0)
    inherited BndDetail: TQRBand
      Top = 109
      Size.Values = (
        44.9791666666667
        2058.45833333333)
      inherited QRLabel1: TQRLabel
        Width = 67
        Size.Values = (
          44.9791666666667
          10.5833333333333
          -2.64583333333333
          177.270833333333)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText3: TQRDBText
        Left = 81
        Width = 385
        Size.Values = (
          44.9791666666667
          214.3125
          0
          1018.64583333333)
        Font.Height = -12
        Font.Style = []
        FontSize = 9
      end
    end
    inherited BndTitle: TQRBand
      Height = 66
      Size.Values = (
        174.625
        2058.45833333333)
      inherited qrlCompName: TQRLabel
        Size.Values = (
          52.9166666666667
          10.5833333333333
          7.9375
          325.4375)
        FontSize = 12
      end
      inherited qrlTitle: TQRLabel
        Size.Values = (
          79.375
          1923.52083333333
          31.75
          134.9375)
        FontSize = 18
      end
      inherited qrlPeriode: TQRLabel
        Size.Values = (
          47.625
          1939.39583333333
          100.541666666667
          119.0625)
        FontSize = 10
      end
      inherited qrlCompAddres: TQRMemo
        Size.Values = (
          224.895833333333
          10.5833333333333
          66.1458333333333
          605.895833333333)
        FontSize = 10
      end
      inherited ImgCompany: TQRImage
        Size.Values = (
          169.333333333333
          629.708333333333
          2.64583333333333
          595.3125)
      end
    end
    inherited BndPF: TQRBand
      Top = 144
      Size.Values = (
        44.9791666666667
        2058.45833333333)
      inherited QRSPageNumber: TQRSysData
        Size.Values = (
          44.9791666666667
          1926.16666666667
          0
          127)
        FontSize = 8
      end
      inherited qrlUserId: TQRLabel
        Size.Values = (
          44.9791666666667
          971.020833333333
          0
          116.416666666667)
        FontSize = 8
      end
      inherited qrlPrintDate: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          0
          174.625)
        FontSize = 8
      end
    end
    inherited bndCH: TQRBand
      Top = 85
      Height = 24
      Color = clAppWorkSpace
      Size.Values = (
        63.5
        2058.45833333333)
      inherited QRShape1: TQRShape
        Height = 23
        Size.Values = (
          60.8541666666667
          2.64583333333333
          2.64583333333333
          2053.16666666667)
      end
      inherited QRLabel5: TQRLabel
        Left = 143
        Top = 171
        Width = 69
        Enabled = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          452.4375
          182.5625)
        Caption = 'Nama Cust'
        FontSize = 10
      end
      inherited QRLabel7: TQRLabel
        Left = 391
        Top = 3
        Width = 44
        Size.Values = (
          44.9791666666667
          1034.52083333333
          7.9375
          116.416666666667)
        Caption = 'Tgl SO'
        FontSize = 10
      end
      inherited QRLabel2: TQRLabel
        Left = 44
        Top = 163
        Enabled = False
        Size.Values = (
          44.9791666666667
          116.416666666667
          431.270833333333
          140.229166666667)
        Caption = 'Nota SO'
        FontSize = 10
      end
      inherited QRLabel3: TQRLabel
        Left = 110
        Top = 4
        Width = 70
        Size.Values = (
          44.9791666666667
          291.041666666667
          10.5833333333333
          185.208333333333)
        Caption = 'Nama Item'
        FontSize = 10
      end
      inherited QRShape2: TQRShape
        Top = 197
        Height = 20
        Enabled = False
        Size.Values = (
          52.9166666666667
          2.64583333333333
          521.229166666667
          2053.16666666667)
      end
      inherited QRLabel4: TQRLabel
        Left = 580
        Width = 22
        Size.Values = (
          44.9791666666667
          1534.58333333333
          7.9375
          58.2083333333333)
        Caption = 'Qty'
        FontSize = 10
      end
      inherited QRLabel8: TQRLabel
        Left = 605
        Top = 3
        Width = 33
        Size.Values = (
          44.9791666666667
          1600.72916666667
          7.9375
          87.3125)
        Caption = 'Kirim'
        FontSize = 10
      end
      inherited QRLabel9: TQRLabel
        Left = 648
        Top = 3
        Width = 42
        Size.Values = (
          44.9791666666667
          1714.5
          7.9375
          111.125)
        Alignment = taCenter
        Caption = 'Sisa'
        FontSize = 10
      end
      inherited QRLabel10: TQRLabel
        Left = 148
        Top = 219
        Enabled = False
        Size.Values = (
          44.9791666666667
          391.583333333333
          579.4375
          264.583333333333)
        FontSize = 10
      end
      inherited QRLabel6: TQRLabel
        Left = 43
        Top = 219
        Enabled = False
        Size.Values = (
          44.9791666666667
          113.770833333333
          579.4375
          264.583333333333)
        FontSize = 10
      end
      inherited QRLabel19: TQRLabel
        Left = 721
        Top = 3
        Size.Values = (
          44.9791666666667
          1907.64583333333
          7.9375
          95.25)
        FontSize = 10
      end
      inherited QRLabel17: TQRLabel
        Left = 460
        Size.Values = (
          44.9791666666667
          1217.08333333333
          7.9375
          156.104166666667)
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 530
        Top = 3
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1402.29166666667
          7.9375
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Selisih'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    inherited bnd001: TQRSubDetail
      Top = 126
      Height = 0
      Size.Values = (
        0
        2058.45833333333)
      inherited QRDBText1: TQRDBText
        Size.Values = (
          44.9791666666667
          31.75
          0
          690.5625)
        FontSize = 10
      end
      inherited QRDBText6: TQRDBText
        Left = 348
        Top = 24
        Size.Values = (
          44.9791666666667
          920.75
          63.5
          185.208333333333)
        FontSize = 10
      end
      inherited QRDBText9: TQRDBText
        Size.Values = (
          44.9791666666667
          1111.25
          0
          396.875)
        FontSize = 10
      end
      inherited QRDBText10: TQRDBText
        Size.Values = (
          44.9791666666667
          1510.77083333333
          0
          529.166666666667)
        FontSize = 10
      end
      inherited QRDBText2: TQRDBText
        Left = 268
        Top = 24
        Size.Values = (
          44.9791666666667
          709.083333333333
          63.5
          185.208333333333)
        FontSize = 10
      end
    end
    inherited bnd002: TQRSubDetail
      Top = 126
      Height = 18
      Size.Values = (
        47.625
        2058.45833333333)
      inherited QRShape3: TQRShape [0]
        Height = 3
        Size.Values = (
          7.9375
          2.64583333333333
          44.9791666666667
          2053.16666666667)
      end
      object QRDBText8: TQRDBText [1]
        Left = 0
        Top = 66
        Width = 184
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          174.625
          486.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu001
        DataField = 'Pelanggan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      inherited QRDBText12: TQRDBText [2]
        Left = 120
        Top = 2
        Width = 268
        Size.Values = (
          44.9791666666667
          317.5
          5.29166666666667
          709.083333333333)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText15: TQRDBText [3]
        Left = 396
        Top = 72
        Enabled = False
        Size.Values = (
          44.9791666666667
          1047.75
          190.5
          238.125)
        FontSize = 10
      end
      inherited QRDBText16: TQRDBText [4]
        Left = 624
        Top = 72
        Enabled = False
        Size.Values = (
          44.9791666666667
          1651
          190.5
          238.125)
        FontSize = 10
      end
      inherited QRDBText17: TQRDBText [5]
        Left = 612
        Top = 48
        Enabled = False
        Size.Values = (
          44.9791666666667
          1619.25
          127
          264.583333333333)
        FontSize = 10
      end
      inherited qlbHarga: TQRLabel [6]
        Left = 244
        Top = 72
        Size.Values = (
          44.9791666666667
          645.583333333333
          190.5
          396.875)
        FontSize = 10
      end
      inherited qlbSubTotal: TQRLabel [7]
        Left = 493
        Top = 72
        Size.Values = (
          44.9791666666667
          1304.39583333333
          190.5
          343.958333333333)
        FontSize = 10
      end
      inherited qlbJumlah: TQRLabel
        Left = 639
        Top = 2
        Width = 55
        Size.Values = (
          44.9791666666667
          1690.6875
          5.29166666666667
          145.520833333333)
        Font.Height = -12
        FontSize = 9
      end
      inherited qlbStock: TQRLabel
        Left = 696
        Top = 2
        Width = 78
        Size.Values = (
          44.9791666666667
          1841.5
          5.29166666666667
          206.375)
        Font.Height = -12
        FontSize = 9
      end
      inherited qlbSuppName: TQRLabel
        Left = 309
        Top = 48
        Size.Values = (
          44.9791666666667
          817.5625
          127
          291.041666666667)
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 0
        Top = 48
        Width = 184
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          127
          486.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'KonTransBrgId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 458
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1211.79166666667
          5.29166666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'TglKirim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 391
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1034.52083333333
          5.29166666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'Tgl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object qlbawal: TQRLabel
        Left = 576
        Top = 2
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          5.29166666666667
          79.375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qlbAwal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object qlbdev: TQRLabel
        Left = 608
        Top = 2
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1608.66666666667
          5.29166666666667
          79.375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qlbDev'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object qlbtgl: TQRLabel
        Left = 524
        Top = 2
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1386.41666666667
          5.29166666666667
          132.291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qlbTGL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 0
        Top = 2
        Width = 118
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          5.29166666666667
          312.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qu002
        DataField = 'KonTransBrgId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
    end
    inherited bndFooter: TQRBand
      Top = 144
      Height = 0
      Size.Values = (
        0
        2058.45833333333)
      inherited QRLabel12: TQRLabel
        Size.Values = (
          44.9791666666667
          1127.125
          232.833333333333
          452.4375)
        FontSize = 10
      end
      inherited QRLabel16: TQRLabel
        Size.Values = (
          44.9791666666667
          1666.875
          232.833333333333
          13.2291666666667)
        FontSize = 10
      end
      inherited QRLabel18: TQRLabel
        Size.Values = (
          44.9791666666667
          1693.33333333333
          232.833333333333
          351.895833333333)
        FontSize = 10
      end
      inherited QRLabel33: TQRLabel
        Size.Values = (
          44.9791666666667
          1127.125
          187.854166666667
          531.8125)
        FontSize = 10
      end
      inherited QRLabel35: TQRLabel
        Size.Values = (
          44.9791666666667
          1666.875
          187.854166666667
          13.2291666666667)
        FontSize = 10
      end
      inherited QRLabel37: TQRLabel
        Size.Values = (
          44.9791666666667
          1693.33333333333
          187.854166666667
          351.895833333333)
        FontSize = 10
      end
      inherited qlbTotal: TQRLabel
        Size.Values = (
          52.9166666666667
          1717.14583333333
          5.29166666666667
          317.5)
        FontSize = 12
      end
      inherited QRLabel13: TQRLabel
        Size.Values = (
          52.9166666666667
          1391.70833333333
          5.29166666666667
          317.5)
        FontSize = 12
      end
    end
    inherited bndSummary: TQRBand
      Top = 144
      Height = 0
      Size.Values = (
        0
        2058.45833333333)
      inherited QRLabel14: TQRLabel
        Size.Values = (
          66.1458333333333
          963.083333333333
          296.333333333333
          508)
        FontSize = 15
      end
      inherited QRLabel20: TQRLabel
        Size.Values = (
          66.1458333333333
          1492.25
          296.333333333333
          21.1666666666667)
        FontSize = 15
      end
      inherited QRLabel22: TQRLabel
        Size.Values = (
          66.1458333333333
          1513.41666666667
          296.333333333333
          518.583333333333)
        FontSize = 15
      end
      inherited QRLabel27: TQRLabel
        Size.Values = (
          66.1458333333333
          963.083333333333
          232.833333333333
          441.854166666667)
        FontSize = 15
      end
      inherited QRLabel29: TQRLabel
        Size.Values = (
          66.1458333333333
          1492.25
          232.833333333333
          21.1666666666667)
        FontSize = 15
      end
      inherited QRLabel31: TQRLabel
        Size.Values = (
          66.1458333333333
          1513.41666666667
          232.833333333333
          518.583333333333)
        FontSize = 15
      end
      inherited QRLabel15: TQRLabel
        Size.Values = (
          60.8541666666667
          1240.89583333333
          5.29166666666667
          404.8125)
        FontSize = 14
      end
      inherited qlbGrandTotal: TQRLabel
        Size.Values = (
          60.8541666666667
          1653.64583333333
          5.29166666666667
          383.645833333333)
        FontSize = 14
      end
    end
    inherited ChildBand1: TQRChildBand
      Top = 144
      Height = 0
      Size.Values = (
        0
        2058.45833333333)
      inherited QRLabel11: TQRLabel
        Size.Values = (
          44.9791666666667
          79.375
          -2.64583333333333
          127)
        FontSize = 10
      end
    end
  end
  inherited qu003: TADOQuery
    Left = 396
    Top = 56
  end
  inherited quCalc: TADOQuery
    Top = 56
  end
end
