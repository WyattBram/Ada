package body Array_Ops is

   ---------------
   -- Are_Equal --
   ---------------

   function Are_Equal (a1, a2 : in Data_Type) return Boolean is
      result : Boolean;
      index  : Integer;
   begin
      if a1'First /= a2'First then
         result := False;
      elsif a1'Last /= a2'Last then
         result := False;
      else
         index := a1'First;
         while index <= a1'Last and a1 (index) = a2 (index) loop
            index := index + 1;
         end loop;
         result := index > a1'Last;
      end if;

      return result;

   end Are_Equal;

end Array_Ops;
