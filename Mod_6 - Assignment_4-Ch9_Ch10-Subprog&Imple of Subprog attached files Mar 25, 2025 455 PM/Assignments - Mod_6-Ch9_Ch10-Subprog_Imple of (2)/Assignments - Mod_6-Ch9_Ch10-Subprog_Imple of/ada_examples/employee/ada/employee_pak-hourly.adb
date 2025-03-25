package body Employee_Pak.Hourly is

  function Create_Hourly_Employee (Name: in String; SSN: in String;
    BirthDay: in Date; Hours: in Hour_Range; Rate: in Rate_Range)
    return Hourly_Employee is
    
    E: Hourly_Employee;
    
    begin
      E.Name (1 .. Name'Length) := Name;
      E.SSN := SSN;
      E.BirthDay := BirthDay;
      E.Wage := Rate;
      E.Num_Hours := Hours;
      return E;
    end Create_Hourly_Employee;

  function Weekly_Pay (E: in Hourly_Employee) return Weekly_Pay_Range is
  
    begin
      return float (E.Num_Hours) * E.Wage;
    end Weekly_Pay;

end Employee_Pak.Hourly;

