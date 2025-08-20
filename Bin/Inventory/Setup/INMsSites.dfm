inherited fmINMsSites: TfmINMsSites
  Left = 440
  Top = 350
  Caption = 'Master Sites'
  ClientWidth = 889
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited paOperation: TdxContainer
      inherited bbFind: TdxButton
        OnClick = bbFindClick
      end
    end
  end
  inherited paBottom: TdxContainer
    Width = 889
  end
  inherited dxContainer7: TdxContainer
    Width = 696
    inherited pcParent: TdxPageControl
      Width = 696
      inherited ts01: TdxTabSheet
        inherited bbSave: TdxButton
          Left = 525
        end
        inherited bbCancel: TdxButton
          Left = 605
        end
        object dbgGroup: TdxDBGrid
          Left = 0
          Top = 0
          Width = 696
          Height = 487
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'SiteID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
          HeaderFont.Name = 'Times New Roman'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgGroupGroupID: TdxDBGridColumn
            Caption = 'Kode Site'
            CharCase = ecUpperCase
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteID'
          end
          object dbgGroupName: TdxDBGridColumn
            Caption = 'Nama Site'
            CharCase = ecUpperCase
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SiteName'
          end
          object dbgGroupColumn6: TdxDBGridColumn
            Alignment = taLeftJustify
            Caption = 'Pembagi 1'
            MinWidth = 16
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai1'
          end
          object dbgGroupColumn7: TdxDBGridColumn
            Alignment = taLeftJustify
            Caption = 'Pembagi 2'
            MinWidth = 16
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nilai2'
          end
          object dbgGroupUpdDate: TdxDBGridColumn
            Caption = 'Last Updated'
            ReadOnly = True
            TabStop = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdDate'
          end
          object dbgGroupUser: TdxDBGridColumn
            Caption = 'Updated By'
            ReadOnly = True
            TabStop = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UpdUser'
          end
        end
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 889
    inherited sbLast: TSpeedButton
      Left = 852
    end
    inherited sbNext: TSpeedButton
      Left = 825
    end
    inherited sbPrev: TSpeedButton
      Left = 798
    end
    inherited sbFirst: TSpeedButton
      Left = 771
    end
    inherited sbPeriod: TSpeedButton
      Left = 745
    end
    inherited BvlPeriod: TBevel
      Left = 499
    end
    inherited laPeriod: TLabel
      Left = 503
    end
  end
  inherited quMain: TADOQuery
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'select * from inmssites')
    object quMainSiteID: TStringField
      FieldName = 'SiteID'
    end
    object quMainSiteName: TStringField
      FieldName = 'SiteName'
      Size = 100
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainFgGroup: TStringField
      FieldName = 'FgGroup'
      Size = 10
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
