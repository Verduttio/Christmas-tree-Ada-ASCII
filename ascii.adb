WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Drzewko IS
   Pierwsze, Ostatnie, Rozmiar : Integer;
BEGIN
   Put("Podaj rozmiar drzewka");
   New_line;
   Rozmiar := Integer'Value(Get_Line);
   Pierwsze := Rozmiar/2;
   Ostatnie := Rozmiar/2;
   FOR X IN 0 .. Rozmiar/2 LOOP
      FOR Y IN 0 .. Rozmiar LOOP
         IF Y >= Pierwsze AND Y <= Ostatnie  THEN
            PUT("*");
         ELSE
            PUT(" ");
         END IF;
      END LOOP;
      Pierwsze := Pierwsze - 1;
      Ostatnie := Ostatnie + 1;
      New_line;
   END LOOP;
   --rysowanie pnia
   FOR X IN 0.. Rozmiar/8 LOOP
      FOR Y IN 0..Rozmiar LOOP
         IF Y >= Rozmiar/2 - Rozmiar/10 AND Y <= Rozmiar/2 + Rozmiar/10 THEN
            IF X = Rozmiar/8 THEN
               PUT("-");
            ELSE
               PUT("|");
            END IF;
         ELSE
               PUT(" ");
         END IF;
         END LOOP;
         New_Line;
   END LOOP;
   --rysowanie trawy
   FOR Y IN 0.. Rozmiar LOOP
      IF Y rem 2 = 0 THEN
         PUT("/");
      ELSE
         PUT("\");
      END IF;
   END LOOP;

   END Drzewko;
