with complex;
use complex;

with Ada.Text_IO; use Ada.Text_IO;

procedure main is
	n1 : complex.complex := (first => 5.0, second=> 2.0);
	n2 : complex.complex := (first => 1.0, second=> 3.0);
	n3 : complex.complex;

begin
	n3 := n1 + n2;
	Put_Line ("Addition : " & Float'Image(n3.first) & Float'Image(n3.second) & "i");

	n3 := n1 - n2;
	Put_Line ("Sub : " & Float'Image(n3.first) & Float'Image(n3.second) & "i");

	n3 := n1 * n2;
	Put_Line ("Mul : " & Float'Image(n3.first) & Float'Image(n3.second) & "i");

	n3 := n1 / n2;
	Put_Line ("Div : " & Float'Image(n3.first) & Float'Image(n3.second) & "i");

end main;
