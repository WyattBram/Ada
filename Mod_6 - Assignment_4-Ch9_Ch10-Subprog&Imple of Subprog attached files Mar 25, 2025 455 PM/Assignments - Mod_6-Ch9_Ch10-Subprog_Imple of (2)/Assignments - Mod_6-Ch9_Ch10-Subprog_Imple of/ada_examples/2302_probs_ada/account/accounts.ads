with Ada.Calendar;

package Accounts is

   type Account is private;

   invalid_account_operation: exception;

   subtype Balance_Range is Float range 0.0 .. Float'Large;

   subtype Rate_Range is Float range 0.0 .. Float'Large;

   function create_Account (initial_balance: in Balance_Range; id: in Positive) return Account;

   function Get_Id (a: in Account) return Positive;

   procedure set_Id (a: in out Account; new_id: Positive);

   function get_balance (a: in Account) return Balance_Range;

   function get_annual_interest_rate return Rate_Range;

   procedure set_annual_interest_rate (new_rate: in Rate_Range);

   function get_date_created (a: in Account) return Ada.Calendar.Time;

   function get_monthly_interest_rate return Rate_Range;

   procedure withdraw (a: in out Account; Amount: in Balance_Range);

   procedure deposit (a: in out Account; Amount: in Balance_Range);

private
   type Account is
      record
         id: Positive;
         balance: Balance_Range;
         date_created: Ada.Calendar.Time;
      end record;

   annual_interest_rate: Rate_Range := 0.0;

end Accounts;
