inherited fmAPRptKartuHutangDetilDlg: TfmAPRptKartuHutangDetilDlg
  Top = 70
  Caption = ''
  ClientHeight = 496
  ClientWidth = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 424
    inherited laTitle: TLabel
      Width = 329
      Caption = 'Laporan Kartu Hutang Pembelian '
    end
  end
  inherited paCenter: TPanel
    Width = 424
    Height = 414
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 133
      Height = 45
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dt1: TdxDateEdit
        Left = 21
        Top = 14
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object rbAll: TRadioButton
      Left = 7
      Top = 59
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbAllClick
    end
    object rbSelect: TRadioButton
      Left = 63
      Top = 59
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbAllClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 78
      Width = 422
      Height = 96
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SuppID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      OnClick = dbgListClick
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListSupp: TdxDBGridMaskColumn
        Caption = 'Kode Supplier'
        Sorted = csUp
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppID'
      end
      object dbgListSuppName: TdxDBGridMaskColumn
        Caption = 'Nama Supplier'
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppName'
      end
    end
    object bbCancel: TdxButton
      Left = 307
      Top = 48
      Width = 110
      Height = 29
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI SUPPLIER'
      TabOrder = 4
    end
    object Panel1: TPanel
      Left = 4
      Top = 180
      Width = 129
      Height = 19
      BevelOuter = bvNone
      Color = 14401101
      TabOrder = 5
      object rbselect2: TRadioButton
        Left = 64
        Top = 1
        Width = 61
        Height = 17
        Caption = 'S&elect'
        TabOrder = 0
        OnClick = rbAll2Click
      end
      object rbAll2: TRadioButton
        Left = 4
        Top = 1
        Width = 53
        Height = 17
        Caption = 'A&ll'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbAll2Click
      end
    end
    object dxButton1: TdxButton
      Left = 305
      Top = 179
      Width = 110
      Height = 21
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CARI INVOICE'
      TabOrder = 6
    end
    object dbgNota: TdxDBGrid
      Left = 1
      Top = 202
      Width = 422
      Height = 211
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PurchaseID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 7
      DataSource = dsMain
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgNotaPurchaseID: TdxDBGridColumn
        Caption = 'Nota Pembelian'
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PurchaseID'
      end
      object dbgNotaTgl: TdxDBGridColumn
        MaxLength = 10
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Tgl'
      end
      object dbgNotaSuppID: TdxDBGridColumn
        Visible = False
        Width = 1174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SuppID'
      end
      object dbgNotaCurrID: TdxDBGridColumn
        Caption = 'Valuta'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CurrID'
      end
    end
  end
  inherited paBottom: TPanel
    Top = 455
    Width = 424
    inherited bbPreview: TBitBtn
      Left = 177
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 272
      OnClick = bbPreviewClick
    end
    inherited bbExit: TBitBtn
      Left = 346
    end
    object cbxOuts: TCheckBox
      Left = 8
      Top = 12
      Width = 155
      Height = 17
      Caption = 'Tampilkan yang masih sisa'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'Select SuppID,SuppName FROM APMsSupplier')
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT K.PurchaseID,K.CurrID,CONVERT(VARCHAR(10),K.Transdate,103' +
        ') as Tgl,K.SuppID FROM ('
      
        'SELECT PurchaseID,CurrID,Transdate,SuppID FROM APTrPurchaseHd UN' +
        'ION ALL'
      
        'SELECT KonsinyasiInvId,CurrID,Transdate,SuppID FROM APTrKonsinya' +
        'siInvHd) as K')
    Left = 260
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 284
    Top = 4
  end
  object ActionList: TActionList
    Left = 228
    Top = 8
    object ActPrint: TAction
      Category = 'Data'
      Caption = 'Cetak (F9)'
      ShortCut = 120
      OnExecute = bbPreviewClick
    end
  end
end
