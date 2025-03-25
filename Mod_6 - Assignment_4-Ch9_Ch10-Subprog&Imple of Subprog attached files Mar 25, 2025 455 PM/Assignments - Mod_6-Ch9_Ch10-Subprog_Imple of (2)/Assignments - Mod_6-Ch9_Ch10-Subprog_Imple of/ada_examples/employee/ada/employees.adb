with Ada.Characters.Handling;
use Ada.Characters.Handling;

package body Employees is

   ------------------------------
   -- Create_Salaried_Employee --
   ------------------------------

    function Create_Salaried_Employee  (Name: in String;  SSN: in String;  BirthDay: in Time;
                                        Salary: in Salary_Range) return Employee_Access is

        e: Employee_Access;
    begin
        e := new Employee (SALARIED);
        if name'Length <= NAME_SIZE then
            e.Name (1 .. name'Length) := name;
        else
            e.name := name (1 .. Name'First - 1 + NAME_SIZE);
        end if;
        e.SSN := ssn;
        e.BirthDay := BirthDay;
        e.yearly_salary := salary;
        return e;
      end Create_Salaried_Employee;

   ----------------------------
   -- Create_Hourly_Employee --
   ----------------------------

    function Create_Hourly_Employee  (Name: in String;  SSN: in String;  BirthDay: in Time;
                                      Hours: in Hour_Range;  Rate: in Rate_Range) return Employee_Access  is

        e: Employee_Access;
    begin
        e := new Employee (HOURLY);
        if name'Length <= NAME_SIZE then
            e.Name (1 .. name'Length) := name;
        else
            e.name := name (1 .. Name'First - 1 + NAME_SIZE);
        end if;
        e.SSN := ssn;
        e.BirthDay := BirthDay;
        e.num_hours := hours;
        e.wage := rate;
        return e;
   end Create_Hourly_Employee;

   ----------
   -- Name --
   ----------

   function Name (E: in Employee) return String is
    begin
        return e.Name;
   end Name;

   ---------
   -- SSN --
   ---------

   function SSN (E: in Employee) return String is
    begin
        return e.SSN;
   end SSN;

   --------------
   -- BirthDay --
   --------------

   function BirthDay (E: in Employee) return Time is
   begin
        return e.BirthDay;
   end BirthDay;

    ------------------------------------------------------------------------------------------------------------------------------

    function Weekly_Pay (E: in Employee) return Weekly_Pay_Range  is

        result: float;
    begin
        if e.emp_type = HOURLY then
            result := e.num_hours * e.wage;
        else
            result := e.yearly_salary / 52.0;
        end if;
        return result;
    end Weekly_Pay;

    ----------------------------------------------------------------------------------------------------------------------------

    function is_valid_SSN (s: in String) return Boolean is

        result: Boolean := false;
        i: Positive;
    begin
        if s'Length = SSN_SIZE then
            i := 1;
            while i <= SSN_SIZE and then is_digit(s(i)) loop
                i := i + 1;
            end loop;
            result := i > SSN_SIZE;
        end if;
        return result;
    end is_valid_SSN;


end Employees;
