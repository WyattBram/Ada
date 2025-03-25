package body Accounts is

   --------------------
   -- create_Account --
   --------------------

   function create_Account (initial_balance: in Balance_Range; id: in Positive) return Account is
      a: account;

   begin
      a.id := id;
      a.balance := initial_balance;
      a.date_created := Ada.Calendar.Clock;
      return a;
   end create_Account;

   ------------
   -- Get_Id --
   ------------

   function Get_Id (a: in Account) return Positive is
   begin
      return a.id;
   end Get_Id;

   ------------
   -- set_Id --
   ------------

   procedure set_Id (a: in out Account; new_id: Positive) is
   begin
      a.id := new_id;
   end set_Id;

   -----------------
   -- get_balance --
   -----------------

   function get_balance (a: in Account) return Balance_Range is
   begin
      return a.balance;
   end get_balance;

   ------------------------------
   -- get_annual_interest_rate --
   ------------------------------

   function get_annual_interest_rate return Rate_Range is
   begin
      return annual_interest_rate;
   end get_annual_interest_rate;

   ------------------------------
   -- set_annual_interest_rate --
   ------------------------------

   procedure set_annual_interest_rate (new_rate: in Rate_Range) is
   begin
      annual_interest_rate := new_rate;
   end set_annual_interest_rate;

   ----------------------
   -- get_date_created --
   ----------------------

   function get_date_created (a: in Account) return Ada.Calendar.Time is
   begin
      return a.date_created;
   end get_date_created;

   -------------------------------
   -- get_monthly_interest_rate --
   -------------------------------

   function get_monthly_interest_rate return Rate_Range is
   begin
      return annual_interest_rate / 12.0;
   end get_monthly_interest_rate;

   --------------
   -- withdraw --
   --------------

   procedure withdraw (a: in out Account; Amount: in Balance_Range) is
   begin
      a.balance := a.balance - amount;
   exception
      when others =>
         raise invalid_account_operation with "invalid withdrawal";
   end withdraw;

   -------------
   -- deposit --
   -------------

   procedure deposit (a: in out Account; Amount: in Balance_Range) is
   begin
      a.balance := a.balance + amount;
   exception
      when others =>
         raise invalid_account_operation with "invalid deposit";
   end deposit;

end Accounts;
