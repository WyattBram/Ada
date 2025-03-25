package body String_Ops is


   procedure swap (c1, c2: in out Character) is

      temp: Character := c1;

   begin
      c1 := c2;
      c2 := temp;
   end swap;

   procedure sort_string (s: in out String) is
      location: Integer;

   begin
      for i in s'First .. s'Last - 1 loop
         location := i;
         for j in location + 1 .. s'Last loop
            if s(j) < s(location) then
               location := j;
            end if;
            swap (s(i), s(location));
         end loop;
      end loop;
   end sort_string;

   ------------------
   -- are_anagrams --
   ------------------

   function are_anagrams (s1, s2: in String) return Boolean is
      result: boolean;
      s1_copy: String := s1;
      s2_copy: String := s2;
   begin
      if s1'Length /= s2'Length then
         result := false;
      else
         sort_string (s1_copy);
         sort_string (s2_copy);
         result := s1_copy = s2_copy;
      end if;
      return result;
   end are_anagrams;

end String_Ops;
