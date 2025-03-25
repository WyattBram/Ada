
public class LinearEquation
{

	private double a;
	
	private double b;
	
	private double c;
	
	private double d;
	
	private double e;
	
	private double f;

	/**
	 * @param a
	 * @param b
	 * @param c
	 * @param d
	 * @param e
	 * @param f
	 * postcondition: object representing the equations ax + by = e & cx + dy = f has been created
	 */
	public LinearEquation(double a, double b, double c, double d, double e,
			double f)
	{
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.e = e;
		this.f = f;
	}

	/**
	 * @return the a
	 */
	public double getA()
	{
		return a;
	}

	/**
	 * @return the b
	 */
	public double getB()
	{
		return b;
	}

	/**
	 * @return the c
	 */
	public double getC()
	{
		return c;
	}

	/**
	 * @return the d
	 */
	public double getD()
	{
		return d;
	}

	/**
	 * @return the e
	 */
	public double getE()
	{
		return e;
	}

	/**
	 * @return the f
	 */
	public double getF()
	{
		return f;
	}
	
	/**
	 * @return whether system of equations has a solution
	 */
	public boolean isSolvable ()
	{
		return a * d != b * c;
	}
	
	/**
	 * precondition: system of equations has a solution
	 * @return x coordinate of solution
	 * throws ArithmeticException if precondition is not true
	 */
	public double getX ()
	{
		if (!isSolvable())
			throw new ArithmeticException ("no solution to system of equations");
		return (e * d - b * f) / (a * d - b * c);
	}
	
	/**
	 * precondition: system of equations has a solution
	 * @return y coordinate of solution
	 * @throws ArithmeticException if precondition is not true
	 */
	public double getY()
	{
		if (!isSolvable())
			throw new ArithmeticException ("no solution to system of equations");
		return (a * f - e * c) / (a * d - b * c);
	}
}
