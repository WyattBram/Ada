package body complex is

	function "+" (a, b: complex) return complex is
	begin
		return (first => a.first + b.first, second => a.second + b.second);
	end "+";

	function "-" (a, b: complex) return complex is
	begin
		return (first => a.first - b.first, second => a.second - b.second);
	end "-";


	function "*" (a, b: complex) return complex is
	begin
		return (first => (a.first * b.first)  - (a.second * b.second), second => (a.first * b.second) + (a.second * b.first));
	end "*";


	function "/" (a, b: complex) return complex is
	begin
		return (  first => ((a.first * b.first + a.second * b.second) / (b.first**2 + b.second**2)),second => ((a.second * b.first - a.first * b.second) / (b.first**2 + b.second**2)));
	end "/";


end complex;
	
