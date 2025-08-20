inherited fmCFMsRekening: TfmCFMsRekening
  Left = 457
  Top = 385
  Caption = 'Master Rekening'
  ClientHeight = 377
  ClientWidth = 708
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 328
    inherited pa3: TdxContainer
      Height = 149
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
    Top = 365
    Width = 708
  end
  inherited pa2: TdxContainer
    Height = 328
  end
  inherited pcMain: TdxPageControl
    Width = 515
    Height = 328
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 599
        Height = 373
        Filter.Criteria = {00000000}
        object dbgListRekeningId: TdxDBGridMaskColumn
          Caption = 'Kode Rekening'
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RekeningId'
        end
        object dbgListRekeningName: TdxDBGridMaskColumn
          Caption = 'Nama Rekening'
          Width = 228
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RekeningName'
        end
        object dbgListGroupRekId: TdxDBGridMaskColumn
          Caption = 'Group Rekening'
          Width = 184
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GroupRekId'
        end
        object dbgListGroupRekName: TdxDBGridLookupColumn
          Caption = 'Nama Group Rekening'
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GroupRekName'
        end
        object dbgListNote: TdxDBGridMaskColumn
          Width = 604
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListUpdUser: TdxDBGridMaskColumn
          Caption = 'User'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdUser'
        end
        object dbgListUpdDate: TdxDBGridDateColumn
          Caption = 'Waktu'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UpdDate'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object Label1: TLabel
        Left = 10
        Top = 14
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kode Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 10
        Top = 38
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nama Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 10
        Top = 62
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Group Rekening :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 10
        Top = 86
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Keterangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 300
        Top = 62
        Width = 199
        Height = 17
        DataField = 'GroupRekName'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 10
        Top = 110
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipe :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 42
        Top = 390
        Width = 130
        Height = 19
        Alignment = taRightJustify
        Caption = 'Komponen LBRG :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label11: TLabel
        Left = 74
        Top = 350
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valuta :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label3: TLabel
        Left = 10
        Top = 134
        Width = 120
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Neraca :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 137
        Top = 258
        Width = 110
        Height = 26
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
        TabOrder = 7
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 248
        Top = 258
        Width = 110
        Height = 26
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
        TabOrder = 8
      end
      object dxDBEdit1: TdxDBEdit
        Left = 136
        Top = 8
        Width = 160
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningId'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBEdit2: TdxDBEdit
        Left = 136
        Top = 32
        Width = 360
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'RekeningName'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 136
        Top = 56
        Width = 160
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'GroupRekId'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 175
        Width = 255
        Height = 67
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        object Label21: TLabel
          Left = 31
          Top = 15
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
          Left = 75
          Top = 16
          Width = 118
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
          Left = 22
          Top = 36
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
          Left = 75
          Top = 37
          Width = 115
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
      object dxDBEdit3: TdxDBEdit
        Left = 136
        Top = 80
        Width = 360
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Note'
        DataSource = dsMain
        StyleController = SCEdit
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 136
        Top = 104
        Width = 155
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'Tipe'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'AKTIVA'
          'KEWAJIBAN'
          'EKUITAS'
          'PENDAPATAN'
          'PEMBELIAN'
          'BEBAN/BIAYA'
          'PEND/BIAYA LAIN-LAIN'
          'PAJAK')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '8'
          '5'
          '6'
          '7')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 268
        Top = 175
        Width = 150
        Height = 67
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
        TabOrder = 6
        Values.Strings = (
          'Y'
          'T')
      end
      object dxDBImageEdit2: TdxDBImageEdit
        Left = 185
        Top = 384
        Width = 155
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'LBRG'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'SALE'
          'COGS'
          'GENERAL ADM EXP'
          'OTHER INCOME'
          'OTHER EXPENSE'
          'TAX'
          'NERACA')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 200
        Top = 344
        Width = 97
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Visible = False
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'CurrId'
        DataSource = dsMain
        StyleController = SCEdit
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBImageEdit3: TdxDBImageEdit
        Left = 136
        Top = 128
        Width = 155
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dxDBEdit1KeyPress
        DataField = 'FgTipe'
        DataSource = dsMain
        StyleController = SCEdit
        Descriptions.Strings = (
          'AKTIVA'
          'PASSIVA')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'A'
          'P')
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 708
    inherited sbLast: TSpeedButton
      Left = 680
    end
    inherited sbNext: TSpeedButton
      Left = 657
    end
    inherited sbPrev: TSpeedButton
      Left = 634
    end
    inherited sbFirst: TSpeedButton
      Left = 611
    end
    inherited sbPeriod: TSpeedButton
      Left = 583
    end
    inherited BvlPeriod: TBevel
      Left = 337
    end
    inherited laPeriod: TLabel
      Left = 341
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM CFMsRekening')
    Left = 228
    object quMainRekeningId: TStringField
      FieldName = 'RekeningId'
      Size = 30
    end
    object quMainRekeningName: TStringField
      FieldName = 'RekeningName'
      Size = 50
    end
    object quMainGroupRekId: TStringField
      FieldName = 'GroupRekId'
      Size = 30
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
    object quMainGroupRekName: TStringField
      FieldKind = fkLookup
      FieldName = 'GroupRekName'
      LookupDataSet = quGroupRek
      LookupKeyFields = 'GroupRekId'
      LookupResultField = 'GroupRekName'
      KeyFields = 'GroupRekId'
      Size = 50
      Lookup = True
    end
    object quMainTipe: TStringField
      FieldName = 'Tipe'
      Size = 1
    end
    object quMainFgTipe: TStringField
      FieldName = 'FgTipe'
      Size = 1
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainLBRG: TStringField
      FieldName = 'LBRG'
    end
    object quMainCurrId: TStringField
      FieldName = 'CurrId'
      Size = 50
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
