inherited fmCFMsBank: TfmCFMsBank
  Left = 964
  Top = 450
  Caption = 'Master Bank'
  ClientHeight = 333
  ClientWidth = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 284
    inherited pa3: TdxContainer
      Height = 105
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 321
    Width = 723
  end
  inherited pa2: TdxContainer
    Height = 284
  end
  inherited pcMain: TdxPageControl
    Width = 530
    Height = 284
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Height = 373
        Filter.Criteria = {00000000}
        object dbgListBankId: TdxDBGridMaskColumn
          Caption = 'Kode Bank'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankId'
        end
        object dbgListBankName: TdxDBGridMaskColumn
          Caption = 'Nama Bank'
          Width = 196
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BankName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
      end
    end
    inherited ts02: TdxTabSheet
      DesignSize = (
        530
        261)
      object Label1: TLabel
        Left = 46
        Top = 16
        Width = 74
        Height = 17
        Alignment = taRightJustify
        Caption = 'Kode Bank :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 42
        Top = 40
        Width = 78
        Height = 17
        Alignment = taRightJustify
        Caption = 'Nama Bank :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 44
        Top = 61
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
      object Label3: TLabel
        Left = 22
        Top = 131
        Width = 98
        Height = 17
        Alignment = taRightJustify
        Caption = 'Kode Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 253
        Top = 130
        Width = 54
        Height = 17
        AutoSize = True
        DataField = 'LRekeningName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 830
        Top = 238
        Width = 180
        Height = 17
        Caption = '(2 digit penomoran voucher)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 128
        Top = 224
        Width = 109
        Height = 31
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActSave
        Caption = 'Simpan (F3)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 5
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 238
        Top = 224
        Width = 109
        Height = 31
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Anchors = [akRight, akBottom]
        Color = 9609897
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Version = '1.0.2e'
        Action = ActCancel
        Caption = 'Batal (Esc)'
        Colors.FocusedFrom = 16750383
        Colors.FocusedTo = 16763799
        Colors.HighlightFrom = clWhite
        Colors.HighlightTo = clWhite
        HotTrack = True
        TabOrder = 6
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 313
        Top = 156
        Width = 162
        Height = 61
        Caption = '[ Status Aktif ]'
        Columns = 2
        Ctl3D = False
        DataField = 'FgActive'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'Y'
          'T')
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 156
        Width = 306
        Height = 61
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        object Label21: TLabel
          Left = 47
          Top = 12
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 92
          Top = 13
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 39
          Top = 33
          Width = 45
          Height = 17
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 93
          Top = 34
          Width = 174
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object dxDBEdit1: TdxDBEdit
        Left = 125
        Top = 10
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 125
        Top = 34
        Width = 350
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'BankName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBMemo2: TdxDBMemo
        Left = 125
        Top = 58
        Width = 350
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
        WantReturns = False
        Height = 69
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 125
        Top = 126
        Width = 120
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningID'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object dxDBEdit3: TdxDBEdit
        Left = 776
        Top = 234
        Width = 50
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Kode'
        DataSource = dsMain
        StyleController = SCEdit
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 723
    inherited sbLast: TSpeedButton
      Left = 695
    end
    inherited sbNext: TSpeedButton
      Left = 672
    end
    inherited sbPrev: TSpeedButton
      Left = 649
    end
    inherited sbFirst: TSpeedButton
      Left = 626
    end
    inherited sbPeriod: TSpeedButton
      Left = 598
    end
    inherited BvlPeriod: TBevel
      Left = 352
    end
    inherited laPeriod: TLabel
      Left = 356
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsBank Where FgBank='#39'Y'#39)
    Left = 228
    object quMainBankId: TStringField
      FieldName = 'BankId'
      Size = 30
    end
    object quMainBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
    end
    object quMainLRekeningName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekeningName'
      Size = 100
      Calculated = True
    end
    object quMainFgBank: TStringField
      FieldName = 'FgBank'
      Size = 50
    end
    object quMainNumAll: TAutoIncField
      FieldName = 'NumAll'
      ReadOnly = True
    end
    object quMainKode: TStringField
      FieldName = 'Kode'
      Size = 2
    end
  end
  inherited dsMain: TDataSource
    Left = 252
  end
  inherited ActionList: TActionList
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
  object quGroupRek: TADOQuery
    Connection = dmMain.dbConn
    CursorType = ctStatic
    DataSource = dsMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CFMsGroupRek')
    Left = 556
    Top = 272
  end
end
