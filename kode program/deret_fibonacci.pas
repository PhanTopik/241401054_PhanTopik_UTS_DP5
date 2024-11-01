program deret_fibonacci;
uses crt;
var
    deret,n,total,i,a,b:integer;
begin
    clrscr;
    b:=1;
    write('N= '); readln(n);
    write('sequence= ');
    for i:=1 to n do
    begin
        if (i=1) then
            begin

                write(a,',');
            end
        else if (i=2) then
            begin
                write(b,',');
                Total:=a+b;
            end
        else
            begin
                deret:=a+b;
                Total:=Total+deret;
                write(deret,',');
                a:=b;
                b:=deret;
            end
    end;
    writeln;
    writeln('Total= ',total);
end.