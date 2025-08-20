inherited fmQRRptSalesO: TfmQRRptSalesO
  Height = 846
  Caption = 'Sales Order'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MyReport: TQuickRep
    Left = 12
    Top = 16
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.PaperSize = Custom
    Page.Values = (
      50.8
      2794
      50.8
      2159
      50.8
      50.8
      0)
    PrintIfEmpty = False
    inherited BndDetail: TQRBand
      Height = 157
      Size.Values = (
        415.395833333333
        2058.45833333333)
      inherited QRShape5: TQRShape
        Left = 5
        Top = 133
        Width = 765
        Height = 23
        Size.Values = (
          60.8541666666667
          13.2291666666667
          351.895833333333
          2024.0625)
      end
      inherited QRLabel6: TQRLabel
        Left = 44
        Top = 135
        Width = 73
        Height = 18
        Size.Values = (
          47.625
          116.416666666667
          357.1875
          193.145833333333)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRLabel13: TQRLabel
        Left = 280
        Top = 135
        Width = 28
        Height = 18
        Size.Values = (
          47.625
          740.833333333333
          357.1875
          74.0833333333333)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRShape4: TQRShape
        Left = 464
        Top = 39
        Width = 304
        Height = 93
        Enabled = True
        Size.Values = (
          246.0625
          1227.66666666667
          103.1875
          804.333333333333)
      end
      inherited QRLabel1: TQRLabel
        Left = 311
        Top = 288
        Size.Values = (
          47.625
          822.854166666667
          762
          74.0833333333333)
        FontSize = 9
      end
      inherited QRLabel2: TQRLabel
        Left = 466
        Top = 41
        Width = 103
        Enabled = True
        Size.Values = (
          47.625
          1232.95833333333
          108.479166666667
          272.520833333333)
        Caption = 'Untuk Pelanggan :'
        Font.Style = [fsBold]
        FontSize = 9
      end
      inherited qlbNamaInvoice: TQRLabel
        Left = 293
        Top = 8
        Width = 192
        Size.Values = (
          74.0833333333333
          775.229166666667
          21.1666666666667
          508)
        Caption = '** SALES ORDER **'
        FontSize = 14
      end
      inherited QRLabel5: TQRLabel
        Left = 13
        Top = 57
        Width = 61
        Size.Values = (
          47.625
          34.3958333333333
          150.8125
          161.395833333333)
        Caption = 'Nomor SO'
        Font.Style = [fsBold]
        FontSize = 9
      end
      inherited QRDBText4: TQRDBText
        Left = 96
        Top = 57
        Width = 367
        Size.Values = (
          47.625
          254
          150.8125
          971.020833333333)
        DataField = 'POID'
        Font.Height = -11
        FontSize = 8
      end
      inherited QRDBText13: TQRDBText
        Left = 466
        Top = 59
        Width = 209
        Size.Values = (
          47.625
          1232.95833333333
          156.104166666667
          552.979166666667)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel4: TQRLabel
        Left = 5
        Top = 280
        Width = 212
        Height = 18
        Size.Values = (
          47.625
          13.2291666666667
          740.833333333333
          560.916666666667)
        Caption = 'SEVEN MOUNTAIN INTERNATIONAL'
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText12: TQRDBText
        Left = 466
        Top = 77
        Width = 291
        Height = 53
        Size.Values = (
          140.229166666667
          1232.95833333333
          203.729166666667
          769.9375)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel7: TQRLabel
        Left = 311
        Top = 306
        Size.Values = (
          47.625
          822.854166666667
          809.625
          71.4375)
        FontSize = 9
      end
      inherited QRDBText6: TQRDBText
        Left = 352
        Top = 306
        Size.Values = (
          47.625
          931.333333333333
          809.625
          209.020833333333)
        FontSize = 9
      end
      inherited QRLabel3: TQRLabel
        Left = 5
        Top = 297
        Size.Values = (
          47.625
          13.2291666666667
          785.8125
          341.3125)
        FontSize = 9
      end
      inherited QRLabel20: TQRLabel
        Left = 346
        Top = 288
        Size.Values = (
          47.625
          915.458333333333
          762
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel22: TQRLabel
        Left = 346
        Top = 306
        Size.Values = (
          47.625
          915.458333333333
          809.625
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel23: TQRLabel
        Left = 13
        Top = 75
        Width = 38
        Enabled = True
        Size.Values = (
          47.625
          34.3958333333333
          198.4375
          100.541666666667)
        Font.Style = [fsBold]
        FontSize = 9
      end
      inherited QRDBText9: TQRDBText
        Left = 96
        Top = 75
        Width = 367
        Height = 18
        Size.Values = (
          47.625
          254
          198.4375
          971.020833333333)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel24: TQRLabel
        Left = 13
        Top = 93
        Width = 32
        Enabled = True
        Size.Values = (
          47.625
          34.3958333333333
          246.0625
          84.6666666666667)
        Caption = 'Sales'
        Font.Style = [fsBold]
        FontSize = 9
      end
      inherited QRDBText10: TQRDBText
        Left = 96
        Top = 93
        Width = 367
        Size.Values = (
          47.625
          254
          246.0625
          971.020833333333)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel25: TQRLabel
        Left = 90
        Top = 93
        Width = 4
        Enabled = True
        Size.Values = (
          47.625
          238.125
          246.0625
          10.5833333333333)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel26: TQRLabel
        Left = 90
        Top = 75
        Width = 4
        Enabled = True
        Size.Values = (
          47.625
          238.125
          198.4375
          10.5833333333333)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRLabel9: TQRLabel
        Left = 382
        Top = 135
        Width = 89
        Height = 18
        Size.Values = (
          47.625
          1010.70833333333
          357.1875
          235.479166666667)
        Caption = 'QTY / STN / BNS'
        Font.Height = -12
        FontSize = 9
      end
      inherited QRLabel12: TQRLabel
        Left = 12
        Top = 135
        Width = 18
        Height = 18
        Size.Values = (
          47.625
          31.75
          357.1875
          47.625)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRLabel8: TQRLabel
        Left = 52
        Top = 135
        Width = 78
        Height = 18
        Size.Values = (
          47.625
          137.583333333333
          357.1875
          206.375)
        Font.Height = -12
        FontSize = 9
      end
      inherited qrlDate: TQRLabel
        Left = 745
        Top = 8
        Size.Values = (
          47.625
          1971.14583333333
          21.1666666666667
          71.4375)
        Alignment = taRightJustify
        FontSize = 9
      end
      inherited QRLabel40: TQRLabel
        Left = 81
        Top = 62
        Size.Values = (
          47.625
          214.3125
          164.041666666667
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel29: TQRLabel
        Size.Values = (
          158.75
          351.895833333333
          55.5625
          582.083333333333)
        FontSize = 9
      end
      inherited QRLabel30: TQRLabel
        Size.Values = (
          47.625
          351.895833333333
          13.2291666666667
          582.083333333333)
        FontSize = 9
      end
      inherited QRDBImage1: TQRDBImage
        Size.Values = (
          198.4375
          10.5833333333333
          13.2291666666667
          330.729166666667)
      end
      inherited QRLabel31: TQRLabel
        Size.Values = (
          47.625
          1301.75
          105.833333333333
          187.854166666667)
        FontSize = 9
      end
      inherited QRLabel32: TQRLabel
        Size.Values = (
          47.625
          1301.75
          150.8125
          74.0833333333333)
        FontSize = 9
      end
      inherited QRLabel33: TQRLabel
        Size.Values = (
          47.625
          1047.75
          193.145833333333
          164.041666666667)
        FontSize = 9
      end
      inherited QRLabel34: TQRLabel
        Size.Values = (
          47.625
          1272.64583333333
          193.145833333333
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel27: TQRLabel
        Left = 512
        Top = 135
        Width = 53
        Height = 18
        Size.Values = (
          47.625
          1354.66666666667
          357.1875
          140.229166666667)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRLabel46: TQRLabel
        Size.Values = (
          47.625
          10.5833333333333
          211.666666666667
          68.7916666666667)
        FontSize = 9
      end
      inherited QRLabel47: TQRLabel
        Size.Values = (
          47.625
          10.5833333333333
          254
          37.0416666666667)
        FontSize = 9
      end
      inherited QRLabel48: TQRLabel
        Size.Values = (
          47.625
          193.145833333333
          211.666666666667
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel49: TQRLabel
        Size.Values = (
          47.625
          193.145833333333
          254
          13.2291666666667)
        FontSize = 9
      end
      inherited QRLabel50: TQRLabel
        Size.Values = (
          47.625
          222.25
          211.666666666667
          164.041666666667)
        FontSize = 9
      end
      inherited QRLabel51: TQRLabel
        Size.Values = (
          47.625
          222.25
          254
          164.041666666667)
        FontSize = 9
      end
    end
    inherited BndTitle: TQRBand
      Top = 176
      Size.Values = (
        0
        2058.45833333333)
      inherited qrlCompName: TQRLabel
        Size.Values = (
          66.1458333333333
          10.5833333333333
          7.9375
          394.229166666667)
        FontSize = 15
      end
      inherited qrlTitle: TQRLabel
        Size.Values = (
          60.8541666666667
          973.666666666667
          60.8541666666667
          108.479166666667)
        FontSize = 14
      end
      inherited qrlPeriode: TQRLabel
        Size.Values = (
          47.625
          968.375
          129.645833333333
          119.0625)
        FontSize = 10
      end
      inherited qrlCompAddres: TQRMemo
        Size.Values = (
          291.041666666667
          10.5833333333333
          84.6666666666667
          605.895833333333)
        FontSize = 10
      end
      inherited ImgCompany: TQRImage
        Size.Values = (
          277.8125
          1778
          0
          277.8125)
      end
    end
    inherited bnd001: TQRSubDetail
      Top = 176
      Height = 20
      AfterPrint = bnd001AfterPrint
      Size.Values = (
        52.9166666666667
        2058.45833333333)
      FooterBand = GroupFooterBand2
      inherited QRDBText11: TQRDBText
        Left = 276
        Size.Values = (
          47.625
          730.25
          66.1458333333333
          312.208333333333)
        FontSize = 9
      end
      inherited QRDBText2: TQRDBText
        Left = 288
        Top = 121
        Width = 89
        Size.Values = (
          47.625
          762
          320.145833333333
          235.479166666667)
        FontSize = 9
      end
      inherited QRDBText5: TQRDBText
        Left = 52
        Width = 294
        Size.Values = (
          47.625
          137.583333333333
          2.64583333333333
          777.875)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText7: TQRDBText
        Left = 350
        Size.Values = (
          47.625
          926.041666666667
          2.64583333333333
          150.8125)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText8: TQRDBText
        Left = 410
        Size.Values = (
          47.625
          1084.79166666667
          2.64583333333333
          132.291666666667)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRLabel15: TQRLabel
        Left = 14
        Width = 19
        Size.Values = (
          47.625
          37.0416666666667
          2.64583333333333
          50.2708333333333)
        Font.Height = -12
        OnPrint = QRLabel15Print
        FontSize = 9
      end
      inherited QRDBText3: TQRDBText
        Left = 34
        Top = 41
        Width = 207
        Size.Values = (
          47.625
          89.9583333333333
          108.479166666667
          547.6875)
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText14: TQRDBText
        Left = 512
        Width = 257
        Size.Values = (
          47.625
          1354.66666666667
          2.64583333333333
          679.979166666667)
        DataField = 'Note'
        Font.Height = -12
        FontSize = 9
      end
      inherited QRDBText15: TQRDBText
        Size.Values = (
          47.625
          1262.0625
          2.64583333333333
          328.083333333333)
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 664
        Top = 0
        Width = 105
        Height = 19
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1756.83333333333
          0
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Color = clWhite
        Master = bnd001
        OnPrint = QRExpr2Print
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'qu002.QTy*qu002.Price'
        FontSize = 10
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 23
        Width = 776
        Height = 1
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          60.8541666666667
          2053.16666666667)
        Shape = qrsHorLine
      end
    end
    inherited GroupHeaderBand1: TQRBand
      Top = 425
      Size.Values = (
        0
        2058.45833333333)
    end
    inherited QRBand1: TQRBand
      Top = 305
      Size.Values = (
        317.5
        2058.45833333333)
      inherited QRShape2: TQRShape
        Size.Values = (
          2.64583333333333
          7.9375
          2.64583333333333
          1981.72916666667)
      end
      inherited QRLabel11: TQRLabel
        Left = 375
        Top = 183
        Width = 79
        Height = 19
        Enabled = False
        Size.Values = (
          50.2708333333333
          992.1875
          484.1875
          209.020833333333)
        FontSize = 9
      end
      inherited QRLabel28: TQRLabel
        Left = 709
        Top = 135
        Width = 43
        Height = 18
        Size.Values = (
          47.625
          1875.89583333333
          357.1875
          113.770833333333)
        Caption = 'TOTAL'
        FontSize = 9
      end
      inherited QRLabel35: TQRLabel
        Size.Values = (
          44.9791666666667
          39.6875
          164.041666666667
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel36: TQRLabel
        Size.Values = (
          44.9791666666667
          854.604166666667
          26.4583333333333
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel37: TQRLabel
        Size.Values = (
          44.9791666666667
          436.5625
          26.4583333333333
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel38: TQRLabel
        Size.Values = (
          44.9791666666667
          436.5625
          164.041666666667
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel39: TQRLabel
        Size.Values = (
          44.9791666666667
          1277.9375
          164.041666666667
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel41: TQRLabel
        Size.Values = (
          44.9791666666667
          1277.9375
          26.4583333333333
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel42: TQRLabel
        Size.Values = (
          44.9791666666667
          1680.10416666667
          164.041666666667
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel43: TQRLabel
        Size.Values = (
          44.9791666666667
          1680.10416666667
          26.4583333333333
          264.583333333333)
        FontSize = 9
      end
      inherited QRLabel44: TQRLabel
        Size.Values = (
          44.9791666666667
          5.29166666666667
          232.833333333333
          2029.35416666667)
        FontSize = 8
      end
      inherited QRLabel45: TQRLabel
        Size.Values = (
          44.9791666666667
          74.0833333333333
          272.520833333333
          1947.33333333333)
        FontSize = 8
      end
    end
    object GroupFooterBand2: TQRBand
      Left = 19
      Top = 196
      Width = 778
      Height = 109
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        288.395833333333
        2058.45833333333)
      BandType = rbGroupFooter
      object QRShape21: TQRShape
        Left = 10
        Top = 7
        Width = 450
        Height = 93
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          246.0625
          26.4583333333333
          18.5208333333333
          1190.625)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 160
        Top = 32
        Width = 150
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667
          423.333333333333
          84.6666666666667
          396.875)
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 10
        Top = 7
        Width = 450
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          26.4583333333333
          18.5208333333333
          1190.625)
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 160
        Top = 7
        Width = 150
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          423.333333333333
          18.5208333333333
          396.875)
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 0
        Top = 1
        Width = 776
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          2.64583333333333
          2053.16666666667)
        Shape = qrsHorLine
      end
      object QRShape20: TQRShape
        Left = 608
        Top = 7
        Width = 150
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1608.66666666667
          18.5208333333333
          396.875)
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 608
        Top = 32
        Width = 150
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666667
          1608.66666666667
          84.6666666666667
          396.875)
        Shape = qrsRectangle
      end
    end
  end
end
