inherited fmCFTrKKBB1: TfmCFTrKKBB1
  Left = 157
  Top = 70
  Caption = 'JURNAL'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TdxPageControl
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Filter.Criteria = {00000000}
      end
    end
    inherited ts02: TdxTabSheet
      inherited pcColumn: TdxPageControl
        inherited ts0201: TdxTabSheet
          inherited Panel1: TPanel
            inherited dxDBDateEdit1: TdxDBDateEdit
              StoredValues = 4
            end
            inherited dxDBDateEdit2: TdxDBDateEdit
              StoredValues = 4
            end
            inherited dxDBButtonEdit2: TdxDBButtonEdit
              ExistButtons = True
            end
            inherited dxDBButtonEdit1: TdxDBButtonEdit
              ExistButtons = True
            end
            inherited dxDBButtonEdit3: TdxDBButtonEdit
              ExistButtons = True
            end
          end
          inherited dbg: TdxDBGrid
            Filter.Criteria = {00000000}
          end
        end
      end
    end
  end
end
