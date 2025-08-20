inherited fmARMsSales: TfmARMsSales
  Left = 203
  Top = 218
  Caption = 'Master Karyawan'
  ClientHeight = 691
  ClientWidth = 1224
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLeft: TdxContainer
    Height = 642
    inherited pa3: TdxContainer
      Height = 463
      object Panel1: TPanel
        Left = -211
        Top = -286
        Width = 120
        Height = 33
        Color = 13676331
        TabOrder = 0
        DesignSize = (
          120
          33)
        object bbExcel: TBitBtn
          Left = 0
          Top = 0
          Width = 115
          Height = 30
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = '&Export Excel'
          TabOrder = 0
          OnClick = bbExcelClick
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000808080808080
            8080808080808080808080808080808080808080808080808080808080808080
            8080808080808080808080808080808000008080800080000080000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000808080000080808000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000808080
            0000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080008080800000808080008000
            008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080
            000080000080000080000080008080800000808080008000008000FFFFFF0080
            00008000008000008000008000008000008000FFFFFF00800000800000800000
            80000080008080800000808080008000008000FFFFFF00800000800000800000
            8000008000008000FFFFFF008000008000008000FFFFFF008000008000808080
            0000808080008000008000FFFFFF008000008000008000008000008000FFFFFF
            008000008000008000008000FFFFFF0080000080008080800000808080008000
            008000FFFFFFFFFFFF008000008000008000FFFFFF0080000080000080000080
            00008000FFFFFF0080000080008080800000808080008000008000FFFFFFFFFF
            FFFFFFFF008000FFFFFF008000008000008000008000FFFFFFFFFFFFFFFFFF00
            80000080008080800000808080008000008000FFFFFFFFFFFF008000FFFFFF00
            8000008000008000008000008000008000FFFFFFFFFFFF008000008000808080
            0000808080008000008000FFFFFF008000FFFFFF008000008000008000008000
            008000008000008000008000FFFFFF0080000080008080800000808080008000
            008000FFFFFF008000008000008000008000FFFFFF0080000080000080000080
            00008000FFFFFF0080000080008080800000808080008000008000FFFFFF0080
            00008000008000FFFFFFFFFFFFFFFFFF008000008000008000008000FFFFFF00
            80000080008080800000808080008000008000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080
            0000808080008000008000008000008000008000008000008000008000008000
            0080000080000080000080000080000080000080008080800000808080008000
            0080000080000080000080000080000080000080000080000080000080000080
            0000800000800000800000800080808000008080808080808080808080808080
            8080808080808080808080808080808080808080808080808080808080808080
            80808080808080800000}
        end
      end
    end
    inherited paOperation: TdxContainer
      Top = 8
      inherited bbDelete: TdxButton
        Enabled = False
      end
      inherited bbFind: TdxButton
        Top = 51
        OnClick = bbFindClick
      end
    end
    inherited pa1: TdxContainer
      Top = 0
    end
  end
  inherited paBottom: TdxContainer
    Top = 679
    Width = 1224
  end
  inherited pa2: TdxContainer
    Height = 642
  end
  inherited pcMain: TdxPageControl
    Width = 1031
    Height = 642
    inherited ts01: TdxTabSheet
      inherited dbgList: TdxDBGrid
        Width = 1031
        Height = 619
        KeyField = 'SalesID'
        AutoExpandOnSearch = False
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        object dbgListSalesName: TdxDBGridMaskColumn
          Caption = 'Nama Karyawan'
          DisableEditor = True
          Width = 125
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesName'
        end
        object dbgListColumn15: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NIK'
        end
        object dbgListColumn14: TdxDBGridButtonColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Jabatan'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
        end
        object dbgListAddress: TdxDBGridMaskColumn
          Caption = 'Domisili'
          DisableEditor = True
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'domisili'
        end
        object dbgListColumn10: TdxDBGridColumn
          Caption = 'Alamat KTP'
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Address'
        end
        object dbgListColumn8: TdxDBGridColumn
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TLahir'
        end
        object dbgListColumn9: TdxDBGridDateColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'tglLahir'
        end
        object dbgListColumn12: TdxDBGridButtonColumn
          Caption = 'Agama'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuAgama'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit4ButtonClick
        end
        object dbgListColumn13: TdxDBGridButtonColumn
          Caption = 'Status'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LuStatus'
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit6ButtonClick
        end
        object dbgListPhone: TdxDBGridMaskColumn
          Caption = 'Telepon'
          DisableEditor = True
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Phone'
        end
        object dbgListHP: TdxDBGridMaskColumn
          DisableEditor = True
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HP'
        end
        object dbgListEmail: TdxDBGridColumn
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Email'
        end
        object dbgListNote: TdxDBGridColumn
          Caption = 'Keterangan'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Note'
        end
        object dbgListColumn11: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NPWP'
        end
        object dbgListSalesID: TdxDBGridMaskColumn
          Caption = 'Kode System'
          DisableEditor = True
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SalesID'
        end
      end
    end
    inherited ts02: TdxTabSheet
      object DBText3: TDBText
        Left = 1191
        Top = 217
        Width = 65
        Height = 17
        DataField = 'luJabatan'
        DataSource = dsMain
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 880
        Top = 202
        Width = 100
        Height = 17
        AutoSize = False
        Caption = 'Tanda Tangan :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 880
        Top = 26
        Width = 100
        Height = 17
        AutoSize = False
        Caption = 'Foto :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bbSave: TdxButton
        Tag = 3333
        Left = 730
        Top = 571
        Width = 100
        Height = 35
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
        TabOrder = 6
      end
      object bbCancel: TdxButton
        Tag = 4444
        Left = 831
        Top = 571
        Width = 100
        Height = 35
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
        TabOrder = 7
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 879
        Top = 376
        Width = 122
        Height = 65
        Caption = '[ Status Aktif ]'
        Ctl3D = False
        DataField = 'FgActive'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Values.Strings = (
          '1'
          '0')
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 587
        Width = 512
        Height = 28
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        object Label21: TLabel
          Left = 29
          Top = 10
          Width = 31
          Height = 15
          Alignment = taRightJustify
          Caption = 'User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 68
          Top = 10
          Width = 132
          Height = 17
          DataField = 'UpdUser'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 283
          Top = 10
          Width = 41
          Height = 15
          Alignment = taRightJustify
          Caption = 'Waktu :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 332
          Top = 10
          Width = 135
          Height = 17
          DataField = 'UpdDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBImage1: TDBImage
        Left = 880
        Top = 43
        Width = 140
        Height = 122
        Cursor = crHandPoint
        DataField = 'foto'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Stretch = True
        TabOrder = 10
      end
      object BitBtn1: TBitBtn
        Left = 880
        Top = 169
        Width = 71
        Height = 25
        Cursor = crHandPoint
        Hint = 'Ubah TTD'
        Caption = '&Image'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 950
        Top = 169
        Width = 71
        Height = 25
        Cursor = crHandPoint
        Hint = 'Hapus TTD'
        Caption = '&Delete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = BitBtn2Click
        Glyph.Data = {
          9E050000424D9E05000000000000360400002800000012000000120000000100
          08000000000068010000120B0000120B00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
          FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
          FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
          FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
          FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
          CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
          CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
          CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
          CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
          990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
          990000CC9900FF999900CC99990099999900669999003399990000999900FF66
          9900CC66990099669900666699003366990000669900FF339900CC3399009933
          9900663399003333990000339900FF009900CC00990099009900660099003300
          990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
          6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
          6600669966003399660000996600FF666600CC66660099666600666666003366
          660000666600FF336600CC33660099336600663366003333660000336600FF00
          6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
          330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
          330000CC3300FF993300CC99330099993300669933003399330000993300FF66
          3300CC66330099663300666633003366330000663300FF333300CC3333009933
          3300663333003333330000333300FF003300CC00330099003300660033003300
          330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
          000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
          000000990000FF660000CC66000099660000666600000066000033660000FF33
          0000CC33000099330000663300003333000000330000CC000000990000006600
          0000330000000000DD000000BB000000AA000000880000007700000055000000
          44000000220000DD000000BB000000AA00000088000000770000005500000044
          000000220000DDDDDD0055555500777777007777770044444400222222001111
          110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
          32323232323232323232323200003232323232323200DEDEDE00323232323232
          000032323232323232DEDDDD7272323232323232000032323232323200DDDBDB
          DB720032323232320000323232323232004EF9F9DB7200323232323200003232
          3232323232DBF9F94EDE323232323232000032323232323232000000DE003232
          3232323200003232323232323232DBDE00323232323232320000323232323232
          3200DBDEDE3232323232323200003232323232323200DBDBDE32323232323232
          00003232323232323200DBDBDE00323232323232000032323232323232DBDBDB
          DEDE323232323232000032323232323200DBDBDBDBDE00323232323200003232
          3232323200DBDBDB1DDE0032323232320000323232323232001DDBDBDBDBDE32
          323232320000323232323232DBDBDBDBDBDBDB32323232320000323232323232
          32DBDBDBDB003232323232320000323232323232323200003232323232323232
          0000}
      end
      object DBImage2: TDBImage
        Left = 880
        Top = 219
        Width = 140
        Height = 122
        Cursor = crHandPoint
        DataField = 'ttd'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Stretch = True
        TabOrder = 13
      end
      object BitBtn3: TBitBtn
        Left = 880
        Top = 345
        Width = 71
        Height = 25
        Cursor = crHandPoint
        Hint = 'Ubah TTD'
        Caption = '&Image'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        NumGlyphs = 2
      end
      object BitBtn4: TBitBtn
        Left = 950
        Top = 345
        Width = 71
        Height = 25
        Cursor = crHandPoint
        Hint = 'Hapus TTD'
        Caption = '&Delete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = BitBtn4Click
        Glyph.Data = {
          9E050000424D9E05000000000000360400002800000012000000120000000100
          08000000000068010000120B0000120B00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
          FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
          FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
          FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
          FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
          CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
          CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
          CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
          CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
          990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
          990000CC9900FF999900CC99990099999900669999003399990000999900FF66
          9900CC66990099669900666699003366990000669900FF339900CC3399009933
          9900663399003333990000339900FF009900CC00990099009900660099003300
          990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
          6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
          6600669966003399660000996600FF666600CC66660099666600666666003366
          660000666600FF336600CC33660099336600663366003333660000336600FF00
          6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
          330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
          330000CC3300FF993300CC99330099993300669933003399330000993300FF66
          3300CC66330099663300666633003366330000663300FF333300CC3333009933
          3300663333003333330000333300FF003300CC00330099003300660033003300
          330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
          000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
          000000990000FF660000CC66000099660000666600000066000033660000FF33
          0000CC33000099330000663300003333000000330000CC000000990000006600
          0000330000000000DD000000BB000000AA000000880000007700000055000000
          44000000220000DD000000BB000000AA00000088000000770000005500000044
          000000220000DDDDDD0055555500777777007777770044444400222222001111
          110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
          32323232323232323232323200003232323232323200DEDEDE00323232323232
          000032323232323232DEDDDD7272323232323232000032323232323200DDDBDB
          DB720032323232320000323232323232004EF9F9DB7200323232323200003232
          3232323232DBF9F94EDE323232323232000032323232323232000000DE003232
          3232323200003232323232323232DBDE00323232323232320000323232323232
          3200DBDEDE3232323232323200003232323232323200DBDBDE32323232323232
          00003232323232323200DBDBDE00323232323232000032323232323232DBDBDB
          DEDE323232323232000032323232323200DBDBDBDBDE00323232323200003232
          3232323200DBDBDB1DDE0032323232320000323232323232001DDBDBDBDBDE32
          323232320000323232323232DBDBDBDBDBDBDB32323232320000323232323232
          32DBDBDBDB003232323232320000323232323232323200003232323232323232
          0000}
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 515
        Height = 447
        Caption = '[ DATA PRIBADI ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 10
          Top = 25
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Kode System'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 10
          Top = 70
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Nama Karyawan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 10
          Top = 117
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Alamat Domisili'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 10
          Top = 326
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'HP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 10
          Top = 303
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Telp.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 10
          Top = 348
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'E-mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 10
          Top = 371
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Keterangan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 10
          Top = 94
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Tempat, Tanggal Lahir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 359
          Top = 92
          Width = 147
          Height = 17
          DataField = 'Umur'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 10
          Top = 260
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Agama'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 212
          Top = 260
          Width = 48
          Height = 15
          AutoSize = True
          DataField = 'LuAgama'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 10
          Top = 281
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Status'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 212
          Top = 282
          Width = 48
          Height = 15
          AutoSize = True
          DataField = 'LuStatus'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 10
          Top = 166
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'KTP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 10
          Top = 188
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'Alamat KTP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 10
          Top = 48
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'NIK'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 132
          Top = 25
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 132
          Top = 70
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 132
          Top = 117
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 132
          Top = 326
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 132
          Top = 303
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 132
          Top = 348
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 132
          Top = 371
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 132
          Top = 94
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 132
          Top = 260
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 132
          Top = 281
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 132
          Top = 166
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 132
          Top = 188
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 132
          Top = 47
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 10
          Top = 239
          Width = 125
          Height = 17
          AutoSize = False
          Caption = 'NPWP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 132
          Top = 239
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit1: TdxDBEdit
          Left = 140
          Top = 22
          Width = 101
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SalesID'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit2: TdxDBEdit
          Left = 140
          Top = 66
          Width = 350
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'SalesName'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBMemo1: TdxDBMemo
          Left = 140
          Top = 118
          Width = 350
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'domisili'
          DataSource = dsMain
          StyleController = SCEdit
          WantReturns = False
          Height = 52
        end
        object dxDBEdit3: TdxDBEdit
          Left = 140
          Top = 300
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Phone'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit7: TdxDBEdit
          Left = 140
          Top = 322
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'HP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit4: TdxDBEdit
          Left = 140
          Top = 344
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Email'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBMemo2: TdxDBMemo
          Left = 140
          Top = 366
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Note'
          DataSource = dsMain
          StyleController = SCEdit
          WantReturns = False
          Height = 25
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 259
          Top = 88
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'tglLahir'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit5: TdxDBEdit
          Left = 140
          Top = 88
          Width = 120
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TLahir'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit4: TdxDBButtonEdit
          Left = 140
          Top = 256
          Width = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          DataField = 'agama'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit4ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit6: TdxDBButtonEdit
          Left = 140
          Top = 278
          Width = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          DataField = 'FgStatus'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit6ButtonClick
          ExistButtons = True
        end
        object dxDBEdit12: TdxDBEdit
          Left = 140
          Top = 161
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'KTP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBMemo3: TdxDBMemo
          Left = 140
          Top = 183
          Width = 350
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Address'
          DataSource = dsMain
          StyleController = SCEdit
          WantReturns = False
          Height = 52
        end
        object dxDBEdit16: TdxDBEdit
          Left = 140
          Top = 44
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'NIK'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 142
          Top = 395
          Width = 208
          Height = 40
          Caption = '[ Jenis Kelamin ]'
          Columns = 2
          Ctl3D = False
          DataField = 'jeniskel'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Items.Strings = (
            'Pria'
            'Wanita')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'P'
            'W')
        end
        object dxDBEdit17: TdxDBEdit
          Left = 140
          Top = 234
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'NPWP'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object GroupBox3: TGroupBox
        Left = 528
        Top = 8
        Width = 345
        Height = 249
        Caption = '[ DATA PEKERJAAN ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label8: TLabel
          Left = 10
          Top = 43
          Width = 100
          Height = 17
          AutoSize = False
          Caption = 'Tanggal Gabung'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 10
          Top = 88
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Jabatan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText4: TDBText
          Left = 228
          Top = 50
          Width = 103
          Height = 17
          DataField = 'LamaKerja'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 10
          Top = 66
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Department'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText5: TDBText
          Left = 196
          Top = 64
          Width = 48
          Height = 15
          AutoSize = True
          DataField = 'LuDepa'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 10
          Top = 21
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Point of Hire'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label56: TLabel
          Left = 114
          Top = 43
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label57: TLabel
          Left = 114
          Top = 88
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 114
          Top = 66
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label60: TLabel
          Left = 114
          Top = 21
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label76: TLabel
          Left = 10
          Top = 131
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Status'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label77: TLabel
          Left = 114
          Top = 131
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label78: TLabel
          Left = 10
          Top = 152
          Width = 100
          Height = 17
          AutoSize = False
          Caption = 'Permanent'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label79: TLabel
          Left = 114
          Top = 152
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label80: TLabel
          Left = 10
          Top = 174
          Width = 100
          Height = 17
          AutoSize = False
          Caption = 'Berhenti'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label81: TLabel
          Left = 114
          Top = 174
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label82: TLabel
          Left = 10
          Top = 196
          Width = 100
          Height = 17
          AutoSize = False
          Caption = 'Alasan Berhenti'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label83: TLabel
          Left = 114
          Top = 196
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText7: TDBText
          Left = 125
          Top = 128
          Width = 205
          Height = 17
          DataField = 'LEndDate'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clLime
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label84: TLabel
          Left = 10
          Top = 110
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Lokasi'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText10: TDBText
          Left = 196
          Top = 108
          Width = 55
          Height = 15
          AutoSize = True
          DataField = 'LLocation'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label85: TLabel
          Left = 114
          Top = 110
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 123
          Top = 38
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'TglGabung'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 123
          Top = 82
          Width = 160
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'Jabatan'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit2: TdxDBButtonEdit
          Left = 123
          Top = 60
          Width = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'department'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit2ButtonClick
          ExistButtons = True
        end
        object Button1: TButton
          Left = 125
          Top = 220
          Width = 84
          Height = 25
          Caption = 'PKWT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button1Click
        end
        object dxDBDateEdit5: TdxDBDateEdit
          Left = 123
          Top = 147
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'tglpermanent'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit6: TdxDBDateEdit
          Left = 123
          Top = 169
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'tglberhenti'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit13: TdxDBEdit
          Left = 123
          Top = 191
          Width = 200
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'KTP'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBButtonEdit3: TdxDBButtonEdit
          Left = 123
          Top = 16
          Width = 158
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'pointhire'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit3ButtonClick
          ExistButtons = True
        end
        object dxDBButtonEdit5: TdxDBButtonEdit
          Left = 123
          Top = 104
          Width = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          DataField = 'Location'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit5ButtonClick
          ExistButtons = True
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 461
        Width = 257
        Height = 100
        Caption = '[ BPJS Kesehatan ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label19: TLabel
          Left = 10
          Top = 26
          Width = 69
          Height = 15
          Caption = 'Nomor Kartu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 10
          Top = 70
          Width = 81
          Height = 15
          Caption = 'Kantor Cabang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 10
          Top = 48
          Width = 43
          Height = 15
          Caption = 'Tanggal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 99
          Top = 26
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 99
          Top = 70
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 99
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit9: TdxDBEdit
          Left = 108
          Top = 22
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'BPJSKes'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit8: TdxDBEdit
          Left = 108
          Top = 66
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'bpjskescab'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit3: TdxDBDateEdit
          Left = 108
          Top = 44
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'tglbpjskes'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object GroupBox5: TGroupBox
        Left = 528
        Top = 441
        Width = 345
        Height = 120
        Caption = '[ REKENING ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label14: TLabel
          Left = 10
          Top = 28
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Bank'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 10
          Top = 49
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Rekening '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 10
          Top = 71
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Bank'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 10
          Top = 93
          Width = 125
          Height = 15
          AutoSize = False
          Caption = 'Rekening '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 114
          Top = 28
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 114
          Top = 49
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 114
          Top = 71
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 114
          Top = 93
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit15: TdxDBEdit
          Left = 123
          Top = 22
          Width = 198
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'Bank'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit10: TdxDBEdit
          Left = 123
          Top = 44
          Width = 198
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'Rekening'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit6: TdxDBEdit
          Left = 123
          Top = 66
          Width = 198
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'bank1'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit11: TdxDBEdit
          Left = 123
          Top = 88
          Width = 198
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DataField = 'rekening1'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object GroupBox6: TGroupBox
        Left = 266
        Top = 461
        Width = 257
        Height = 100
        Caption = '[ BPJS Ketenagakerjaan ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label41: TLabel
          Left = 10
          Top = 26
          Width = 69
          Height = 15
          Caption = 'Nomor Kartu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 10
          Top = 70
          Width = 81
          Height = 15
          Caption = 'Kantor Cabang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 10
          Top = 48
          Width = 43
          Height = 15
          Caption = 'Tanggal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 99
          Top = 26
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 99
          Top = 70
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 99
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit18: TdxDBEdit
          Left = 108
          Top = 22
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'BPJSKet'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit19: TdxDBEdit
          Left = 108
          Top = 66
          Width = 140
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'bpjsketcab'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBDateEdit4: TdxDBDateEdit
          Left = 108
          Top = 44
          Width = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'tglbpjsket'
          DataSource = dsMain
          StyleController = SCEdit
        end
      end
      object GroupBox7: TGroupBox
        Left = 528
        Top = 259
        Width = 345
        Height = 180
        Caption = '[ FASILITAS ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label67: TLabel
          Left = 10
          Top = 26
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Payroll'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label68: TLabel
          Left = 10
          Top = 48
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Roster Cuti'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label70: TLabel
          Left = 10
          Top = 70
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Travel Expenses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label71: TLabel
          Left = 10
          Top = 92
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Mess Expenses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label72: TLabel
          Left = 10
          Top = 114
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Breakfast'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label73: TLabel
          Left = 10
          Top = 158
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Dinner'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label74: TLabel
          Left = 10
          Top = 136
          Width = 100
          Height = 15
          AutoSize = False
          Caption = 'Lunch'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 114
          Top = 26
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label62: TLabel
          Left = 114
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label63: TLabel
          Left = 114
          Top = 70
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label64: TLabel
          Left = 114
          Top = 92
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label65: TLabel
          Left = 114
          Top = 114
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label66: TLabel
          Left = 114
          Top = 158
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label69: TLabel
          Left = 114
          Top = 136
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label75: TLabel
          Left = 155
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText11: TDBText
          Left = 183
          Top = 24
          Width = 54
          Height = 15
          AutoSize = True
          DataField = 'LuPayroll'
          DataSource = dsMain
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dxDBEdit20: TdxDBEdit
          Left = 123
          Top = 42
          Width = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'roster1'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBEdit21: TdxDBEdit
          Left = 160
          Top = 42
          Width = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'roster2'
          DataSource = dsMain
          StyleController = SCEdit
        end
        object dxDBImageEdit8: TdxDBImageEdit
          Left = 123
          Top = 64
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DataField = 'fgtravel'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBImageEdit9: TdxDBImageEdit
          Left = 123
          Top = 86
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          DataField = 'fgmess'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBImageEdit10: TdxDBImageEdit
          Left = 123
          Top = 108
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          DataField = 'breakfast'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBImageEdit11: TdxDBImageEdit
          Left = 123
          Top = 130
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          DataField = 'lunch'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBImageEdit12: TdxDBImageEdit
          Left = 123
          Top = 152
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          DataField = 'dinner'
          DataSource = dsMain
          StyleController = SCEdit
          Descriptions.Strings = (
            'Ya'
            'Tidak')
          ImageIndexes.Strings = (
            '0'
            '1')
          Values.Strings = (
            'Y'
            'T')
        end
        object dxDBButtonEdit7: TdxDBButtonEdit
          Left = 123
          Top = 20
          Width = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = dxDBEdit1KeyPress
          DataField = 'fgpayroll'
          DataSource = dsMain
          StyleController = SCEdit
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit7ButtonClick
          ExistButtons = True
        end
      end
      object Button2: TButton
        Left = 9
        Top = 564
        Width = 138
        Height = 25
        Caption = 'Edit Medical History'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 529
        Top = 564
        Width = 138
        Height = 25
        Caption = 'Data Tanggungan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = Button3Click
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 879
        Top = 448
        Width = 122
        Height = 65
        Caption = '[ Tampil Kontak ]'
        Ctl3D = False
        DataField = 'FgShow'
        DataSource = dsMain
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Items.Strings = (
          'Ya'
          'Tidak')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        Values.Strings = (
          'Y'
          'T')
        Visible = False
      end
    end
  end
  inherited paToolBar: TdxContainer
    Width = 1224
    inherited sbLast: TSpeedButton
      Left = 1187
    end
    inherited sbNext: TSpeedButton
      Left = 1160
    end
    inherited sbPrev: TSpeedButton
      Left = 1133
    end
    inherited sbFirst: TSpeedButton
      Left = 1106
    end
    inherited sbPeriod: TSpeedButton
      Left = 1080
    end
    inherited BvlPeriod: TBevel
      Left = 834
    end
    inherited laPeriod: TLabel
      Left = 838
    end
  end
  inherited quAct: TADOQuery
    Left = 288
  end
  inherited quMain: TADOQuery
    OnCalcFields = quMainCalcFields
    OnNewRecord = quMainNewRecord
    SQL.Strings = (
      'SELECT * FROM ARMsSales')
    Left = 228
    object quMainSalesID: TStringField
      FieldName = 'SalesID'
    end
    object quMainSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object quMainAddress: TStringField
      FieldName = 'Address'
      Size = 200
    end
    object quMainPhone: TStringField
      FieldName = 'Phone'
    end
    object quMainHP: TStringField
      FieldName = 'HP'
    end
    object quMainUpdDate: TDateTimeField
      FieldName = 'UpdDate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = 'DD MMMM YYYY'
    end
    object quMainUpdUser: TStringField
      FieldName = 'UpdUser'
    end
    object quMainEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object quMainNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
    object quMainJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 30
    end
    object quMainluJabatan: TStringField
      FieldKind = fkLookup
      FieldName = 'luJabatan'
      LookupDataSet = quJabatan
      LookupKeyFields = 'Jabatan'
      LookupResultField = 'Jabatan'
      KeyFields = 'Jabatan'
      LookupCache = True
      Size = 80
      Lookup = True
    end
    object quMainUangMakan: TBCDField
      FieldName = 'UangMakan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainUangBulanan: TBCDField
      FieldName = 'UangBulanan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainFgActive: TStringField
      FieldName = 'FgActive'
      Size = 1
    end
    object quMainTglGabung: TDateTimeField
      FieldName = 'TglGabung'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainLimitKasbon: TBCDField
      FieldName = 'LimitKasbon'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainKerajinan: TBCDField
      FieldName = 'Kerajinan'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Precision = 18
    end
    object quMainttd: TBlobField
      FieldName = 'ttd'
    end
    object quMainfoto: TBlobField
      FieldName = 'foto'
    end
    object quMaintglLahir: TDateTimeField
      FieldName = 'tglLahir'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainRekeningID: TStringField
      FieldName = 'RekeningID'
      Size = 50
    end
    object quMainagama: TStringField
      FieldName = 'agama'
      Size = 50
    end
    object quMainFgStatus: TStringField
      FieldName = 'FgStatus'
      Size = 50
    end
    object quMainTLahir: TStringField
      FieldName = 'TLahir'
      Size = 50
    end
    object quMainUmur: TStringField
      FieldKind = fkCalculated
      FieldName = 'Umur'
      Size = 100
      Calculated = True
    end
    object quMainLuAgama: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuAgama'
      Size = 100
      Calculated = True
    end
    object quMainLuStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuStatus'
      Size = 100
      Calculated = True
    end
    object quMainLamaKerja: TStringField
      FieldKind = fkCalculated
      FieldName = 'LamaKerja'
      Size = 100
      Calculated = True
    end
    object quMainBPJSKes: TStringField
      FieldName = 'BPJSKes'
      Size = 100
    end
    object quMainBPJSKet: TStringField
      FieldName = 'BPJSKet'
      Size = 100
    end
    object quMainrekening: TStringField
      FieldName = 'rekening'
      Size = 100
    end
    object quMainbank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object quMainrekening1: TStringField
      FieldName = 'rekening1'
      Size = 100
    end
    object quMainbank1: TStringField
      FieldName = 'bank1'
      Size = 100
    end
    object quMainNIK: TStringField
      FieldName = 'NIK'
      Size = 100
    end
    object quMainfgpayroll: TStringField
      FieldName = 'fgpayroll'
      Size = 10
    end
    object quMaindepartment: TStringField
      FieldName = 'department'
      Size = 10
    end
    object quMainjeniskel: TStringField
      FieldName = 'jeniskel'
      Size = 10
    end
    object quMainroster1: TIntegerField
      FieldName = 'roster1'
    end
    object quMainroster2: TIntegerField
      FieldName = 'roster2'
    end
    object quMainpointhire: TStringField
      FieldName = 'pointhire'
      Size = 50
    end
    object quMainfgtravel: TStringField
      FieldName = 'fgtravel'
      Size = 10
    end
    object quMainfgmess: TStringField
      FieldName = 'fgmess'
      Size = 10
    end
    object quMainbreakfast: TStringField
      FieldName = 'breakfast'
      Size = 10
    end
    object quMainlunch: TStringField
      FieldName = 'lunch'
      Size = 10
    end
    object quMaindinner: TStringField
      FieldName = 'dinner'
      Size = 10
    end
    object quMainPOP: TStringField
      FieldName = 'POP'
      Size = 10
    end
    object quMainPOM: TStringField
      FieldName = 'POM'
      Size = 10
    end
    object quMainPOU: TStringField
      FieldName = 'POU'
      Size = 10
    end
    object quMaindomisili: TStringField
      FieldName = 'domisili'
      Size = 500
    end
    object quMainTaxStats: TStringField
      FieldName = 'TaxStats'
      Size = 10
    end
    object quMainNPWP: TStringField
      FieldName = 'NPWP'
      Size = 50
    end
    object quMaintglbpjsket: TDateTimeField
      FieldName = 'tglbpjsket'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMaintglbpjskes: TDateTimeField
      FieldName = 'tglbpjskes'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object quMainbpjskescab: TStringField
      FieldName = 'bpjskescab'
      Size = 50
    end
    object quMainbpjsketcab: TStringField
      FieldName = 'bpjsketcab'
      Size = 50
    end
    object quMainKTP: TStringField
      FieldName = 'KTP'
      Size = 50
    end
    object quMainLuDepa: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuDepa'
      Size = 100
      Calculated = True
    end
    object quMainfgkerja: TStringField
      FieldName = 'fgkerja'
      Size = 10
    end
    object quMaintglpermanent: TDateTimeField
      FieldName = 'tglpermanent'
    end
    object quMaintglberhenti: TDateTimeField
      FieldName = 'tglberhenti'
    end
    object quMainalasan: TStringField
      FieldName = 'alasan'
      Size = 100
    end
    object quMainLEndDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'LEndDate'
      Size = 100
      Calculated = True
    end
    object quMainFgShow: TStringField
      FieldName = 'FgShow'
      Size = 10
    end
    object quMainLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
    object quMainLLocation: TStringField
      FieldKind = fkCalculated
      FieldName = 'LLocation'
      Size = 100
      Calculated = True
    end
    object quMainLuPayroll: TStringField
      FieldKind = fkCalculated
      FieldName = 'LuPayroll'
      Size = 100
      Calculated = True
    end
  end
  inherited dsMain: TDataSource
    Left = 252
  end
  inherited ActionList: TActionList
    Left = 588
    inherited ActCari: TAction
      OnExecute = bbFindClick
    end
  end
  object quJabatan: TADOQuery
    Connection = dmMain.dbConn
    Parameters = <>
    SQL.Strings = (
      'Select * from ArMsJabatan')
    Left = 552
    Top = 8
  end
  object odLogo: TOpenPictureDialog
    Left = 388
    Top = 4
  end
  object saveDlg: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Microsoft Excel File|*.xls'
    Left = 744
    Top = 64
  end
  object dxReport: TdxComponentPrinter
    Version = 0
    Left = 780
    Top = 64
  end
end
