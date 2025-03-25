package Date_Pak is

  type Date is private;
  
  subtype Month_Num is Positive range 1 .. 12;
  subtype Day_Num is Positive range 1 .. 31;
  subtype Year_Num is Positive range 1920 .. 2020;
  
  function Create_Date (M: in Month_Num; D: in Day_Num; Y: in Year_Num) return Date;
  -- pre: none
  -- post: Date object with input arguments for month, day, & year has been
  --         created
  
  function Month (D: in Date) return Month_Num;
  -- pre: none
  -- post: month number is returned
  
  function Day (D: in Date) return Day_Num;
  -- pre: none
  -- post: day of month is returned
  
  function Year (D: in Date) return Year_Num;
  -- pre: none
  -- post: year is returned
  
  pragma Inline (Month, Day, Year);
  
  private
    type Date is
      record
        M: Month_Num;
        D: Day_Num;
        Y: Year_Num;
      end record;
      
end Date_Pak;
