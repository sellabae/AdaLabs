-- CECS524 Lab Ada1. Distance between two points
-- Sella Bae
-- Apr 25, 2019

-- Import the libraries
WITH Ada.Text_IO;
WITH Ada.Float_Text_IO;
WITH Ada.Numerics.Elementary_Functions;
USE  Ada.Numerics.Elementary_Functions;

PROCEDURE Distance_between_Points IS
	TYPE Point IS RECORD
		X : Float;
		Y : Float;
	END RECORD;

	Point1 : Point;
	Point2 : Point;
	Distance : Float;
	X : Float;
	Y : Float;

	BEGIN
		-- Get inputs for 2 points from the user
		Ada.Text_IO.Put(Item => "Enter X1 Coordinate >");
		Ada.Float_Text_IO.Get(Item => Point1.X);
		Ada.Text_IO.Put(Item => "Enter Y1 Coordinate >");
		Ada.Float_Text_IO.Get(Item => Point1.Y);
		Ada.Text_IO.Put(Item => "Enter X2 Coordinate >");
		Ada.Float_Text_IO.Get(Item => Point2.X);
		Ada.Text_IO.Put(Item => "Enter Y2 Coordinate >");
		Ada.Float_Text_IO.Get(Item => Point2.Y);
		-- Calculate the distance between two points
		X := Point2.X - Point1.X;
		Y := Point2.Y - Point1.Y;
		Distance := Sqrt(X ** 2 + Y ** 2);
		-- Print the distance
		Ada.Text_IO.Put(Item => "Distance between two points is ");
		Ada.Float_Text_IO.Put(Item => Distance, Fore=>1, Aft=>2,Exp=>0);
		Ada.Text_IO.New_Line;
	END Distance_between_Points;
