inherited fmMsMaster: TfmMsMaster
  Left = 269
  Top = 200
  Caption = 'Master'
  ClientHeight = 406
  ClientWidth = 939
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 357
    inherited pa3: TdxContainer
      Top = 113
      Height = 244
    end
    inherited paOperation: TdxContainer
      Top = 8
      Height = 105
      inherited ceContinuousAdd: TdxCheckEdit [0]
        Left = 28
        Top = 67
        Enabled = False
      end
      inherited bbFind: TdxButton [1]
        Top = 51
        Enabled = False
      end
      inherited bbNew: TdxButton [2]
      end
      inherited bbDelete: TdxButton [3]
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 394
    Width = 939
  end
  inherited pa2: TdxContainer
    Height = 357
  end
  inherited dxContainer7: TdxContainer
    Width = 746
    Height = 357
    inherited pcParent: TdxPageControl
      Width = 746
      Height = 357
      inherited ts01: TdxTabSheet
        Caption = 'Master'
        object Label1: TLabel [0]
          Left = 8
          Top = 8
          Width = 139
          Height = 23
          Caption = 'Input Data Master'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel [1]
          Left = 224
          Top = 8
          Width = 176
          Height = 23
          Caption = 'Format : S - Sparepart '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object GBLog: TGroupBox [2]
          Left = 8
          Top = 295
          Width = 242
          Height = 50
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          object lbUser: TLabel
            Left = 8
            Top = 10
            Width = 37
            Height = 18
            Alignment = taRightJustify
            Caption = 'User :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbLogUser: TDBText
            Left = 53
            Top = 10
            Width = 125
            Height = 17
            DataField = 'UpdUser'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object LbTime: TLabel
            Left = 8
            Top = 30
            Width = 37
            Height = 18
            Alignment = taRightJustify
            Caption = 'Time :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbLogTime: TDBText
            Left = 53
            Top = 30
            Width = 148
            Height = 17
            DataField = 'UpdDate'
            DataSource = dsMain
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
        end
        inherited bbSave: TdxButton
          Left = 829
          Top = 458
          TabOrder = 3
        end
        inherited bbCancel: TdxButton
          Left = 904
          Top = 458
          TabOrder = 4
        end
        object dbgList: TdxDBGrid
          Left = 0
          Top = 36
          Width = 745
          Height = 320
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemCompID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsMain
          Filter.Criteria = {00000000}
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Comic Sans MS'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgKdMaster: TdxDBGridColumn
            Caption = 'Kode Master'
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KdMaster'
          end
          object dbgNmMaster: TdxDBGridColumn
            Caption = 'Nama Master'
            Width = 164
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NmMaster'
          end
          object dbgListColumn5: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai1'
          end
          object dbgListColumn6: TdxDBGridColumn
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai2'
          end
          object dbgUpdDate: TdxDBGridColumn
            ReadOnly = True
            Width = 190
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgUpdUser: TdxDBGridColumn
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
        object dxButton1: TdxButton
          Tag = 3333
          Left = 420
          Top = 373
          Width = 100
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActSave
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 1
        end
        object dxButton2: TdxButton
          Tag = 4444
          Left = 521
          Top = 373
          Width = 100
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Anchors = [akRight, akBottom]
          Color = 9609897
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Version = '1.0.2e'
          Action = ActCancel
          Caption = 'BATAL (F4)'
          Colors.FocusedFrom = 16750383
          Colors.FocusedTo = 16763799
          Colors.HighlightFrom = clWhite
          Colors.HighlightTo = clWhite
          HotTrack = True
          TabOrder = 2
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 939
    inherited sbLast: TSpeedButton
      Left = 902
    end
    inherited sbNext: TSpeedButton
      Left = 875
    end
    inherited sbPrev: TSpeedButton
      Left = 848
    end
    inherited sbFirst: TSpeedButton
      Left = 821
    end
    inherited sbPeriod: TSpeedButton
      Left = 795
    end
    inherited BvlPeriod: TBevel
      Left = 549
    end
    inherited laPeriod: TLabel
      Left = 553
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from AllMaster')
    object quMainKdMaster: TStringField
      FieldName = 'KdMaster'
      Size = 50
    end
    object quMainNmMaster: TStringField
      FieldName = 'NmMaster'
      Size = 255
    end
    object quMainUpdDate: TStringField
      FieldName = 'UpdDate'
      Size = 50
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
      Size = 50
    end
    object quMainFgMaster: TStringField
      FieldName = 'FgMaster'
      FixedChar = True
      Size = 1
    end
    object quMainNilai1: TBCDField
      FieldName = 'Nilai1'
      Precision = 18
    end
    object quMainNilai2: TBCDField
      FieldName = 'Nilai2'
      Precision = 18
    end
  end
end
