package body Employee_Pak is

  function BirthDay (E: in Employee) return Date is
   
    begin
      return E.BirthDay;
    end BirthDay;

  function Name (E: in Employee) return String is
  
    begin
      return E.Name;
    end Name;

  function SSN (E: in Employee) return String is
  
    begin
      return E.SSN;
    end SSN;
 
end Employee_Pak;

