
public class StudentOps
{

	/**
	 * precondition: ave must be between 0 & 100 inclusive
	 * @param ave numerical average
	 * @return corresponding letter grade
	 * @throws IllegalArgumentException if ave is outside the specified range
	 */
	public static char numericalGrade (double ave)
	{
		if (ave < 0 || ave > 100)
			throw new IllegalArgumentException ("numerical average is out of range");
		char result;
		if (ave >= 90)
			result = 'A';
		else if (ave >= 80)
			result = 'B';
		else if (ave >= 70)
			result = 'C';
		else if (ave >= 60)
			result = 'D';
		else
			result = 'F';
		return result;
	}
	
	/**
	 * precondition: grade is A, B, C, D, or F
	 * @param grade - letter grade for course
	 * @return boolean indicating whether grade in course satisfied major requirement (C or better)
	 * @throws IllegalArgumentException if precondition is not satisified
	 */
	public static boolean satisfiesMajorRequirement (char grade)
	{
		if (grade != 'A' && grade != 'B' && grade != 'C' && grade != 'D' && grade != 'F')
			throw new IllegalArgumentException ("invalid letter grade");
		return grade == 'A' || grade == 'B' || grade == 'C';
	}
}
