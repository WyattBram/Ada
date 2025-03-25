package complex is

	type complex is record
		first, second: Float;
	end record;


	function "+" (a, b: complex) return complex;
	function "-" (a, b: complex) return complex;
	function "*" (a, b: complex) return complex;
	function "/" (a, b: complex) return complex;

end complex;
	
