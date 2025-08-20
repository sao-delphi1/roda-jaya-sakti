inherited fmCFOTOFPP: TfmCFOTOFPP
  Left = 655
  Top = 185
  Caption = 'Otorisasi Form Pengajuan Pembayaran'
  ClientWidth = 1315
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      Top = 65
      Height = 422
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 140
        Width = 167
        Height = 65
        Caption = '[ Show ]'
        ItemIndex = 0
        Items.Strings = (
          'Semua Tanggal'
          'Periode')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 208
        Width = 167
        Height = 137
        Caption = '[ Periode ]'
        TabOrder = 1
        Visible = False
        object Label2: TLabel
          Left = 55
          Top = 60
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
          Left = 10
          Top = 24
          Width = 140
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
          Left = 10
          Top = 88
          Width = 140
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
        Left = 8
        Top = 60
        Width = 167
        Height = 74
        Caption = '[ Status ]'
        ItemIndex = 0
        Items.Strings = (
          'Waiting'
          'Approved'
          'Rejected')
        TabOrder = 2
      end
      object dxButton6: TdxButton
        Tag = 4444
        Left = 25
        Top = 7
        Width = 133
        Height = 44
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Version = '1.0.2e'
        OnClick = dxButton6Click
        Caption = 'REFRESH'
        TabOrder = 3
        TabStop = False
      end
    end
    inherited paOperation: TdxContainer
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 32
        Top = 19
        Enabled = False
      end
      inherited bbNew: TdxButton [1]
        Enabled = False
      end
      inherited bbDelete: TdxButton [2]
        Top = 4
        Enabled = False
      end
      inherited bbFind: TdxButton [3]
        Top = 4
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 57
    end
  end
  inherited paBottom: TdxContainer
    Width = 1315
  end
  inherited dxContainer7: TdxContainer
    Width = 1122
    inherited pcParent: TdxPageControl
      Width = 1122
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 951
        end
        inherited bbCancel: TdxButton
          Left = 1031
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1122
          Height = 273
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'No_FPP'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDblClick = dxDBGrid1DblClick
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = []
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -16
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dxDBGrid1Column1: TdxDBGridColumn
            Caption = 'Nomor FPP'
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'No_FPP'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tanggal'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Nama Supplier'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SuppName'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Subtotal'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SubTotal'
          end
          object dxDBGrid1Column10: TdxDBGridColumn
            Caption = 'Ongkir'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ongkir'
          end
          object dxDBGrid1Column12: TdxDBGridColumn
            Caption = 'PBB-KB'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'pbbkb'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Caption = 'Discount'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Pajak'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PPN'
          end
          object dxDBGrid1Column7: TdxDBGridColumn
            Caption = 'Grandtotal'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TTLKS'
          end
          object dxDBGrid1Column8: TdxDBGridColumn
            Caption = 'STATUS'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Approval'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Caption = 'Approval'
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Otoby'
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 0
          Top = 273
          Width = 1122
          Height = 214
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Detail Pengajuan'
              Width = 877
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'POID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -16
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -16
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowBands = True
          object dxDBGridButtonColumn1: TdxDBGridButtonColumn
            Caption = 'Nomor PO'
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
            Buttons = <
              item
                Default = True
              end>
          end
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'Tanggal'
            Color = clWhite
            ReadOnly = True
            TabStop = False
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Ltanggal'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
          object dxDBGrid1Column11: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'PPh 4(2)'
            MinWidth = 16
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'fgpph42'
            Descriptions.Strings = (
              'Ya'
              'Tidak')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              'Y'
              'T')
          end
          object dxDBGridColumn3: TdxDBGridColumn
            Caption = 'Disc (%)'
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Disc'
          end
          object dxDBGridColumn4: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Pajak'
            MinWidth = 16
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgTax'
            Descriptions.Strings = (
              'Ya'
              'Tidak')
            ImageIndexes.Strings = (
              '0'
              '1')
            ShowDescription = True
            Values.Strings = (
              'Y'
              'T')
          end
          object dxDBGridColumn5: TdxDBGridColumn
            Caption = 'Subtotal'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SubtotalM'
          end
          object dxDBGridColumn6: TdxDBGridColumn
            Caption = 'Jasa'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SubtotalU'
          end
          object dxDBGrid2Column12: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Ongkir'
          end
          object dxDBGrid2Column13: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PBBKB'
          end
          object dxDBGridColumn7: TdxDBGridColumn
            Caption = 'Discount'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DiscAmount'
          end
          object dxDBGridColumn8: TdxDBGridColumn
            Caption = 'Nilai Pajak'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PPN'
          end
          object dxDBGridColumn9: TdxDBGridColumn
            Caption = 'Total PO'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TTLKJ'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1315
    inherited sbLast: TSpeedButton
      Left = 1278
    end
    inherited sbNext: TSpeedButton
      Left = 1251
    end
    inherited sbPrev: TSpeedButton
      Left = 1224
    end
    inherited sbFirst: TSpeedButton
      Left = 1197
    end
    inherited sbPeriod: TSpeedButton
      Left = 1171
    end
    inherited BvlPeriod: TBevel
      Left = 925
    end
    inherited laPeriod: TLabel
      Left = 929
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.Konsiny' +
        'asiInvId as No_FPP,'
      'B.SuppName,A.SubTotal,A.ongkir,A.pbbkb,A.PPN,A.Disc,A.TTLKS,'
      'CASE WHEN A.FgOto='#39'Y'#39' THEN '#39'APPROVED'#39' '
      'WHEN A.FgOto='#39'T'#39' THEN '#39'PENDING'#39
      'ELSE '#39'REJECTED'#39' END as Approval,A.Otoby'
      'from APTrKonsinyasiInvHd A'
      'inner join APMsSupplier B on A.SuppID=B.SuppID'
      'Where A.FgOto<>'#39'Y'#39
      '')
    object quMainTanggal: TStringField
      FieldName = 'Tanggal'
      ReadOnly = True
      Size = 10
    end
    object quMainNo_FPP: TStringField
      FieldName = 'No_FPP'
      Size = 50
    end
    object quMainSuppName: TStringField
      FieldName = 'SuppName'
      Size = 50
    end
    object quMainSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainDisc: TBCDField
      FieldName = 'Disc'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainTTLKS: TBCDField
      FieldName = 'TTLKS'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quMainApproval: TStringField
      FieldName = 'Approval'
      ReadOnly = True
      Size = 8
    end
    object quMainOtoby: TStringField
      FieldName = 'Otoby'
      Size = 50
    end
    object quMainongkir: TBCDField
      FieldName = 'ongkir'
      DisplayFormat = '#,0'
      Precision = 18
      Size = 0
    end
    object quMainpbbkb: TBCDField
      FieldName = 'pbbkb'
      DisplayFormat = '#,0'
      Precision = 18
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'No_FPP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select K.* from ('
      
        'select KonsinyasiInvID,POID,FgTax,Disc,SubtotalM,SubtotalU,Ongki' +
        'r,PBBKB,PPN,DiscAmount,TTLKJ,Note,upddate,upduser,SuppID,fgpph42' +
        ' from aptrkonsinyasiinvsub'
      'union all'
      
        'select A.purchaseid,'#39'-'#39',B.FgTax,B.Disc,B.StPb-B.SubtotalU,B.Subt' +
        'otalU,0,0,B.PPN,B.DiscAmount,B.TTLPb,C.ItemName,A.UpdDate,A.UpdU' +
        'ser,B.SuppID,A.FgPPH42 '
      
        'from APTrPurchaseDt A inner join APTrPurchaseHd b on a.PurchaseI' +
        'D=B.PurchaseID inner join INMsItem C on A.ItemID=C.itemid ) as K'
      ' where konsinyasiinvid=:No_FPP')
    object quDetilKonsinyasiInvID: TStringField
      FieldName = 'KonsinyasiInvID'
      Size = 50
    end
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 75
    end
    object quDetilFgTax: TStringField
      FieldName = 'FgTax'
      Size = 50
    end
    object quDetilDisc: TBCDField
      FieldName = 'Disc'
      Precision = 18
    end
    object quDetilSubtotalM: TBCDField
      FieldName = 'SubtotalM'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilSubtotalU: TBCDField
      FieldName = 'SubtotalU'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilPPN: TBCDField
      FieldName = 'PPN'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilDiscAmount: TBCDField
      FieldName = 'DiscAmount'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilTTLKJ: TBCDField
      FieldName = 'TTLKJ'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilupddate: TDateTimeField
      FieldName = 'upddate'
    end
    object quDetilupduser: TStringField
      FieldName = 'upduser'
      Size = 50
    end
    object quDetilSuppID: TStringField
      FieldName = 'SuppID'
      Size = 50
    end
    object quDetilfgpph42: TStringField
      FieldName = 'fgpph42'
      Size = 10
    end
    object quDetilLtanggal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ltanggal'
      Size = 100
      Calculated = True
    end
    object quDetilOngkir: TBCDField
      FieldName = 'Ongkir'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilPBBKB: TBCDField
      FieldName = 'PBBKB'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 18
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
