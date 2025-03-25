with Ada.Calendar;
use Ada.Calendar;

package Employees is

    type Employee_Type is (SALARIED, HOURLY);
    
    type Employee (emp_type: Employee_Type) is private;

    type Employee_Access is access Employee;

    NAME_SIZE: constant Positive := 40;

    SSN_SIZE: constant Positive := 9;

    subtype Weekly_Pay_Range is float range 0.0 .. float'large;
    
    subtype Hour_Range is float range 0.0 .. 168.0;
  
    subtype Rate_Range is float range 0.0 .. float'large;
    
    subtype Salary_Range is float range 0.0 .. float'large;
  
    function Create_Salaried_Employee (Name: in String; SSN: in String; BirthDay: in Time;
                                       Salary: in Salary_Range) return Employee_Access
      with pre => is_valid_SSN (SSN), post => Create_Salaried_Employee'Result /= null;
    -- pre: SSN is a valid social security number
    -- post: Salaried_Employee is created

    function Create_Hourly_Employee (Name: in String; SSN: in String;
                                     BirthDay: in Time; Hours: in Hour_Range; Rate: in Rate_Range) return
     Employee_Access with pre => is_valid_SSN (SSN), post => Create_Hourly_Employee'Result /= null;
    -- pre: SSN is a valid social security number
    -- post: Hourly_Employee object has been created
    
    function Name (E: in Employee) return String;
    -- pre: none
    -- post: name of employee is returned
  
    function SSN (E: in Employee) return String;
    -- pre: none
    -- post: social security number of employee is returned
  
    function BirthDay (E: in Employee) return Time;
    -- pre: none
    -- post: birthday of employee is returned
  
    function Weekly_Pay (E: in Employee) return Weekly_Pay_Range ;
    -- pre: none
    -- post: weekly pay is returned
    
    function is_valid_SSN (s: in String) return Boolean;

private
    type Employee (emp_type: Employee_Type) is 
        record
            Name: String (1 .. NAME_SIZE) := (1 .. NAME_SIZE => ' ');
            SSN: String (1 .. SSN_SIZE);
            BirthDay: Time;
            case emp_type is
                when SALARIED =>
                    yearly_salary: Salary_Range;
                when HOURLY =>
                    num_hours: Hour_Range;
                    wage: Rate_Range;
            end case;
        end record;
      
end Employees;
