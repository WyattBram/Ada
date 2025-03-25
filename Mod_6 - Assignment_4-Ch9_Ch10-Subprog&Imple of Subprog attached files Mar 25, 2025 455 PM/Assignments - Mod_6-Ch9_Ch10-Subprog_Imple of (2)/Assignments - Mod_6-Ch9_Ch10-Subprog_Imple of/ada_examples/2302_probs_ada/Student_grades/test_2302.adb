with StudentOps, Ada.Text_IO;
use StudentOps, Ada.Text_IO;

procedure Test_2302 is

   Package Grade_IO is new Enumeration_IO (Grade);

   Package Boolean_IO is new Enumeration_IO (Boolean);

begin
   Grade_IO.Put (NumericalGrade (82.1));
   New_Line;
   Boolean_IO.Put(SatisfiesMajorRequirement (D));
   New_Line;
end Test_2302;
