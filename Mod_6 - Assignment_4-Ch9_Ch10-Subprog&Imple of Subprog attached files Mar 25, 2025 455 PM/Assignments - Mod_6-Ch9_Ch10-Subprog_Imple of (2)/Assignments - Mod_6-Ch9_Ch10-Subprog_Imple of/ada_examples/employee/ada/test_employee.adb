with Ada.Calendar, Employees,  Ada.Text_IO;
use Ada.Calendar, Employees,  Ada.Text_IO;

procedure Test_Employee is

    e1, e2: Employee_Access;

    procedure Print_Employee (E: in Employee_Access) is
  
    begin
        Put (Name (E.all));
        Put (": ");
        Put (float'image(Weekly_Pay (E.all)));
        New_Line;
    end Print_Employee;
    
begin
    e1 := Create_Hourly_Employee(Name     => "Bubba Dawg",
                                 SSN      => "666666666",
                                 BirthDay => time_of (Year    => 1970,
                                                        Month   => 4 ,
                                                        Day     =>  1),
                                 Hours    => 0.1,
                                 Rate     => 0.5);
    Print_Employee (e1);
    e2 := Create_Salaried_Employee(Name     => "Billy Bafoon",
                                   SSN      =>  "000000000",
                                   BirthDay => time_of (Year    =>  1980,
                                                        Month   => 2,
                                                        Day     => 29),
                                   Salary   => 100.0);
    Print_Employee (e2);
  end Test_Employee;
  
