public class Date
{

	private int month;
	private int day;
	private int year;
	
	public Date (int month, int day, int year)
	{
		if (month < 1 || month > 12)
			throw new InvalidDateException ("invalid month number");
		this.month = month;
		if (day < 1 || day > 31)
			throw new InvalidDateException ("invalid day number");
		this.day = day;
		this.day = year;
	}
	public int getDay()
	{
		return day;
	}

	public int getMonth()
	{
		return month;
	}

	public int getYear()
	{
		return year;
	}

}
