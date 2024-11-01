program tokoIKLC;
uses crt;
var
    i,totallem:longint;
    lem:array[1..11] of longint;
    kembalian:array[1..11] of longint;
    pecahan:array[1..11] of longint;
begin
    clrscr;
    pecahan[1]:=100000; pecahan[2]:=75000; pecahan[3]:=50000;
    pecahan[4]:=20000; pecahan[5]:=10000; pecahan[6]:=5000;
    pecahan[7]:=2000; pecahan[8]:=1000; pecahan[9]:=500;
    pecahan[10]:=200; pecahan[11]:=100;
    write('masukan jumlah kembalian: '); readln(kembalian[1]);
    for i:=1 to 11 do
        begin
            lem[i]:=kembalian[i] div pecahan[i];
            kembalian[i+1]:=kembalian[i] mod pecahan[i];
            totallem:=totallem+lem[i];
        end;
    write('Jumlah lembar: ',totallem);
end.