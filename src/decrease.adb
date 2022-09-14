pragma SPARK_Mode (On);
with Ada.Text_Io, Ada.Integer_Text_IO;
use Ada.Text_Io, Ada.Integer_Text_Io;

package body Decrease is
   
  
     
   
   
   procedure process (B: in three_digits; A : out three_digits) is
   begin
      if B.third > 0 then
         A := three_digits'(first => B.first, second => B.second, third => B.third - 1);
      else
         if B.second > 0 then
           A := three_digits'(first => B.first, second => B.second - 1, third => 9);
         elsif B.second = 0 then
            if B.first > 0 then
               A := three_digits'(first => B.first - 1, second => 9, third => 9);
            elsif B.first = 0 then
               A := three_digits'(first => 9, second => 9, third => 9);
            end if;
         end if;
      end if;
   end process;
   
   
   function process_f (B : three_digits) return three_digits is
   begin
      if B.third > 0 then
         return three_digits'(first => B.first, second => B.second, third => B.third - 1);
      elsif B.second > 0 then
           return three_digits'(first => B.first, second => B.second - 1, third => 9);
      elsif B.first > 0 then
           return three_digits'(first => B.first - 1, second => 9, third => 9);
      else
           return three_digits'(first => 9, second => 9, third => 9);
      end if;
      
   end process_f;
   
     
end Decrease;


