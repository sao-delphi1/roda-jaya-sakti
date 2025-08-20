unit INQRKartuStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, INQRRptHistoryStok, ADODB, DB, QuickRpt, QRCtrls, StdCtrls,
  ExtCtrls;

type
  TfmINQRKartuStok = class(TfmINQRRptHistoryStok)
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tgldari : TDateTime;
    tglsmp  : TDateTime;
    saldo   : Currency;
  end;

var
  fmINQRKartuStok: TfmINQRKartuStok;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRKartuStok.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
saldo := strtocurr(qrlSisa.Caption);
       with qu003,sql do
        begin
          Close;Clear;
          add(' Select Convert(varchar(10),A.TransDate,103)as Tanggal,A.TransDate, '
             +' case when FgTrans < 50 Then ''1'' else ''2'' end as Kode,'
             +'                 case Fgtrans when 0  then  ''Tr Stok Awal Positif & VoucherNo ''+ A.VoucherNo '
             +'                              when 2  then  ''Tr Transfer Barang (+) Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 3  then  ''Tr Stok Opname Bertambah Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 4  then  ''Tr Pembelian Invoice ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 5  then  ''Tr Penerimaan Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 6  then  ''Tr Pengganti Retur Pembelian Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 7  then  ''Tr Konsinyasi Terima Barang Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 8 then   ''Tr Retur Penjualan Invoice ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 9 then   ''Tr Retur Konsinyasi Transfer Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 10 then  ''Tr Terima Service Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 11 then  ''Tr Produksi Nota ''+ A.VoucherNo '
             +'                              when 52 then  ''Tr Transfer Barang (-) Nota ''+ A.VoucherNo  +'' ''+A.TempField2 '
             +'                              when 53 then  ''Tr Stok Opname Berkurang Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 55 then  ''Tr Penjualan Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 56 then  ''Tr Retur Pembelian Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 57 then  ''Tr Retur Konsinyasi Masuk ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 58 then  ''Tr Pengganti Retur Penjualan Nota ''+ A.VoucherNo +'' ''+A.TempField2'
             +'                              when 59 then  ''Tr Produksi Kusen Pintu Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 61 then  ''Tr Penggunaan SparePart Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 60 then  ''Tr Ambil Service Nota ''+ A.VoucherNo +'' ''+A.TempField2  '
             +'                              when 62 then  ''Tr Terima Barang Pengeringan Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
             +'                              when 71 then  ''Tr Pemakaian Produksi Nota ''+ A.VoucherNo +'' Untuk Bahan Jadi ''+A.TempField2 '
             +'                              when 81 then  ''Tr Penggunaan Bahan Nota ''+ A.VoucherNo end as Flag'
             +' ,A.QTy,A.FgTrans from Allitem A '
             +' where A.ItemId='''+qu002.fieldbyname('ItemId').AsString+''''
             +' AND A.WareHouseId='''+qu001.fieldbyname('WareHouseId').AsString+''''
             +' AND CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',tgldari)+''' AND '''+FormatDateTime('yyyyMMdd',tglsmp)+''''
             +' ORDER by Convert(varchar(10),A.TransDate,112),kode,NumAll');
         Open;
        End;
end;

end.
