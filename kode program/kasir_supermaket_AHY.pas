program kasir_supermaket_AHY;
uses crt;
var
    produk,hari,member:string;
    hyginedisc,frofooddisc,elektrodisc,laktosadisc,discmember,discjlh:real;
    jlhpasta,jlhsabun,jlhes,persenjlh,persenmember,point:integer;
    hpasta,hsabun,hes,Total,pembayaran:longint;
begin
    clrscr;
    writeln('masukan - jika bukan member');
    write('Nama Anggota: '); readln(member);
    write('Hari: '); readln(hari);
    writeln('masukan jumlah Produk:');
    write('pasta gigi Rp16.000='); readln(jlhpasta);
    write('sabun Rp7.000='); readln(jlhsabun);
    write('Es Krim Rp20.000='); readln(jlhes);
    writeln;
    case hari of
        'senin':hyginedisc:=0.1;
        'selasa':frofooddisc:=0.05;
        'rabu':elektrodisc:=0.3;
        'kamis':laktosadisc:=0.08;
    end;
    hpasta:=round(16000*jlhpasta*(1-hyginedisc));
    hsabun:=round(7000*jlhsabun*(1-hyginedisc));
    hes:=20000*jlhes;
    Total:=hpasta+hsabun+hes;
    writeln('Total: ',Total);
    write('Diskon: ');
    if (member='-') then
        begin
            discmember:=1;
            persenmember:=0;
            write('0% ');
        end
    else
        begin
            discmember:=0.1;
            persenmember:=10;
            write('10% ');           
        end;
    if (jlhpasta>=10) or(jlhsabun>=10) or (jlhes>=10) then
        begin
            discjlh:=0.05;
            write('+ 5%');
            persenjlh:=5;
        end;
    writeln(': ',persenmember+persenjlh,'%');
    pembayaran:=round(Total-(Total*(discmember+discjlh)));
    writeln('Pembayaran: ',pembayaran);
    point:=trunc(Total/50000);
    writeln('Point: ',point);
    if (point>=50) and(member<>'-') then
        begin
            write('anda mendapatkan voucher diskon 20% untuk produk apa saja');
        end;
end.