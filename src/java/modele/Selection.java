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
public class Selection {
    private int ids;
    private int id;
    private int idc;
    private int ide;
    private int idv;
    private String nom;
    private String lieu;
    private String typee;
    private String nomc;
    
    public Selection() {
    } 

    public Selection(int id, int idc, int ide, int idv, String nom, String lieu, String typee, String nomc) {
        this.id = id;
        this.idc = idc;
        this.ide = ide;
        this.idv = idv;
        this.nom = nom;
        this.lieu = lieu;
        this.typee = typee;
        this.nomc = nomc;
    }

    public Selection(int ids, int id, int idc, int ide, int idv, String nom, String lieu, String typee, String nomc) {
        this.ids = ids;
        this.id = id;
        this.idc = idc;
        this.ide = ide;
        this.idv = idv;
        this.nom = nom;
        this.lieu = lieu;
        this.typee = typee;
        this.nomc = nomc;
    }   

    public Selection(int id, int ide, int idv, int idc) {

         this.id = id;
        this.idc = idc;
        this.ide = ide;
        this.idv = idv;

        //To change body of generated methods, choose Tools | Templates.
    }
    public int getIds() {
        return ids;
    }

    public void setIds(int ids) {
        this.ids = ids;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdc() {
        return idc;
    }

    public void setIdc(int idc) {
        this.idc = idc;
    }

    public int getIde() {
        return ide;
    }

    public void setIde(int ide) {
        this.ide = ide;
    }

    public int getIdv() {
        return idv;
    }

    public void setIdv(int idv) {
        this.idv = idv;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getTypee() {
        return typee;
    }

    public void setTypee(String typee) {
        this.typee = typee;
    }

    public String getNomc() {
        return nomc;
    }

    public void setNomc(String nomc) {
        this.nomc = nomc;
    }
    
}
