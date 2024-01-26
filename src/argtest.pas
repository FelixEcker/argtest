{$mode fpc}
program argtest;

uses Types;

var
  ix: Integer;
  search_arg, curr_arg: String;
  args: TStringDynArray;
begin
  if ParamCount < 2 then
    halt(1);

  search_arg := ParamStr(1);

  SetLength(args, ParamCount - 1);
  for ix := 2 to ParamCount do
    args[ix - 2] := ParamStr(ix);

  for curr_arg in args do
    if curr_arg = search_arg then
      halt(0);

  halt(1);
end.

