inherited fmINTrJadwalDriver: TfmINTrJadwalDriver
  Left = 209
  Top = 164
  Caption = 'Working Hours'
  ClientHeight = 550
  ClientWidth = 779
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 501
    inherited pa3: TdxContainer
      Height = 322
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 538
    Width = 779
  end
  inherited pa2: TdxContainer
    Height = 501
  end
  inherited dxContainer7: TdxContainer
    Width = 586
    Height = 501
    inherited pcParent: TdxPageControl
      Width = 586
      Height = 501
      inherited ts01: TdxTabSheet
        object Label1: TLabel [0]
          Left = 49
          Top = 20
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
          Left = 32
          Top = 44
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
        object Label3: TLabel [2]
          Left = 776
          Top = 180
          Width = 53
          Height = 17
          Alignment = taRightJustify
          Caption = 'Activity :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label4: TLabel [3]
          Left = 56
          Top = 68
          Width = 29
          Height = 17
          Alignment = taRightJustify
          Caption = 'Site :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText [4]
          Left = 167
          Top = 68
          Width = 54
          Height = 17
          AutoSize = True
          DataField = 'LSite'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [5]
          Left = 9
          Top = 92
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
        object Label13: TLabel [6]
          Left = 4
          Top = 145
          Width = 134
          Height = 16
          Caption = 'Detail Working Hours'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        inherited bbSave: TdxButton
          Left = 391
          Top = 88
          Width = 90
          Height = 25
          TabOrder = 4
        end
        inherited bbCancel: TdxButton
          Left = 482
          Top = 88
          Width = 90
          Height = 25
          TabOrder = 5
        end
        object dxDBEdit1: TdxDBEdit
          Left = 93
          Top = 16
          Width = 164
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'NotaID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 93
          Top = 40
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
        object dxDBPajak: TdxDBImageEdit
          Left = 837
          Top = 176
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          DataField = 'Activity'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'BARGING'
            'PRODUKSI'
            'HAULING'
            'RENTAL'
            'OTHERS')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          Values.Strings = (
            'BG'
            'PR'
            'HA'
            'RT'
            'OT')
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 93
          Top = 64
          Width = 68
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'SiteID'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 113
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 93
          Top = 88
          Width = 291
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object GroupBox2: TGroupBox
          Left = 360
          Top = 9
          Width = 217
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          object Label21: TLabel
            Left = 16
            Top = 10
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'User :'
          end
          object DBText8: TDBText
            Left = 53
            Top = 9
            Width = 132
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
          end
          object Label22: TLabel
            Left = 7
            Top = 30
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Waktu :'
          end
          object DBText9: TDBText
            Left = 54
            Top = 30
            Width = 132
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
          end
        end
        object dbgPenjualan: TdxDBGrid
          Left = 0
          Top = 164
          Width = 585
          Height = 309
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ItemID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsDetil
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfUltraFlat
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgPenjualanColumn1: TdxDBGridColumn
            Visible = False
            Width = 258
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NotaID'
          end
          object dbgPenjualanColumn2: TdxDBGridButtonColumn
            Caption = 'No Unit'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NoUnit'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgPenjualanColumn2ButtonClick
          end
          object dbgPenjualanColumn3: TdxDBGridButtonColumn
            Caption = 'Driver'
            Visible = False
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LSalesName'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgPenjualanColumn3ButtonClick
          end
          object dbgClassUnit: TdxDBGridColumn
            Caption = 'Type Class Unit'
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LTypeClass'
          end
          object dbgPenjualanColumn4: TdxDBGridTimeColumn
            Caption = 'START'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JamMulai'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn5: TdxDBGridTimeColumn
            Caption = 'END'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JamSelesai'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn6: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HMAwal'
          end
          object dbgPenjualanColumn7: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HMAkhir'
          end
          object dbgPenjualanColumn35: TdxDBGridColumn
            Visible = False
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD'
          end
          object dbgPenjualanColumn8: TdxDBGridColumn
            Caption = 'Work Hours'
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LWH'
          end
          object dbgPenjualanColumn9: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FgStatus'
            Descriptions.Strings = (
              'OPERATIONAL'
              'BREAKDOWN'
              'STAND BY')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'O'
              'B'
              'S')
          end
          object dbgPenjualanColumn10: TdxDBGridColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BDTime'
          end
          object dbgPenjualanColumn11: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD'
            Descriptions.Strings = (
              'BD-1'
              'BD-2'
              'BD-3')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'BD-1'
              'BD-2'
              'BD-3')
          end
          object dbgPenjualanColumn12: TdxDBGridColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STBTime'
          end
          object dbgPenjualanColumn13: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STB'
            Descriptions.Strings = (
              'STB-1'
              'STB-2'
              'STB-3')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'STB-1'
              'STB-2'
              'STB-3')
          end
          object dbgPenjualanColumn14: TdxDBGridColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESTTime'
          end
          object dbgPenjualanColumn34: TdxDBGridColumn
            Caption = 'PA (%)'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PA'
          end
          object dbgPenjualanColumn15: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST'
            Descriptions.Strings = (
              'REST-1'
              'REST-2'
              'REST-3')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            ShowDescription = True
            Values.Strings = (
              'REST-1'
              'REST-2'
              'REST-3')
          end
          object dbgPenjualanColumn16: TdxDBGridColumn
            Visible = False
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgPenjualanColumn17: TdxDBGridColumn
            Visible = False
            Width = 258
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
          object dbgPenjualanColumn18: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD1'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn19: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD2'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn20: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD3'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn21: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BD4'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn22: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STB1'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn23: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STB2'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn24: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STB3'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn25: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STB4'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn26: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST1'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn27: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST2'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn28: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST3'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn29: TdxDBGridTimeColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REST4'
            TimeEditFormat = tfHourMin
          end
          object dbgPenjualanColumn31: TdxDBGridColumn
            Caption = 'STB'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LSTB'
          end
          object dbgPenjualanColumn30: TdxDBGridColumn
            Caption = 'BD'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LBD'
          end
          object dbgPenjualanColumn32: TdxDBGridColumn
            Caption = 'REST'
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LRest'
          end
          object dbgPenjualanColumn33: TdxDBGridColumn
            Caption = 'Operational'
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LOT'
          end
          object dbgPenjualanColumn36: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Note'
          end
        end
        object TmbBrg: TdxButton
          Tag = 1111
          Left = 3
          Top = 474
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
          Caption = '(+) Jadwal'
          TabOrder = 9
          TabStop = False
        end
        object KrgBrg: TdxButton
          Tag = 2222
          Left = 95
          Top = 474
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
          Caption = '(-) Jadwal'
          TabOrder = 10
          TabStop = False
        end
        object bbSimpanDetil: TdxButton
          Tag = 4444
          Left = 188
          Top = 474
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
          TabOrder = 11
          TabStop = False
        end
        object BtlBrg: TdxButton
          Tag = 4444
          Left = 281
          Top = 474
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
          TabOrder = 12
          TabStop = False
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 779
    inherited sbLast: TSpeedButton
      Left = 742
    end
    inherited sbNext: TSpeedButton
      Left = 715
    end
    inherited sbPrev: TSpeedButton
      Left = 688
    end
    inherited sbFirst: TSpeedButton
      Left = 661
    end
    inherited sbPeriod: TSpeedButton
      Left = 635
    end
    inherited BvlPeriod: TBevel
      Left = 389
    end
    inherited laPeriod: TLabel
      Left = 393
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from intrjadwaldriverhd')
    object quMainNotaID: TStringField
      FieldName = 'NotaID'
      Size = 50
    end
    object quMainTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
      Size = 50
    end
    object quMainActivity: TStringField
      FieldName = 'Activity'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'd/M/yyyy'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quMainLSite: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSite'
      Size = 100
      Calculated = True
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 4
  end
  inherited quDetil: TADOQuery
    BeforeDelete = quDetilBeforeDelete
    OnCalcFields = quDetilCalcFields
    OnNewRecord = quDetilNewRecord
    Parameters = <
      item
        Name = 'notaid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from intrjadwaldriverdt where notaid=:notaid order by N' +
        'oUnit'
      '')
    object quDetilNotaID: TStringField
      FieldName = 'NotaID'
      Size = 50
    end
    object quDetilNoUnit: TStringField
      FieldName = 'NoUnit'
      OnChange = quDetilNoUnitChange
      Size = 50
    end
    object quDetilDriver: TStringField
      FieldName = 'Driver'
      Size = 100
    end
    object quDetilJamMulai: TDateTimeField
      FieldName = 'JamMulai'
      DisplayFormat = 'HH:MM'
    end
    object quDetilJamSelesai: TDateTimeField
      FieldName = 'JamSelesai'
      DisplayFormat = 'HH:MM'
    end
    object quDetilHMAwal: TBCDField
      FieldName = 'HMAwal'
      Precision = 18
    end
    object quDetilHMAkhir: TBCDField
      FieldName = 'HMAkhir'
      Precision = 18
    end
    object quDetilUnitWH: TBCDField
      FieldName = 'UnitWH'
      Precision = 18
    end
    object quDetilFgStatus: TStringField
      FieldName = 'FgStatus'
      Size = 50
    end
    object quDetilBDTime: TBCDField
      FieldName = 'BDTime'
      Precision = 18
    end
    object quDetilBD: TStringField
      FieldName = 'BD'
      Size = 50
    end
    object quDetilSTBTime: TBCDField
      FieldName = 'STBTime'
      Precision = 18
    end
    object quDetilSTB: TStringField
      FieldName = 'STB'
      Size = 50
    end
    object quDetilRESTTime: TBCDField
      FieldName = 'RESTTime'
      Precision = 18
    end
    object quDetilREST: TStringField
      FieldName = 'REST'
      Size = 50
    end
    object quDetilNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quDetilUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quDetilUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quDetilBD1: TDateTimeField
      FieldName = 'BD1'
      DisplayFormat = 'HH:MM'
    end
    object quDetilBD2: TDateTimeField
      FieldName = 'BD2'
      DisplayFormat = 'HH:MM'
    end
    object quDetilBD3: TDateTimeField
      FieldName = 'BD3'
      DisplayFormat = 'HH:MM'
    end
    object quDetilBD4: TDateTimeField
      FieldName = 'BD4'
      DisplayFormat = 'HH:MM'
    end
    object quDetilSTB1: TDateTimeField
      FieldName = 'STB1'
      DisplayFormat = 'HH:MM'
    end
    object quDetilSTB2: TDateTimeField
      FieldName = 'STB2'
      DisplayFormat = 'HH:MM'
    end
    object quDetilSTB3: TDateTimeField
      FieldName = 'STB3'
      DisplayFormat = 'HH:MM'
    end
    object quDetilSTB4: TDateTimeField
      FieldName = 'STB4'
      DisplayFormat = 'HH:MM'
    end
    object quDetilREST1: TDateTimeField
      FieldName = 'REST1'
      DisplayFormat = 'HH:MM'
    end
    object quDetilREST2: TDateTimeField
      FieldName = 'REST2'
      DisplayFormat = 'HH:MM'
    end
    object quDetilREST3: TDateTimeField
      FieldName = 'REST3'
      DisplayFormat = 'HH:MM'
    end
    object quDetilREST4: TDateTimeField
      FieldName = 'REST4'
      DisplayFormat = 'HH:MM'
    end
    object quDetilLWH: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LWH'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLBD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LBD'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLSTB: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LSTB'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLRest: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LRest'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLOT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LOT'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilPA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PA'
      DisplayFormat = '#,0.00'
      Currency = False
      Calculated = True
    end
    object quDetilLSalesName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LSalesName'
      Size = 100
      Calculated = True
    end
    object quDetilNote: TStringField
      FieldName = 'Note'
      Size = 500
    end
    object quDetilTypeUnit: TStringField
      FieldName = 'TypeUnit'
      Size = 50
    end
    object quDetilLTypeClass: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTypeClass'
      Size = 50
      Calculated = True
    end
  end
  inherited dsDetil: TDataSource
    OnStateChange = dsDetilStateChange
  end
end
