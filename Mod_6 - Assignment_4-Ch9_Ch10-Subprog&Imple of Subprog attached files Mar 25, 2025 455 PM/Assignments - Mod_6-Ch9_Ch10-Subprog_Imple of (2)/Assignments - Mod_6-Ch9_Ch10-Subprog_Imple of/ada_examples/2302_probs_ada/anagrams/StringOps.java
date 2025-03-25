import java.util.Arrays;


public class StringOps
{
	
	/**
	 * precondition: neither s1 nor s2 can be null
	 * @param s1
	 * @param s2
	 * @return true if s1 & s2 are anagrams - false otherwise
	 * @throws IllegalArgumentException if precondition is not true
	 */
	public static boolean AreAnagrams (String s1, String s2)
	{
		String sortedS1 = StringOps.sort(s1);
		String sortedS2 = StringOps.sort(s2);
		return sortedS1.equals(sortedS2);
	}
	
	/**
	 * precondition: neither s1 nor s2 can be null
	 * @param s1
	 * @param s2
	 * @return true is s1 is a substring of s2 - false otherwise
	 * @throws IllegalArgumentException if precondition is not true
	 */
	public static boolean isSubstring (String s1, String s2)
	{
		boolean result = false;
		if (s1 == null || s2 == null)
			throw new IllegalArgumentException ("null string");
		int i = 0;
		boolean done = false;
		do
		{
			if (s1.length() > s2.substring(i).length())
			{
				result = false;
				done = true;
			}
			else if (s1.equals(s2.substring(i, i + s1.length())))
			{
				result = true;
				done = true;
			}
			else
				i++;
		}
		while (!done);
		return result;
	}
	
	private static String sort (String s)
	{
		if (s == null)
			throw new IllegalArgumentException ("null array");
		char[] a = s.toCharArray();
		Arrays.sort(a);
		return new String (a);
	}
	
}
