package StudentOps is

   subtype GradeAverage is Float range 0.0 .. 100.0;

   type Grade is (A, B, C, D, F);

   function NumericalGrade (ave: in GradeAverage) return Grade;

   function SatisfiesMajorRequirement (g: in Grade) return Boolean;

end StudentOps;
