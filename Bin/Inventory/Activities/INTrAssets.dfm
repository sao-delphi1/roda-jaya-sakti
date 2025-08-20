inherited fmINTrAssets: TfmINTrAssets
  Left = 552
  Top = 51
  Caption = 'Assets Management'
  ClientHeight = 540
  ClientWidth = 940
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 491
    inherited pa3: TdxContainer
      Height = 312
    end
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Top = 528
    Width = 940
  end
  inherited pa2: TdxContainer
    Height = 491
  end
  inherited dxContainer7: TdxContainer
    Width = 747
    Height = 491
    inherited pcParent: TdxPageControl
      Width = 747
      Height = 491
      inherited ts01: TdxTabSheet
        object pcMain: TdxPageControl [0]
          Left = 0
          Top = 0
          Width = 747
          Height = 491
          ActivePage = ts02
          Align = alClient
          HideButtons = False
          HotTrack = False
          MultiLine = False
          OwnerDraw = False
          RaggedRight = False
          ScrollOpposite = False
          TabHeight = 0
          TabOrder = 2
          TabPosition = dxtpTop
          TabStop = False
          TabWidth = 0
          object dxTabSheet1: TdxTabSheet
            Caption = '&Grid'
            object dbgList: TdxDBGrid
              Left = 0
              Top = 0
              Width = 663
              Height = 612
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              DataSource = dsMain
              Filter.Criteria = {00000000}
              HideFocusRect = True
              HideSelection = True
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              object dbgListColumn1: TdxDBGridColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'AssetsID'
              end
              object dbgListColumn2: TdxDBGridColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Amount'
              end
              object dbgListColumn3: TdxDBGridColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Term'
              end
              object dbgListColumn4: TdxDBGridColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RekeningD'
              end
              object dbgListColumn5: TdxDBGridColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RekeningK'
              end
            end
          end
          object ts02: TdxTabSheet
            Caption = '&Column'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            object Label1: TLabel
              Left = 53
              Top = 14
              Width = 70
              Height = 17
              Alignment = taRightJustify
              Caption = 'Kode Aset :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 54
              Top = 60
              Width = 69
              Height = 17
              Alignment = taRightJustify
              Caption = 'Nilai Buku :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 34
              Top = 35
              Width = 89
              Height = 17
              Alignment = taRightJustify
              Caption = 'Tanggal Susut :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label7: TLabel
              Left = 21
              Top = 84
              Width = 102
              Height = 17
              Alignment = taRightJustify
              Caption = 'Rekening Debet :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label10: TLabel
              Left = 20
              Top = 107
              Width = 103
              Height = 17
              Alignment = taRightJustify
              Caption = 'Rekening Kredit :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label11: TLabel
              Left = 337
              Top = 60
              Width = 36
              Height = 17
              Alignment = taRightJustify
              Caption = 'Tahun'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText1: TDBText
              Left = 243
              Top = 14
              Width = 54
              Height = 17
              AutoSize = True
              DataField = 'LAssetsName'
              DataSource = dsMain
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object dbg: TdxDBGrid
              Left = 0
              Top = 170
              Width = 746
              Height = 295
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'Tabel Penyusutan'
                  Width = 525
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'VoucherID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Color = clScrollBar
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -15
              BandFont.Name = 'Times New Roman'
              BandFont.Style = [fsBold]
              DataSource = dsDetil
              Filter.Criteria = {00000000}
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -15
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
                Caption = 'No'
                ReadOnly = False
                Width = 35
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Nomor'
              end
              object dbgColumn2: TdxDBGridColumn
                Caption = 'Tanggal'
                ReadOnly = False
                Width = 110
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Tgl'
              end
              object dbgColumn3: TdxDBGridColumn
                Caption = 'Nota Voucher'
                Width = 140
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VoucherID'
              end
              object dbgColumn4: TdxDBGridColumn
                Caption = 'Penyusutan'
                ReadOnly = False
                Width = 125
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Amount'
              end
              object dbgColumn5: TdxDBGridColumn
                Caption = 'Total Penyusutan'
                ReadOnly = False
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Total'
              end
              object dbgColumn6: TdxDBGridColumn
                Caption = 'Sisa Nilai Buku'
                ReadOnly = False
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Sisa'
              end
            end
            object dxDBEdit1: TdxDBEdit
              Left = 130
              Top = 56
              Width = 142
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyPress = dxDBDateEdit1KeyPress
              CharCase = ecUpperCase
              DataField = 'Amount'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBButtonEdit1: TdxDBButtonEdit
              Left = 130
              Top = 8
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              DataField = 'AssetsID'
              DataSource = dsMain
              StyleController = SCEdit
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBButtonEdit1ButtonClick
              ExistButtons = True
            end
            object GroupBox1: TGroupBox
              Left = 461
              Top = 33
              Width = 260
              Height = 64
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              object Label21: TLabel
                Left = 21
                Top = 15
                Width = 50
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'User :'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object DBText8: TDBText
                Left = 77
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
                Left = 21
                Top = 35
                Width = 50
                Height = 15
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Waktu :'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object DBText9: TDBText
                Left = 77
                Top = 34
                Width = 166
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
            object dxDBEdit2: TdxDBEdit
              Left = 130
              Top = 80
              Width = 142
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyPress = dxDBDateEdit1KeyPress
              CharCase = ecUpperCase
              DataField = 'RekeningD'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBEdit3: TdxDBEdit
              Left = 130
              Top = 104
              Width = 142
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = dxDBDateEdit1KeyPress
              CharCase = ecUpperCase
              DataField = 'RekeningK'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 130
              Top = 32
              Width = 110
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnKeyPress = dxDBDateEdit1KeyPress
              DataField = 'Transdate'
              DataSource = dsMain
              StyleController = SCEdit
              UseEditMask = True
              StoredValues = 4
            end
            object dxDBEdit4: TdxDBEdit
              Left = 271
              Top = 56
              Width = 62
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnKeyPress = dxDBDateEdit1KeyPress
              CharCase = ecUpperCase
              DataField = 'Term'
              DataSource = dsMain
              StyleController = SCEdit
            end
            object dxButton2: TdxButton
              Tag = 4444
              Left = 131
              Top = 131
              Width = 85
              Height = 30
              About = 'Design eXperience. '#169' 2002 M. Hoffmann'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              Version = '1.0.2e'
              OnClick = dxButton2Click
              Caption = 'Proses'
              TabOrder = 8
              TabStop = False
            end
          end
        end
        inherited bbSave: TdxButton
          Left = 217
          Top = 154
          Width = 100
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Caption = 'Simpan (F3)'
        end
        inherited bbCancel: TdxButton
          Left = 318
          Top = 154
          Width = 100
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Caption = 'Batal (Esc)'
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 940
    inherited sbLast: TSpeedButton
      Left = 903
    end
    inherited sbNext: TSpeedButton
      Left = 876
    end
    inherited sbPrev: TSpeedButton
      Left = 849
    end
    inherited sbFirst: TSpeedButton
      Left = 822
    end
    inherited sbPeriod: TSpeedButton
      Left = 796
    end
    inherited BvlPeriod: TBevel
      Left = 550
    end
    inherited laPeriod: TLabel
      Left = 554
    end
  end
  inherited quAct: TADOQuery
    Left = 280
  end
  inherited quMain: TADOQuery
    BeforeDelete = quMainBeforeDelete
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'Select * from Intrassets')
    object quMainAssetsID: TStringField
      FieldName = 'AssetsID'
    end
    object quMainAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainTerm: TBCDField
      FieldName = 'Term'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainRekeningD: TStringField
      FieldName = 'RekeningD'
    end
    object quMainRekeningK: TStringField
      FieldName = 'RekeningK'
    end
    object quMainTransdate: TDateTimeField
      FieldName = 'Transdate'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainLAssetsName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAssetsName'
      Size = 50
      Calculated = True
    end
    object quMainFgProses: TStringField
      FieldName = 'FgProses'
      FixedChar = True
      Size = 1
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 4
  end
  inherited quDetil: TADOQuery
    Parameters = <
      item
        Name = 'AssetsID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select ROW_NUMBER() OVER (ORDER BY A.transDate) as Nomor,CONVERT' +
        '(varchar(10),A.TransDate,103) as Tgl,A.VoucherID,ROUND(A.JumlahD' +
        ',2) as Amount,'
      
        'ROUND((Select SUM(B.JumlahD) from CFTrKKBBHd B Where B.VoucherNo' +
        '=A.VoucherNo and B.TransDate<=A.TransDate),2) as Total,'
      
        'ROUND(C.AssetsValue-(Select SUM(B.JumlahD) from CFTrKKBBHd B Whe' +
        're B.VoucherNo=A.VoucherNo and B.TransDate<=A.TransDate),2) as S' +
        'isa'
      
        'from CFTrKKBBHd A INNER JOIN INMsAssets C On A.VoucherNo=C.Asset' +
        'sID WHERE A.FlagKKBB='#39'JU'#39' and A.VoucherNo=:AssetsID'
      'order by A.TransDate')
    object quDetilNomor: TLargeintField
      FieldName = 'Nomor'
      ReadOnly = True
    end
    object quDetilTgl: TStringField
      FieldName = 'Tgl'
      ReadOnly = True
      Size = 10
    end
    object quDetilVoucherID: TStringField
      FieldName = 'VoucherID'
      Size = 50
    end
    object quDetilAmount: TBCDField
      FieldName = 'Amount'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quDetilTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
    object quDetilSisa: TBCDField
      FieldName = 'Sisa'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 32
    end
  end
  object quAction: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    Left = 608
    Top = 52
  end
end
