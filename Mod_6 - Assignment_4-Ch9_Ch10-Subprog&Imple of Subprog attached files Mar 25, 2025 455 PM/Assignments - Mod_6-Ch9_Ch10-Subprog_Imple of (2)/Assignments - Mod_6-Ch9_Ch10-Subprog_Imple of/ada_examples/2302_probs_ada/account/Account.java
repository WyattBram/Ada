import java.util.Date;


public class Account
{

	/**
	 * account id which must be non-negative
	 */
	private int id;
	
	/**
	 * account balance which must be non-negative
	 */
	private double balance;
	
	/**
	 * annual interest rate for all accounts which must be non-negative 
	 */
	private static double annualInterestRate = 0;
	
	/**
	 * date account is created
	 */
	private Date dateCreated;

	/**
	 * preconditions: id and balance must be non-negative
	 * @param id
	 * @param balance
	 * postconditions: account has been created with id, balance, 
	 * 	and date indicating the precise time that the account was created
	 * @throws IllegalArgumentException if preconditions are not true
	 */
	public Account(int id, double balance)
	{
		if (balance < 0)
			throw new IllegalArgumentException ("negative initial balance");
		this.balance = balance;
		setId (id);
		dateCreated = new Date();
	}

	/**
	 * @return the id
	 */
	public int getId()
	{
		return id;
	}

	/**
	 * precondition: id is non-negative
	 * @param id the id to set
	 * @throws IllegalArgumentException if id is negative
	 */
	public void setId(int id)
	{
		if (id < 0)
			throw new IllegalArgumentException ("negative id");
		this.id = id;
	}

	/**
	 * @return the balance
	 */
	public double getBalance()
	{
		return balance;
	}

	/**
	 * @return the annualInterestRate
	 */
	public static double getAnnualInterestRate()
	{
		return annualInterestRate;
	}

	/**
	 * precondition: annualIntegerRate much be non-negative
	 * @param annualInterestRate the annualInterestRate to set
	 * @throws IllegalArgumentException if annualInterestRate is negative
	 */
	public static void setAnnualInterestRate(double annualInterestRate)
	{
		if (annualInterestRate < 0)
			throw new IllegalArgumentException ("attempt to set negative annual interest rate");
		Account.annualInterestRate = annualInterestRate;
	}

	/**
	 * @return the dateCreated
	 */
	public Date getDateCreated()
	{
		return dateCreated;
	}
	
	/**
	 * @return monthly interest rate
	 */
	public static double getMonthlyInterestRate ()
	{
		return annualInterestRate / 12;
	}
	
	/**
	 * precondition: amount must be non-negative & not larger than the current amount
	 * @param amount to be withdrawn
	 * postcondition: balance of the account has been decreased by amount
	 * @throws Illegal ArgumentException if precondition is not true
	 */
	public void withdraw (double amount)
	{
		if (amount < 0)
			throw new IllegalArgumentException ("attempt to withdraw negative amount");
		if (amount > balance)
			throw new IllegalArgumentException ("attempt to overdraw account");
		balance -= amount;
	}
	
	/**
	 * precondition: amount must be non-negative
	 * @param amount to be deposited
	 * postcondition: balance has been increased by amount
	 * @throws IllegalArgumentException if amount is negative
	 */
	public void deposit (double amount)
	{
		if (amount < 0)
			throw new IllegalArgumentException ("attempt to deposit a negative amount");
		balance += amount;
	}
}
