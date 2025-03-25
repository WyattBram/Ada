package Employee_Pak.Hourly is

  type Hourly_Employee is new Employee with private;
  type Hourly_Employee_Access is access Hourly_Employee;
  
  subtype Hour_Range is Natural range 0 .. 80;
  
  subtype Rate_Range is float range 0.0 .. 10000.0;
  
  function Weekly_Pay (E: in Hourly_Employee) return Weekly_Pay_Range;
  -- pre: none
  -- post: weekly pay is returned
  
  function Create_Hourly_Employee (Name: in String; SSN: in String;
    BirthDay: in Date; Hours: in Hour_Range; Rate: in Rate_Range) return
    Hourly_Employee;
  -- pre: none
  -- post: Hourly_Employee object has been created
    
  pragma Inline (Weekly_Pay);
  
  private
    type Hourly_Employee is new Employee with
      record
        Num_Hours: Hour_Range;
        Wage: Rate_Range;
      end record;
end Employee_Pak.Hourly;
