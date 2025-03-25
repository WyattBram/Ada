package body StudentOps is

   --------------------
   -- NumericalGrade --
   --------------------

   function NumericalGrade (ave: in GradeAverage) return Grade is
      result: Grade;
   begin
      if ave >= 90.0 then
         result := A;
      elsif ave >= 80.0 then
         result := B;
      elsif ave >= 70.0 then
         result := C;
      elsif ave >= 60.0 then
         result := D;
      else
         result := F;
      end if;
      return result;
   end NumericalGrade;

   -------------------------------
   -- SatisfiesMajorRequirement --
   -------------------------------

   function SatisfiesMajorRequirement (g: in Grade) return Boolean is
   begin
      return g = A or g = B or g = C;
   end SatisfiesMajorRequirement;

end StudentOps;
