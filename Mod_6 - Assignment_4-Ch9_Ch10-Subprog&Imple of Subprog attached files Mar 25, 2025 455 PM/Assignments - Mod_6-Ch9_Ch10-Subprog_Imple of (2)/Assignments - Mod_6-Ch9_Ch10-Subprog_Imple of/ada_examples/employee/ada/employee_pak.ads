with Date_Pak; use Date_Pak;

package Employee_Pak is

  type Employee is abstract tagged private;
  type Employee_Access is access all Employee'Class;
  
  subtype Weekly_Pay_Range is float range 0.0 .. 1000000.0;
  
  function Name (E: in Employee) return String;
  -- pre: none
  -- post: name of employee is returned
  
  function SSN (E: in Employee) return String;
  -- pre: none
  -- post: social security number of employee is returned
  
  function BirthDay (E: in Employee) return Date;
  -- pre: none
  -- post: birthday of employee is returned
  
  function Weekly_Pay (E: in Employee) return Weekly_Pay_Range is abstract;
  -- pre: none
  -- post: weekly pay is returned
  
  pragma Inline (Name, SSN, BirthDay);
  
  private
    type Employee is abstract tagged
      record
        Name: String (1 .. 40) := (1 .. 40 => ' ');
        SSN: String (1 .. 9);
        BirthDay: Date;
      end record;
      
end Employee_Pak;