{
  Author : Francois B. (Makoto)
  Licence : GPLv3
}
program matrix;

uses
  crt;
var
  i,j : integer;
  str,schema : string;

begin
  { init }
  ClrScr;
  Randomize;
  TextMode(2);
  TextColor(2);
  schema := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ&|@#§½!{}[]-()=~,;/?<>\*+0123456789%£';
  window(1,1,ScreenWidth,ScreenHeight);

  { top border }
  GotoXY(1,1);
  write('+');
  for i := 2 to ScreenWidth-1 do
    begin
      GotoXY(i,1);
      write('-');
    end;
  GotoXY(ScreenWidth,1);
  write('+');

  { bottom border }
  GotoXY(1,ScreenHeight-1);
  write('+');
  for i := 2 to ScreenWidth-1 do
    begin
      GotoXY(i,ScreenHeight-1);
      write('-');
    end;
  GotoXY(ScreenWidth,ScreenHeight-1);
  write('+');

  { bottom text}
  TextColor(10);
  GotoXY(5,ScreenHeight-1);
  write('[ Oldies just for fun ^^ - Makoto ]');

  { left border }
  for i := 2 to ScreenHeight-2 do
    begin
      GotoXY(1,i);
      write('|');
    end;

  { right border }
  for i := 2 to ScreenHeight-2 do
    begin
      GotoXY(ScreenWidth,i);
      write('|');
    end;

  { main frame }
  window(3,3,ScreenWidth-2,ScreenHeight-3);

  { main loop }
  j := 0;
  repeat
    i := random(2);
    if i = 0
      then TextColor(2)
      else TextColor(10);
    str := schema[random(length(schema))+1];
    write(str);
    j := j+1;
    if (j < ScreenWidth*ScreenHeight)
      then delay(0)
      else delay(1);
  until keypressed;

  { revert back to normal window size }
  window(1,1,ScreenWidth,ScreenHeight);
  ClrScr;
end.
