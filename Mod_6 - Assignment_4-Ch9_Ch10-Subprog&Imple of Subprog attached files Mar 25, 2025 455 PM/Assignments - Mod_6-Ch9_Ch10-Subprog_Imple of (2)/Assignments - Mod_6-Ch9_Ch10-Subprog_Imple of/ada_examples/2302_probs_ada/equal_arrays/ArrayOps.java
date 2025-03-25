
public class ArrayOps
{

	/**
	 * @param a1  array of integers
	 * @param a2  array of integers
	 * @return true if a1 & a2 are equal (same length & corresponding elements equal) - false ow
	 */
	public static boolean areEqual (int[] a1, int[] a2)
	{
		boolean result = false;
		if (a1 == null & a2 == null)
			result = true;
		else if (a1 == null)
			result = false;
		else if (a2 == null)
			result = false;
		else if (a1.length != a2.length)
			result = false;
		else
		{
			int i = 0;
			while (i < a1.length && a1[i] == a2[i])
				i++;
			result = i == a1.length;
		}
		return result;
	}
}
