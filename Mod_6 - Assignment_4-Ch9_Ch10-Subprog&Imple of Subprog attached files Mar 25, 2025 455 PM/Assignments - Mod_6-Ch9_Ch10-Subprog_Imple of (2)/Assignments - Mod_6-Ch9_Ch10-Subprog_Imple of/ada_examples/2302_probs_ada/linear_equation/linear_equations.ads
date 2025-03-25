package Linear_Equations is

   type Linear_Equation_System is private;

   function Create_Linear_Equation_System (a, b, c, d, e, f: in Float) return Linear_Equation_System;

   function get_a (eq: in Linear_Equation_System) return Float;

   function get_b (eq: in Linear_Equation_System) return Float;

   function get_c (eq: in Linear_Equation_System) return Float;

   function get_d (eq: in Linear_Equation_System) return Float;

   function get_e (eq: in Linear_Equation_System) return Float;

   function get_f (eq: in Linear_Equation_System) return Float;

   function is_solvable (eq: in Linear_Equation_System) return Boolean;

   function X (eq: in Linear_Equation_System) return Float;

   pragma Precondition (is_solvable(eq));

   function Y (eq: in Linear_Equation_System) return Float;
   pragma Precondition (is_solvable(eq));


private
   type Linear_Equation_System is
      record
         a, b, c, d, e, f: Float;
      end record;

end Linear_Equations;
