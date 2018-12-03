/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author CRISTIAN
 */
public class outsidebe {
    
    private String nombreTrabajador;
    private String telefonoOutside;
    private String outsideName;
    private String pass;
    private String email;
    private String last_session;

    public outsidebe() {
    }

    public outsidebe(String nombreTrabajador, String telefonoOutside, String outsideName, String pass, String email) {
        this.nombreTrabajador = nombreTrabajador;
        this.telefonoOutside = telefonoOutside;
        this.outsideName = outsideName;
        this.pass = pass;
        this.email = email;
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
        this.last_session= sdf.format(d);
    }

    public String getNombreTrabajador() {
        return nombreTrabajador;
    }

    public void setNombreTrabajador(String nombreTrabajador) {
        this.nombreTrabajador = nombreTrabajador;
    }

    public String getTelefonoOutside() {
        return telefonoOutside;
    }

    public void setTelefonoOutside(String telefonoOutside) {
        this.telefonoOutside = telefonoOutside;
    }

    public String getOutsideName() {
        return outsideName;
    }

    public void setOutsideName(String outsideName) {
        this.outsideName = outsideName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLast_session() {
        return last_session;
    }

    public void setLast_session(String last_session) {
        this.last_session = last_session;
    }


    
    
}
