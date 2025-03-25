package body Employee_Pak.Salaried is

  function Create_Salaried_Employee (Name: in String; SSN: in String;
    BirthDay: in Date; Salary: in Salary_Range) return Salaried_Employee is
    
    E: Salaried_Employee;
    
    begin
      E.Name (1 .. Name'Length) := Name;
      E.SSN := SSN;
      E.BirthDay := BirthDay;
      E.Yearly_Salary := Salary;
      return E;
    end Create_Salaried_Employee;

  function Weekly_Pay (E: Salaried_Employee) return Weekly_Pay_Range is
  
    begin
      return E.Yearly_Salary / 52.0;
    end Weekly_Pay;

end Employee_Pak.Salaried;

