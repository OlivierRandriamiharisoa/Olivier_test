/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import com.mysql.cj.jdbc.Blob;

/**
 *
 * @author Ra.Oli
 */
public class Candidant {
    private int idc;
    private String but;
    private String nomc;
    private String datetire;
    
    public Candidant() {
    }

    public Candidant(String but, String nomc, String datetire) {
        this.but = but;
        this.nomc = nomc;
        this.datetire = datetire;
    }

    public Candidant(int idc, String but, String nomc, String datetire) {
        this.idc = idc;
        this.but = but;
        this.nomc = nomc;
        this.datetire = datetire;
    }

    public int getIdc() {
        return idc;
    }

    public void setIdc(int idc) {
        this.idc = idc;
    }

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }

    public String getNomc() {
        return nomc;
    }

    public void setNomc(String nomc) {
        this.nomc = nomc;
    }

    public String getDatetire() {
        return datetire;
    }

    public void setDatetire(String datetire) {
        this.datetire = datetire;
    }

}
