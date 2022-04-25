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
public class Vote {
  private int idv;
  private String lieu;

    public Vote() {
    }

    public Vote(String lieu) {
        this.lieu = lieu;
    }

    public Vote(int idv, String lieu) {
        this.idv = idv;
        this.lieu = lieu;
    }

    public int getIdv() {
        return idv;
    }

    public void setIdv(int idv) {
        this.idv = idv;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }
    
}
