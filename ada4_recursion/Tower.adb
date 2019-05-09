-- CECS524 Lab Ada4. Recursion
-- Sella Bae
-- May 9, 2019
--
-- Tower of Hanoi
-- The program asks for how many rings to move
-- and then kicks off the process
-- by calling Tower from main
-- which then recursively calls itself until N
-- (the number of rings for that call) is 1.

WITH Ada.Text_IO;
WITH Ada.Integer_Text_IO;

PROCEDURE Tower IS
  SUBTYPE Pegs IS Character RANGE 'A'..'C';
  Rings, Moves : Natural;
  PROCEDURE PrintMove( FromPeg, ToPeg : Pegs; Which : Natural) IS
  BEGIN
      Moves := Moves + 1;
      --code to print one line of output
      Ada.Text_IO.Put(Item => "Move #");
      Ada.Integer_Text_IO.Put(Item=>Moves, Width=>1);
      Ada.Text_IO.Put(Item => " move Disk ");
      Ada.Integer_Text_IO.Put(Item=>Which, Width=>1);
      Ada.Text_IO.Put(Item => " from pec ");
      Ada.Text_IO.Put(Item => FromPeg);
      Ada.Text_IO.Put(Item => " to pec ");
      Ada.Text_IO.Put(Item => ToPeg);
      Ada.Text_IO.New_Line;
  END PrintMove;

  PROCEDURE MoveDisk(FromPeg, ToPeg, AuxPeg: Pegs; N : Natural) IS
  BEGIN
    --code for the recursive procedure
    IF N > 0 THEN
      MoveDisk(FromPeg=>FromPeg, ToPeg=>AuxPeg, AuxPeg=>ToPeg, N=>N-1);
      PrintMove(FromPeg=>FromPeg, ToPeg=>ToPeg, Which=>N);
      MoveDisk(FromPeg=>AuxPeg, ToPeg=>ToPeg, AuxPeg=>FromPeg, N=>N-1);
    END IF;

  END MoveDisk;
BEGIN
  Moves := 0;
  Ada.Text_IO.Put("Tower of Hanoi");
  Ada.Text_IO.New_Line;
  Ada.Text_IO.Put("Enter number of rings to move:");
  Ada.Integer_Text_IO.Get(Rings);
  MoveDisk(FromPeg => 'A', ToPeg => 'B', AuxPeg => 'C', N => Rings);
END Tower;
