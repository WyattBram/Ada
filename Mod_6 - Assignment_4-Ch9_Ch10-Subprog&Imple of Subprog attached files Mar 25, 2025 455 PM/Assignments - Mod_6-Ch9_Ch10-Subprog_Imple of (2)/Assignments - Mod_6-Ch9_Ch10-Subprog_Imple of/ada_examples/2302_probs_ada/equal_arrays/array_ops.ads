package Array_Ops is

   type Data_Type is array (Positive range <>) of Integer;

   function Are_Equal (a1, a2: in Data_Type) return Boolean;

end Array_Ops;
