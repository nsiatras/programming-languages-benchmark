program FreePascal_Delphi_Multiplication;

Uses SysUtils,DateUtils;

const
  fCount = 1024;

var
   fArrayA: array [0..fCount, 0..fCount] of real;
   fArrayB: array [0..fCount, 0..fCount] of real;
   fArrayC: array [0..fCount, 0..fCount] of real;
   fTimeStart,fTimeEnd : TDateTime;
   fMillisecondsUntilBenchmarkFinish:real ;
   fTimes,i,j,k: integer;

begin
  Writeln ('FreePascal/Delphi Matrix Multiplication Benchmark started. Please wait...');

  fTimeStart := Now;

  for fTimes:= 0 to 5 do
      begin

      {Add random values to Arrays A and B (0 to 1)}
      for i:= 0 to fCount do
        begin
          for j:= 0 to fCount do
              begin
                fArrayA[i,j] := random(1);
                fArrayB[i,j] := random(1);
                fArrayC[i,j] := 0;
              end;
        end;

      {Multiply A to B values and add them to C}
      for i:= 0 to fCount do
          begin
          for j:= 0 to fCount do
              begin
                 for k:=0 to fCount do
                     begin
                          fArrayC[i,j] := fArrayC[i,j]+  fArrayA[i,k] * fArrayB[k,j];
                     end;
              end;
          end;
      end;

  fTimeEnd := Now;

  fMillisecondsUntilBenchmarkFinish := MilliSecondsBetween(fTimeEnd,fTimeStart) / 1000;

  Writeln('FreePascal/Delphi Matrix Multiplication Benchmark finished in: ' + FloatToStr(fMillisecondsUntilBenchmarkFinish) + ' seconds');
  Writeln('Press any key to exit');
  ReadLn;
end.

