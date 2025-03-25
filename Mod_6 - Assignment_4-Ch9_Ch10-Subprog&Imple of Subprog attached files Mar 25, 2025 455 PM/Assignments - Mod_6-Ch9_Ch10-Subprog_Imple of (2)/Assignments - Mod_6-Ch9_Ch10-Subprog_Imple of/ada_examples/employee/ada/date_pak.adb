package body Date_Pak is

  function Create_Date (M: in Month_Num; D: in Day_Num; Y: in Year_Num) return Date is
  
    Dt: Date;
    
    begin
      Dt.M := M;
      Dt.D := D;
      Dt.Y := Y;
      return Dt;
    end Create_Date;

  function Day (D: in Date) return Day_Num is
  
    begin
      return D.D;
    end Day;

  function Month (D: in Date) return Month_Num is
  
    begin
      return D.M;
    end Month;

  function Year (D: in Date) return Year_Num is
  
    begin
      return D.Y;
    end Year;

end Date_Pak;

