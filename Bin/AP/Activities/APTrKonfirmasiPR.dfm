inherited fmAPTrKonfirmasiPR: TfmAPTrKonfirmasiPR
  Left = 394
  Top = 372
  Caption = 'Konfirmasi Realisasi PR'
  ClientHeight = 491
  ClientWidth = 1221
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 442
    inherited pa3: TdxContainer
      Top = 8
      Height = 434
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 16
        Width = 167
        Height = 105
        Caption = '[ Show ]'
        ItemIndex = 0
        Items.Strings = (
          'Belum Terima'
          'Sudah Terima')
        TabOrder = 0
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 128
        Width = 97
        Height = 17
        Caption = 'Show Otorisasi'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 0
      inherited bbNew: TdxButton
        Enabled = False
      end
      inherited bbDelete: TdxButton
        Enabled = False
      end
      inherited bbFind: TdxButton
        Enabled = False
      end
      inherited ceContinuousAdd: TdxCheckEdit
        Enabled = False
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 479
    Width = 1221
  end
  inherited pa2: TdxContainer
    Height = 442
  end
  inherited dxContainer7: TdxContainer
    Width = 1028
    Height = 442
    inherited pcParent: TdxPageControl
      Width = 1028
      Height = 442
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 8
          Top = 8
          Width = 66
          Height = 13
          Caption = 'Pilih Gudang :'
        end
        inherited bbSave: TdxButton
          Left = 857
          Top = 420
        end
        inherited bbCancel: TdxButton
          Left = 937
          Top = 420
        end
        object Button1: TButton
          Left = 150
          Top = 2
          Width = 75
          Height = 25
          Caption = 'CARI'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Edit1: TEdit
          Left = 80
          Top = 3
          Width = 65
          Height = 21
          ReadOnly = True
          TabOrder = 3
        end
        object Button2: TButton
          Left = 229
          Top = 2
          Width = 75
          Height = 25
          Caption = 'REFRESH'
          TabOrder = 4
          OnClick = Button2Click
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 30
          Width = 1027
          Height = 411
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TransferID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
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
            Caption = 'Tanggal'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransferDate'
          end
          object dxDBGrid1Column2: TdxDBGridColumn
            Caption = 'Surat Jalan'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransferID'
          end
          object dxDBGrid1Column3: TdxDBGridColumn
            Caption = 'Nomor PR'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRID'
          end
          object dxDBGrid1Column4: TdxDBGridColumn
            Caption = 'Part Number'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
          end
          object dxDBGrid1Column5: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemName'
          end
          object dxDBGrid1Column6: TdxDBGridColumn
            Caption = 'Type Unit'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'typeunit'
          end
          object dxDBGrid1Column7: TdxDBGridColumn
            Caption = 'No Unit'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
          end
          object dxDBGrid1Column8: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dxDBGrid1Column9: TdxDBGridColumn
            Caption = 'Delivery'
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QtyK'
          end
          object dxDBGrid1Column10: TdxDBGridColumn
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Keterangan'
          end
          object dxDBGrid1Column11: TdxDBGridColumn
            Caption = 'Otorisasi'
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OtoBy'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1221
    inherited sbLast: TSpeedButton
      Left = 1184
    end
    inherited sbNext: TSpeedButton
      Left = 1157
    end
    inherited sbPrev: TSpeedButton
      Left = 1130
    end
    inherited sbFirst: TSpeedButton
      Left = 1103
    end
    inherited sbPeriod: TSpeedButton
      Left = 1077
    end
    inherited BvlPeriod: TBevel
      Left = 831
    end
    inherited laPeriod: TLabel
      Left = 835
    end
  end
  inherited quMain: TADOQuery
    SQL.Strings = (
      
        'select A.TransferID,B.TransferDate,A.ItemID,C.ItemName,C.typeuni' +
        't,A.PRID,D.NoUnit,A.Qty,A.QtyK,'
      'A.Keterangan,A.FgOto ,A.OtoBy,A.FgNum'
      'from INTrTransferItemDt A'
      'INNER JOIN INTrTransferItemHd B on A.TransferID=B.TransferID'
      
        'INNER JOIN APTrPurchaseRequestDt D on A.PRID=D.PRID AND D.ItemID' +
        '=A.ItemID AND A.FgNum=D.NumAll'
      'INNER JOIN INMsItem C on A.ItemID=C.ItemID')
    object quMainTransferID: TStringField
      FieldName = 'TransferID'
    end
    object quMainTransferDate: TDateTimeField
      FieldName = 'TransferDate'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainItemID: TStringField
      FieldName = 'ItemID'
    end
    object quMainItemName: TStringField
      FieldName = 'ItemName'
      Size = 150
    end
    object quMaintypeunit: TStringField
      FieldName = 'typeunit'
      Size = 100
    end
    object quMainPRID: TStringField
      FieldName = 'PRID'
      Size = 50
    end
    object quMainNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quMainQty: TBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object quMainQtyK: TBCDField
      FieldName = 'QtyK'
      Precision = 18
    end
    object quMainKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
    object quMainFgOto: TStringField
      FieldName = 'FgOto'
      Size = 10
    end
    object quMainOtoBy: TStringField
      FieldName = 'OtoBy'
      Size = 100
    end
    object quMainFgNum: TIntegerField
      FieldName = 'FgNum'
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 4
  end
end
