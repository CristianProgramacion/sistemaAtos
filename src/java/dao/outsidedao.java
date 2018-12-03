/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.outsidebe;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author CRISTIAN
 */
public class outsidedao extends  conexion{
    
    public boolean crearOutSide(outsidebe outside){
        boolean flag = false;
        PreparedStatement pst = null;
        try {
            String sql ="call  newOutside(?,?,?,?,?,?)";
            pst = getMysql().prepareStatement(sql);
            pst.setString(1, outside.getNombreTrabajador());
            pst.setString(2, outside.getTelefonoOutside());
            pst.setString(3, outside.getOutsideName());
            pst.setString(4, encriptar.sha1(outside.getPass()));
            pst.setString(5, outside.getEmail());
            pst.setString(6, outside.getLast_session());
            if (pst.executeUpdate() ==1) {
                flag = true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally{
            try {
                if (getMysql() !=null) getMysql().close();
                if (pst !=null) pst.close();
                
            } catch (Exception e) {
            }
        }
        return flag;
    }
    
    
    public boolean autenticar(outsidebe o){
        boolean flag = false;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call autenticar(?,?)";
            pst = getMysql().prepareStatement(sql);
            pst.setString(1, o.getOutsideName());
            pst.setString(2, encriptar.sha1(o.getPass()));
            rs = pst.executeQuery();
            if (rs.absolute(1)) {
                flag = true;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }finally{
            try {
                if (getMysql() !=null) getMysql().close();;
                if (pst !=null) pst.close();
                if (rs !=null) rs.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
    
}
