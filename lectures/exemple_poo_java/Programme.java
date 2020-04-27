// Ce code a vocation a etre utilisé sur un outil en ligne comme https://www.compilejava.net/ qui ne nécessite pas de créer un fichier par classe
public class Programme
{
  public static void main(String[] args)
  {
    Voiture maCaisse = new Voiture("Kit");
    System.out.println(maCaisse.afficherNom());
  }
}


public class Voiture
{
    private String nom;
    private int kilometrage = 0;
    Voiture(String nomDemande)
    {
      nom = nomDemande + " la voiture";
    }

    public String afficherNom()
    {
      return nom ;
    }
}
