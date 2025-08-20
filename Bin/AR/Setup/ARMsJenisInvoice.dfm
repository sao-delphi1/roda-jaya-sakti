inherited fmARMsJenisInvoice: TfmARMsJenisInvoice
  Caption = 'Master Jenis Invoice'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    inherited pa3: TdxContainer
      Top = 121
      Height = 366
    end
    inherited paOperation: TdxContainer
      Height = 113
      inherited bbFind: TdxButton [0]
        Top = 51
        Enabled = False
      end
      inherited bbNew: TdxButton [1]
      end
      inherited bbDelete: TdxButton [2]
      end
      inherited ceContinuousAdd: TdxCheckEdit
        Left = 30
        Top = 62
      end
    end
    inherited pa1: TdxContainer
      Top = 113
    end
  end
  inherited dxContainer7: TdxContainer
    inherited pcParent: TdxPageControl
      inherited ts01: TdxTabSheet
        object dbgUOM: TdxDBGrid
          Left = 0
          Top = 0
          Width = 597
          Height = 487
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KdJenis'
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
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object dbgUOMColumn1: TdxDBGridColumn
            Caption = 'Kode Jenis'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KdJenis'
          end
          object dbgUOMColumn2: TdxDBGridColumn
            Caption = 'Keterangan'
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NmJenis'
          end
          object dbgUOMColumn3: TdxDBGridButtonColumn
            Caption = 'Kode COA'
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RekeningID'
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dbgUOMColumn3ButtonClick
          end
          object dbgUOMColumn4: TdxDBGridColumn
            Caption = 'Nama COA'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LRekName'
          end
        end
      end
    end
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    SQL.Strings = (
      'select * from armsjenisinvoice')
    object quMainKdJenis: TStringField
      FieldName = 'KdJenis'
      Size = 50
    end
    object quMainNmJenis: TStringField
      FieldName = 'NmJenis'
      Size = 100
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 50
    end
    object quMainLRekName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LRekName'
      Size = 150
      Calculated = True
    end
  end
end
