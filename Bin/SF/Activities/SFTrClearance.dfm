inherited fmSFTrClearance: TfmSFTrClearance
  Left = 427
  Top = 218
  Caption = 'Clearance Barang Safety'
  ClientHeight = 527
  ClientWidth = 1011
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 478
    inherited pa3: TdxContainer
      Height = 299
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 515
    Width = 1011
  end
  inherited pa2: TdxContainer
    Height = 478
  end
  inherited dxContainer7: TdxContainer
    Width = 818
    Height = 478
    inherited pcParent: TdxPageControl
      Width = 818
      Height = 478
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 50
          Top = 34
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'Nota :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel [1]
          Left = 33
          Top = 58
          Width = 53
          Height = 17
          Alignment = taRightJustify
          Caption = 'Tanggal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel [2]
          Left = 10
          Top = 82
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'Keterangan :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        inherited bbSave: TdxButton
          Left = 599
          Top = 78
          Width = 87
          Height = 26
          TabOrder = 3
        end
        inherited bbCancel: TdxButton
          Left = 687
          Top = 78
          Width = 87
          Height = 26
          TabOrder = 4
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 93
          Top = 54
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'TransDate'
          DataSource = dsMain
          StyleController = SCEdit
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBEdit1: TdxDBEdit
          Left = 93
          Top = 30
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'TransID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 93
          Top = 78
          Width = 404
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          ExistButtons = True
        end
        object GroupBox1: TGroupBox
          Left = 504
          Top = 2
          Width = 257
          Height = 61
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          object Label21: TLabel
            Left = 29
            Top = 14
            Width = 36
            Height = 17
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 73
            Top = 15
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 20
            Top = 35
            Width = 45
            Height = 17
            Alignment = taRightJustify
            Caption = 'Waktu :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 73
            Top = 36
            Width = 174
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object dbg: TdxDBGrid
          Left = 0
          Top = 128
          Width = 817
          Height = 313
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Detail Clearance'
              Fixed = bfLeft
              Width = 642
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -12
          BandFont.Name = 'Times New Roman'
          BandFont.Style = [fsBold]
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowBands = True
          object dbgColumn1: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TransID'
          end
          object dbgColumn2: TdxDBGridButtonColumn
            Caption = 'Kode Barang'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn2ButtonClick
          end
          object dbgColumn4: TdxDBGridColumn
            Caption = 'Nama Barang'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LItemName'
          end
          object dbgColumn7: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgClearance'
            Descriptions.Strings = (
              'Unit'
              'Karyawan'
              'Divisi')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'U'
              'K'
              'D')
          end
          object dbgColumn3: TdxDBGridButtonColumn
            Caption = 'From'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn3ButtonClick
          end
          object dbgColumn5: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LNama'
          end
          object dbgColumn6: TdxDBGridColumn
            Caption = 'Jumlah'
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Qty'
          end
          object dbgColumn8: TdxDBGridButtonColumn
            Caption = 'Nota Pemberian'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoteID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgColumn8ButtonClick
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 5
          Top = 444
          Width = 91
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = TmbBrgClick
          Caption = '(+) Barang'
          TabOrder = 7
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 97
          Top = 444
          Width = 92
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = KrgBrgClick
          Caption = '(-) Barang'
          TabOrder = 8
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 190
          Top = 444
          Width = 92
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = bbSimpanDetilClick
          Caption = 'Simpan'
          TabOrder = 9
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 283
          Top = 444
          Width = 92
          Height = 26
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Version = '1.0.2e'
          OnClick = BtlBrgClick
          Caption = 'Batal'
          TabOrder = 10
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1011
    inherited sbLast: TSpeedButton
      Left = 974
    end
    inherited sbNext: TSpeedButton
      Left = 947
    end
    inherited sbPrev: TSpeedButton
      Left = 920
    end
    inherited sbFirst: TSpeedButton
      Left = 893
    end
    inherited sbPeriod: TSpeedButton
      Left = 867
    end
    inherited BvlPeriod: TBevel
      Left = 621
    end
    inherited laPeriod: TLabel
      Left = 625
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from sftrclearancehd'
      ''
      '')
    object quMainTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainKdCab: TStringField
      FieldName = 'KdCab'
      Size = 50
    end
    object quMainFgDivisi: TStringField
      FieldName = 'FgDivisi'
      Size = 50
    end
  end
  inherited quDetil: TADOQuery
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'transid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from sftrclearancedt where transid=:transid'
      '')
    object quDetilTransID: TStringField
      FieldName = 'TransID'
      Size = 50
    end
    object quDetilFgClearance: TStringField
      FieldName = 'FgClearance'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilItemID: TStringField
      FieldName = 'ItemID'
      Size = 100
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      Size = 50
    end
    object quDetilQty: TBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,0'
      Precision = 18
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilLNama: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNama'
      Size = 100
      Calculated = True
    end
    object quDetilLItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LItemName'
      Size = 200
      Calculated = True
    end
    object quDetilNoteID: TStringField
      FieldName = 'NoteID'
      Size = 50
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
