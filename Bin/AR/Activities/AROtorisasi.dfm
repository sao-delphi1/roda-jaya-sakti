inherited fmAROtorisasi: TfmAROtorisasi
  Left = 230
  Top = 171
  Caption = 'Otorisasi Peminjaman'
  ClientHeight = 641
  ClientWidth = 1297
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 592
    inherited pa3: TdxContainer
      Top = 65
      Height = 527
      object Label1: TLabel
        Left = 88
        Top = 88
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      object RgData: TRadioGroup
        Left = -356
        Top = 13
        Width = 145
        Height = 156
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Pending'
          'Rejected'
          'Approved')
        ParentFont = False
        TabOrder = 0
        OnClick = RgDataClick
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 57
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 34
        Top = 16
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
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 629
    Width = 1297
  end
  inherited pa2: TdxContainer
    Height = 592
  end
  inherited dxContainer7: TdxContainer
    Width = 1104
    Height = 592
    inherited pcParent: TdxPageControl
      Width = 1104
      Height = 592
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 933
          Top = 570
        end
        inherited bbCancel: TdxButton
          Left = 1013
          Top = 570
        end
        object dbgDetail: TdxDBGrid
          Left = 0
          Top = 273
          Width = 1104
          Height = 319
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'POID'
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'Total'
                  SummaryFormat = '#,0'
                  SummaryType = cstSum
                end>
              Name = 'dbgDetailSummaryGroup2'
            end>
          SummarySeparator = ', '
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -15
          BandFont.Name = 'Arial'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -15
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgDetailColumn8: TdxDBGridColumn
            Caption = 'Part Number'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dbgDetailColumn1: TdxDBGridColumn
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dbgDetailColumn2: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 250
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dbgDetailColumn3: TdxDBGridColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Jumlah'
          end
          object dbgDetailColumn4: TdxDBGridColumn
            Caption = 'Satuan'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UOMID'
          end
          object dbgDetailColumn5: TdxDBGridColumn
            Caption = 'Type Unit'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'typeunit'
          end
          object dbgDetailColumn6: TdxDBGridColumn
            Caption = 'Nomor Unit'
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
          end
          object dbgDetailColumn9: TdxDBGridColumn
            Caption = 'Harga'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PriceM'
          end
          object dbgDetailColumn10: TdxDBGridColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
            SummaryFooterType = cstSum
            SummaryFooterField = 'Total'
            SummaryFooterFormat = '#,0'
            SummaryType = cstSum
            SummaryField = 'Total'
            SummaryFormat = '#,0'
            SummaryGroupName = 'dbgDetailSummaryGroup2'
          end
          object dbgDetailColumn11: TdxDBGridColumn
            Caption = 'Locater'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LayoutID'
          end
        end
        object dbgList: TdxDBGrid
          Left = 0
          Top = 0
          Width = 1104
          Height = 273
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'POID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnDblClick = dbgListDblClick
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -15
          BandFont.Name = 'Arial'
          BandFont.Style = [fsBold]
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -12
          PreviewFont.Name = 'Comic Sans MS'
          PreviewFont.Style = []
          object dbgListColumn1: TdxDBGridColumn
            Caption = 'Tanggal'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Transdate'
          end
          object dbgListColumn2: TdxDBGridColumn
            Caption = 'Nomor Peminjaman'
            Width = 275
            BandIndex = 0
            RowIndex = 0
            FieldName = 'POID'
          end
          object dbgListColumn3: TdxDBGridColumn
            Caption = 'Site Asal'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteName'
          end
          object dbgListColumn4: TdxDBGridColumn
            Caption = 'Site Peminjam'
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Peminjam'
          end
          object dbgListColumn5: TdxDBGridColumn
            Caption = 'PIC'
            Width = 121
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SalesName'
          end
          object dbgListColumn8: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 215
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
          object dbgListColumn7: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgListColumn6: TdxDBGridColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1297
    inherited sbLast: TSpeedButton
      Left = 1260
    end
    inherited sbNext: TSpeedButton
      Left = 1233
    end
    inherited sbPrev: TSpeedButton
      Left = 1206
    end
    inherited sbFirst: TSpeedButton
      Left = 1179
    end
    inherited sbPeriod: TSpeedButton
      Left = 1153
    end
    inherited BvlPeriod: TBevel
      Left = 907
    end
    inherited laPeriod: TLabel
      Left = 911
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.Transdate,A.POID,D.SiteName,B.SiteName as Peminjam,C.Sa' +
        'lesName,A.Note,'
      'A.UpdDate,A.UpdUser,A.Site2,A.CustID'
      'from ARTrPurchaseOrderHd A '
      'Inner Join INMsSites B on A.CustID=B.SiteID'
      'Inner Join INMsSites D on A.Site2=D.SiteID'
      'Inner Join ARMsSales C on A.SalesID=C.SalesID ')
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quMainSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quMainPeminjam: TStringField
      FieldName = 'Peminjam'
      Size = 100
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainSite2: TStringField
      FieldName = 'Site2'
      Size = 50
    end
    object quMainCustID: TStringField
      FieldName = 'CustID'
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 4
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    Parameters = <
      item
        Name = 'POID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.POID,B.ItemName,A.Jumlah,B.UOMID,A.ItemID,A.NoUnit,B.ty' +
        'peunit,A.LayoutID'
      ''
      'from ARTrPurchaseOrderDt A'
      'inner join INMsItem B on A.ItemID=B.ItemID'
      'Where POID=:POID')
    object quDetilPOID: TStringField
      FieldName = 'POID'
      Size = 50
    end
    object quDetilItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quDetilJumlah: TBCDField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUOMID: TStringField
      FieldName = 'UOMID'
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetiltypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quDetilPriceM: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PriceM'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quDetilTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '#,0'
      Currency = False
      Calculated = True
    end
    object quDetilLayoutID: TStringField
      FieldName = 'LayoutID'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
