/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author Ra.Oli
 */
public class Homme {
    private int id;
    private String nom;
    private String prenom;
    private String adresse;
    private String sexe;
    private String naissence;
    private String email;
    private String dece;

    public Homme() {
    }

    public Homme(String nom, String prenom, String adresse, String sexe, String naissence, String email, String dece) {
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
        this.sexe = sexe;
        this.naissence = naissence;
        this.email = email;
        this.dece = dece;
    }

    public Homme(int id, String nom, String prenom, String adresse, String sexe, String naissence, String email, String dece) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
        this.sexe = sexe;
        this.naissence = naissence;
        this.email = email;
        this.dece = dece;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getNaissence() {
        return naissence;
    }

    public void setNaissence(String naissence) {
        this.naissence = naissence;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDece() {
        return dece;
    }

    public void setDece(String dece) {
        this.dece = dece;
    }

    @Override
    public String toString() {
        return "Homme{" + "id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + ", sexe=" + sexe + ", naissence=" + naissence + ", email=" + email + ", dece=" + dece + '}';
    }
    
}
