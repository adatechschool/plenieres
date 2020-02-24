with Ada.Text_IO;
use Ada.Text_IO;

procedure Morpion is

   Nc : constant Integer := 3;

   type Joueur is (VIDE, TOTO, TITI);
   type Une_Grille is array (1..Nc,1..Nc) of Joueur;

   type Partie is record
     Grille : Une_Grille;
     Toto_Gagne, Titi_Gagne, Match_Nul : Integer;
   end record;

   function Test_Ligne(G : Une_Grille) return Joueur;
   function Test_Colone(G : Une_Grille) return Joueur;
   function Test_Diagonale(G : Une_Grille) return Joueur;
   function Match_Nul(G : Une_Grille) return Boolean;
   procedure Evaluer(P : in out Partie; Fin : out Boolean);
   procedure Jouer(P : in out Partie; J1 : Joueur);

   function Test_Ligne(G : Une_Grille) return Joueur is
   begin
      for N in G'Range(1) loop
         if G(N,1) /= VIDE and G(N,1) = G(N,2) and G(N,2) = G(N,3) then
            return G(N,1);
         end if;
      end loop;
      return VIDE;
   end Test_Ligne;

   function Test_Colone(G : Une_Grille) return Joueur is
   begin
      for N in G'Range(2) loop
         if G(1,N) /= VIDE and G(1,N) = G(2,N) and G(2,N) = G(3,N) then
            return G(1,N);
         end if;
      end loop;
      return VIDE;
   end Test_Colone;

   function Test_Diagonale(G : Une_Grille) return Joueur is
      C : Joueur := G(2,2);
   begin
      if C /= VIDE then
         if (C = G(1,1) and C = G(3,3)) or (C = G(1,3) and C = G(3,1)) then
           return C;
         end if;
      end if;
      return VIDE;
   end Test_Diagonale;

   function Match_Nul(G : Une_Grille) return Boolean is
   begin
      for I in G'Range(1) loop
         for J in G'Range(2) loop
            if G(I,J) = VIDE then
               return FALSE;
            end if;
         end loop;
      end loop;
      return TRUE;
   end Match_Nul;

   procedure Evaluer(P : in out Partie; Fin : out Boolean) is
      Gagnant : Joueur := VIDE;
   begin
      Gagnant := Test_Ligne(P.Grille);
      if (Gagnant = TOTO) then
         P.Toto_Gagne := P.Toto_Gagne + 1;
         Fin := TRUE;
         return ;
      elsif (Gagnant = TITI) then
         P.Titi_Gagne := P.Titi_Gagne + 1;
         Fin := TRUE;
         return ;
      end if;

      Gagnant := Test_Colone(P.Grille);
      if (Gagnant = TOTO) then
         P.Toto_Gagne := P.Toto_Gagne + 1;
         Fin := TRUE;
         return ;
      elsif (Gagnant = TITI) then
         P.Titi_Gagne := P.Titi_Gagne + 1;
         Fin := TRUE;
         return ;
      end if;

      Gagnant := Test_Diagonale(P.Grille);
      if (Gagnant = TOTO) then
         P.Toto_Gagne := P.Toto_Gagne + 1;
         Fin := TRUE;
         return ;
      elsif (Gagnant = TITI) then
         P.Titi_Gagne := P.Titi_Gagne + 1;
         Fin := TRUE;
         return ;
      end if;

      Fin := Match_Nul(P.Grille);

      if Fin then
         P.Match_Nul := P.Match_Nul + 1;
      end if;

   end Evaluer;

   procedure Jouer(P : in out Partie; J1 : Joueur) is
      Fin : Boolean;
      J2 : Joueur;
   begin
      Evaluer(P, Fin);

      if Fin then
         return ;
      end if;

      if J1 = TOTO then
         J2 := TITI;
      else
         J2 := TOTO;
      end if;

      for I in P.Grille'Range(1) loop
         for J in P.Grille'Range(2) loop
            if P.Grille(I,J) = VIDE then
               P.Grille(I,J) := J1;
               Jouer(P,J2);
               P.Grille(I,J) := VIDE;
            end if;
         end loop;
      end loop;
   end Jouer;

   P : Partie := ((others => (others => VIDE)),0,0,0);
begin
   Jouer(P, TOTO);
   Put_Line("Victoire de Toto : " & Integer'Image(P.Toto_Gagne));
   Put_Line("Victoire de Titi : " & Integer'Image(P.Titi_Gagne));
   Put_Line("Match nul : " & Integer'Image(P.Match_Nul));
   Put_Line("Total : " & Integer'Image(P.Toto_Gagne + P.Titi_Gagne + P.Match_Nul));
end Morpion;
