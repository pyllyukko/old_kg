Program Gnr;
Uses CRT;

{$I G.pas}

type ScreenType = array [0..3680] of Byte;

Var
Nimi : String;
X,A,B : LongInt;
Sum : LongInt;

Begin
ClrScr;
Sum := 0;
Nimi := '';
A := 0;
B := 0;
X := 0;
for A := 1 To 1840 Do Begin
  TextBackground(Byte(Image[(A*2)]) shr 8);
  TextColor(Byte(Image[(A*2)]) mod 16);
  Write(Image[A*2-1]);
  If A mod 80 = 0 then
    WriteLn();
End;
TextColor(YELLOW);
GotoXY(18, 19);
Read(Nimi);
           For X := 1 To Length(Nimi) Do Begin
               A := 1;

               For B := 1 To X Do Begin
                   A := A * 2;
               End;
               Sum := Sum + (Ord(Nimi[X]) * A);
           End;

           GotoXY(18,20);
           Write (Sum - 1);
           GotoXY(1,24);
End.


