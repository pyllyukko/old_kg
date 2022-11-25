Program Gnr;
Uses CRT;

{$I G.pas}

type ScreenType = array [0..3680] of Byte;

Var
Screen : ScreenType absolute $B800:0000;
Nimi : String;
X,A,B : LongInt;
Sum : LongInt;

Begin
ClrScr;
Move (Image,Screen,3680);
Sum := 0;
Nimi := '';
A := 0;
B := 0;
X := 0;
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


