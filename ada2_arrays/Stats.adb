-- CECS524 Lab Ada2. Array and Function/Procedure
-- Sella Bae
-- Apr 30, 2019
--
-- This program takes 10 "natural" numbers from the user through the keyboard,
-- computes their average, finds the minimum and maximum values,
-- and writes the numbers to the screen followed by the statistics.

with Ada.Text_IO;
with Ada.Integer_TExt_IO;

PROCEDURE Stats is
   MaxItems : CONSTANT Positive := 10;
   SUBTYPE MyRange IS Positive RANGE 1..MaxItems;
   TYPE IntArray IS ARRAY(MyRange) of Natural;
   Numbers : IntArray;
   Avg : Natural;

   FUNCTION Average( N : IntArray) RETURN  Natural IS
      Sum : Natural;
      Count : Natural;
   BEGIN
      Sum := 0;
      Count := 0;

      FOR I IN MyRange LOOP
         Sum := Sum + n(I);
         COUNT := COUNT + 1;
      END LOOP;
      Sum := Sum / Count;
      RETURN Sum;
   END Average;

   --FUNCTION Min
   FUNCTION Min( N : IntArray) RETURN Natural IS
     MinNum : Natural;
   BEGIN
     MinNum := n(1);
     FOR I IN MyRange LOOP
       IF MinNum > n(I) THEN
         MinNum := n(I);
       END IF;
     END LOOP;
     RETURN MinNum;
   END Min;

   --FUNCTION Max
   FUNCTION Max( N : IntArray) RETURN Natural IS
     MaxNum : Natural;
   BEGIN
     MaxNum := n(1);
     FOR I IN MyRange LOOP
       IF MaxNum < n(I) THEN
         MaxNum := n(I);
       END IF;
     END LOOP;
     RETURN MaxNum;
   END Max;

   --PROCEDURE PrintArray
   PROCEDURE PrintArray( N : IntArray) IS
   BEGIN
     FOR I IN MyRange LOOP
       Ada.Integer_Text_IO.Put(Item => n(I), Width => 4);
       Ada.Text_IO.New_Line;
     END LOOP;
   END PrintArray;

   --PROCEDURE PrintAll
   PROCEDURE PrintAll( N : IntArray) IS
   BEGIN
      PrintArray(N);
      Avg := Average(Numbers);
      Ada.Text_IO.Put(Item => "The average is ");
      Ada.Integer_Text_IO.Put(Item => avg, Width => 4);
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put(Item => "The smallest value is ");
      Ada.Integer_Text_IO.Put(Item=>Min(N), Width =>4);
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put(Item => "The largest value is ");
      Ada.Integer_Text_IO.Put(Item=>Max(N), Width=>4);
      Ada.Text_IO.New_Line;
   END PrintAll;

BEGIN
   Ada.Text_IO.Put(Item => "This program finds the average, smallest and largest values in a set of numbers.");
   Ada.Text_IO.New_Line;
   FOR I in MyRange LOOP
      Ada.Text_IO.Put(Item => "Enter number=>");
      Ada.Integer_Text_IO.Get(Item => Numbers(I));
   END LOOP;

   PrintAll(Numbers);
END Stats;
