with Linear_Equations, Ada.Text_IO, Ada.Float_Text_IO;
use Linear_Equations, Ada.Text_IO, Ada.Float_Text_IO;

procedure Test_2302 is

   eq: Linear_Equation_System;

begin
   eq := create_linear_equation_system (3.0, 2.0, 2.0, -1.0, -1.0, 4.0);
   Put ("x = ");
   put (x(eq));
   new_line;
   put ("y = ");
   put (y (eq));
   new_line;
   eq := create_linear_equation_system (1.0, 1.0, 2.0, 2.0, 2.0, 4.0);
   Put ("x = ");
   put (x(eq));
   new_line;
   put ("y = ");
   put (y (eq));
   new_line;

end Test_2302;
