-- CECS524 Lab Ada3. Ada Packages(specification and body parts)
-- Sella Bae
-- May 2, 2019

WITH Ada.Float_Text_IO;
WITH Ada.Text_IO;
WITH Ada.Numerics.Elementary_Functions;
Use Ada.Numerics.Elementary_Functions;

PACKAGE BODY Lines IS
-- implement the functions and procedures listed in the spec

  FUNCTION Distance(L1 : in Line) RETURN Float is
  BEGIN
    RETURN Sqrt( (L1.P1.X-L1.P2.X) ** 2 + (L1.P1.Y-L1.P2.Y) ** 2 );
  END Distance;

  FUNCTION Slope(L1 : in Line) RETURN Float is
  BEGIN
    RETURN (L1.P1.Y-L1.P2.Y) / (L1.P1.X-L1.P2.X);
  END Slope;

  PROCEDURE SetLine( X1, Y1, X2, Y2 : Float; L : out Line) is
  BEGIN
    L.P1.X := X1;
    L.P1.Y := Y1;
    L.P2.X := X2;
    L.P2.Y := Y2;
  END SetLine;

  PROCEDURE PrintLine(L : Line) is
  BEGIN
    Ada.Text_IO.Put(Item => "(");
    PrintPoint(L.P1);
    Ada.Text_IO.Put(Item => ",");
    PrintPoint(L.P2);
    Ada.Text_IO.Put(Item => ")");
  END PrintLine;

  PROCEDURE PrintPoint( P : Point) is
  BEGIN
    Ada.Text_IO.Put(Item => "(");
    Ada.Float_Text_IO.Put(Item=>P.X, Fore=>1, Aft=>2,Exp=>0);
    Ada.Text_IO.Put(Item => ",");
    Ada.Float_Text_IO.Put(Item=>P.Y, Fore=>1, Aft=>2,Exp=>0);
    Ada.Text_IO.Put(Item => ")");
  END PrintPoint;

END Lines;
