inherited fmARRptSales: TfmARRptSales
  Left = 174
  Caption = 'Laporan Peminjaman'
  ClientHeight = 482
  ClientWidth = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    Width = 487
    inherited laTitle: TLabel
      Width = 276
      Caption = 'LAPORAN PEMINJAMAN'
    end
  end
  inherited paCenter: TPanel
    Width = 487
    Height = 400
    Caption = 'Laporan SO Belum Terkirim'
    object Label3: TLabel
      Left = 198
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Group Unit :'
    end
    object GBPeriode: TGroupBox
      Left = 8
      Top = 2
      Width = 313
      Height = 47
      Caption = 'Periode'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 21
        Top = 19
        Width = 42
        Height = 13
        Caption = 'Periode :'
      end
      object Label2: TLabel
        Left = 171
        Top = 19
        Width = 33
        Height = 13
        Caption = 'sampai'
      end
      object dt1: TdxDateEdit
        Left = 70
        Top = 14
        Width = 87
        TabOrder = 0
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object dt2: TdxDateEdit
        Left = 213
        Top = 14
        Width = 87
        TabOrder = 1
        Date = -700000
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object bbCancel: TdxButton
      Left = 332
      Top = 22
      Width = 105
      Height = 22
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = bbCancelClick
      Caption = 'CARI &PEMINJAM'
      TabOrder = 1
    end
    object rbSelect: TRadioButton
      Left = 82
      Top = 56
      Width = 61
      Height = 17
      Caption = '&Select'
      TabOrder = 2
      OnClick = rbSelectClick
    end
    object rbAll: TRadioButton
      Left = 10
      Top = 56
      Width = 53
      Height = 17
      Caption = '&All'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = rbSelectClick
    end
    object dbgList: TdxDBGrid
      Left = 1
      Top = 80
      Width = 485
      Height = 319
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'custname'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      TabOrder = 4
      OnClick = dbgListClick
      DataSource = dsAct
      Filter.Criteria = {00000000}
      HideFocusRect = True
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dbgListCustID: TdxDBGridMaskColumn
        Caption = 'Kode Peminjam'
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustID'
      end
      object dbgListCustName: TdxDBGridMaskColumn
        Caption = 'Nama Peminjam'
        Sorted = csUp
        Width = 322
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CustName'
      end
    end
    object KodeDari: TdxButtonEdit
      Left = 260
      Top = 53
      Width = 42
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      CharCase = ecUpperCase
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = KodeDariButtonClick
      ExistButtons = True
    end
    object dxButtonEdit1: TdxButtonEdit
      Left = 302
      Top = 53
      Width = 113
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      CharCase = ecUpperCase
      ReadOnly = True
      StyleController = SCEdit
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      StoredValues = 64
      ExistButtons = True
    end
  end
  inherited paBottom: TPanel
    Top = 441
    Width = 487
    inherited bbPreview: TBitBtn
      Left = 241
      OnClick = bbPreviewClick
    end
    inherited bbPrint: TBitBtn
      Left = 335
    end
    inherited bbExit: TBitBtn
      Left = 409
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 14
      Width = 177
      Height = 17
      Caption = 'Bedasarkan Tanggal Kirim'
      TabOrder = 3
      Visible = False
    end
  end
  inherited quAct: TADOQuery
    SQL.Strings = (
      'select custid,custname from armscustomer')
    Left = 400
    object quActcustid: TStringField
      FieldName = 'custid'
    end
    object quActcustname: TStringField
      FieldName = 'custname'
      Size = 200
    end
  end
  inherited dsAct: TDataSource
    Left = 436
  end
  object quMain: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT K.POID,K.Lokasi,CONVERT(VARCHAR(10),K.TglKirim,1' +
        '12) as Tgl FROM ( '
      
        'SELECT B.Status,B.Lokasi,B.CustID,B.POID,B.Transdate,B.TglKirim,' +
        'ISNULL(A.Jumlah,0)- '
      
        '(SELECT ISNULL(SUM(D.Jumlah),0) FROM ARTrKonTransBrgDT D WHERE A' +
        '.POID=D.POID AND A.ItemID=D.ItemID) as Sisa '
      
        'FROM ARTrPurchaseOrderDT A INNER JOIN ARTrPurchaseOrderHD B ON A' +
        '.POID=B.POID UNION ALL'
      
        'SELECT 0,B.Lokasi,B.CustID,B.DIID,B.Transdate,B.TglKirim,ISNULL(' +
        'A.Jumlah,0)-(SELECT ISNULL(SUM(D.Jumlah),0) '
      
        'FROM ARTrKonTransBrgDT D WHERE A.DIID=D.POID AND A.ItemID=D.Item' +
        'ID) as Sisa FROM ARTrDeliveryIDt A '
      'INNER JOIN ARTrDeliveryIHD B ON A.DIID=B.DIID) as K '
      'WHERE K.Status<>2'
      'ORDER BY K.POID')
    Left = 304
    Top = 4
  end
  object dsMain: TDataSource
    DataSet = quMain
    Left = 332
    Top = 4
  end
end
