program nala;
uses crt;
var
    n,i,harga:longint;
begin
    clrscr;
    write('Banyak Minuman (n): '); readln(n);
    for i :=1 to n do
        begin
            write('Minuman ke-',i,': '); readln(harga);       
            if (harga<=10000) then
                begin
                    writeln('Minuman yang bisa dibeli Nala:');
                    writeln('Minuman ke-',i,': ',harga);
                end
        end;
end.