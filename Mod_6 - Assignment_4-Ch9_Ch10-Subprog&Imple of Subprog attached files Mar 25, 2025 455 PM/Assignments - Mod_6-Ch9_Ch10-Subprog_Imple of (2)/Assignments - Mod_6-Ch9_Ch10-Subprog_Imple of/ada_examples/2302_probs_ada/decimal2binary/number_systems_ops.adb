package body Number_Systems_Ops is


   function binary_digit (n: in natural) return Character is
      ch: character;

   begin
      if n = 0 then
         ch := '0';
      else
         ch := '1';
      end if;
      return ch;
   end binary_digit;


   -----------------------
   -- decimal_to_binary --
   -----------------------

   function decimal_to_binary (n: in positive) return String is
      s: String (1 .. 100);
      i: Positive := 100;
      num: natural := n;
      quotient: natural;
      remainder: natural;
   begin
      loop
         quotient := num / 2;
         remainder := num mod 2;
         s(i) := binary_digit (remainder);
         num := quotient;
         exit when num = 0;
         i := i - 1;
      end loop;
      return s(i .. 100);
   end decimal_to_binary;

end Number_Systems_Ops;
