
public class NumberSystemsOps
{
	

	/**
	 * precondition: n >= 0
	 * @param n
	 * @return binary representation of n
	 * @throws IllegalArgumentException if n < 0
	 */
	public static String decimalToBinary (int n)
	{
		if (n < 0)
			throw new IllegalArgumentException ("negative argument");
		String s = "";
		int num = n;
		do
		{
			int quotient = num / 2;
			int remainder = num % 2;
			s = binaryDigit (remainder) + s;
			num = quotient;
		}
		while (num > 0);
		return s;
	}

	private static char binaryDigit(int d)
	{
		char ch;
		if (d == 0)
			ch = '0';
		else
			ch = '1';
		return ch;
	}
}
