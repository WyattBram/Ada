package body Linear_Equations is

   -----------------------------------
   -- Create_Linear_Equation_System --
   -----------------------------------

   function Create_Linear_Equation_System (a, b, c, d, e, f: in Float)
                                           return Linear_Equation_System is
      eq: Linear_Equation_System;
   begin
      eq.a := a;
      eq.b := b;
      eq.c := c;
      eq.d := d;
      eq.e := e;
      eq.f := f;
      return eq;
   end Create_Linear_Equation_System;

   -----------
   -- get_a --
   -----------

   function get_a (eq: in Linear_Equation_System) return Float is
   begin
      return eq.a;
   end get_a;

   -----------
   -- get_b --
   -----------

   function get_b (eq: in Linear_Equation_System) return Float is
   begin
      return eq.b;
   end get_b;

   -----------
   -- get_c --
   -----------

   function get_c (eq: in Linear_Equation_System) return Float is
   begin
      return eq.c;
   end get_c;

   -----------
   -- get_d --
   -----------

   function get_d (eq: in Linear_Equation_System) return Float is
   begin
      return eq.d;
   end get_d;

   -----------
   -- get_e --
   -----------

   function get_e (eq: in Linear_Equation_System) return Float is
   begin
      return eq.e;
   end get_e;

   -----------
   -- get_f --
   -----------

   function get_f (eq: in Linear_Equation_System) return Float is
   begin
      return eq.f;
   end get_f;

   -----------------
   -- is_solvable --
   -----------------

   function is_solvable (eq: in Linear_Equation_System) return Boolean is
   begin
      return eq.a * eq.d /= eq.b * eq.c;
   end is_solvable;

   -------
   -- X --
   -------

   function X (eq: in Linear_Equation_System) return Float is
   begin
      return (eq.e * eq.d - eq.b * eq.f) / (eq.a * eq.d - eq.b * eq.c);
   end X;

   -------
   -- Y --
   -------

   function Y (eq: in Linear_Equation_System) return Float is
   begin
      return (eq.a * eq.f - eq.e * eq.c) / (eq.a * eq.d - eq.b * eq.c);
   end Y;

end Linear_Equations;
