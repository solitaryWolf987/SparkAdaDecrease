

pragma SPARK_Mode (On);

with AS_IO_Wrapper;  use AS_IO_Wrapper;
with Decrease; use Decrease;

procedure main is
   X, Y, Z : Integer;
   A, C : three_digits;
   B : Integer;
   

   
   
   
begin
   loop
      AS_Put("Enter a number between 0...999 "); 
      AS_Get(B);
      
      exit when B in 0 .. 999;
      AS_Put("Enter a number between 0...999 "); 
      end loop;
   
   
   X := B / 100;
   Y := ((B - (X * 100)) / 10);
   Z := (((B - (X * 100)) - (Y * 10)));
   
   C := three_digits'(first => digit(X), second => digit(Y), third => digit(Z));

   process(C, A);
   AS_Put_Line("Procedure:");
   AS_Put((Integer(A.first)*100) + (Integer(A.second)*10) + Integer(A.third));
   AS_Put_Line;
   A := process_f(C);
   AS_Put_Line("Function:");
   AS_Put((Integer(A.first)*100) + (Integer(A.second)*10) + Integer(A.third));
   
   
   
end main;



