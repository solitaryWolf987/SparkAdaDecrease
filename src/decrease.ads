pragma SPARK_Mode (On);
package Decrease is
   
   type digit is new Integer range 0 .. 11;
   type three_digits is 
      record
         first : digit;
         second : digit;
         third : digit;
      end record;
   

   procedure process(B : in three_digits; A: out three_digits) with
     Depends => (A => (B)),
     Pre => (wholeInteger(B.first,B.second,B.third) in 0 .. 999),
     Post => ((wholeInteger(B.first,B.second,B.third) = wholeInteger(A.first,A.second,A.third)-1)
              or (wholeInteger(B.first,B.second,B.third) = 0 and wholeInteger(A.first,A.second,A.third) = 999));
   
     
 
   function wholeInteger (A, B, C : digit) return Integer is (Integer(A)*100 + Integer(B)*10 + Integer(C));
                
   
                
   function process_f(B : three_digits) return three_digits with
     Pre => (wholeInteger(B.first,B.second,B.third) in 0 .. 999),
     Post => ((wholeInteger(B.first,B.second,B.third) = 
                  wholeInteger(process_f'Result.first,process_f'Result.second,process_f'Result.third)-1)
              or (wholeInteger(B.first,B.second,B.third) = 0 and wholeInteger(process_f'Result.first,process_f'Result.second,process_f'Result.third) = 999));

end Decrease;
