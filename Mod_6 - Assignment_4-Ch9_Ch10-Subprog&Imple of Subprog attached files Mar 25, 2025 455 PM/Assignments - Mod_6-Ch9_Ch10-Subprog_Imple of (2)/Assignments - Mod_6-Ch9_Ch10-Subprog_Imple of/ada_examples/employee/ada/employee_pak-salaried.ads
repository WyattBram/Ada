package Employee_Pak.Salaried is

  type Salaried_Employee is new Employee with private;
  type Salaried_Employee_Access is access Salaried_Employee;
  
  subtype Salary_Range is float range 0.0 .. 100000000.0;
  
  function Weekly_Pay (E: Salaried_Employee) return Weekly_Pay_Range;
  -- pre: none
  -- post: weekly pay is returned
  
  function Create_Salaried_Employee (Name: in String; SSN: in String; BirthDay: in Date;
    Salary: in Salary_Range) return Salaried_Employee;
  -- pre: none
  -- post: Salaried_Employee is created
  
  pragma Inline (Weekly_Pay);
  
  private
    type Salaried_Employee is new Employee with
      record
        Yearly_Salary: Salary_Range;
      end record;
      
end Employee_Pak.Salaried;
