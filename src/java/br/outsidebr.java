/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.outsidebe;
import dao.outsidedao;
import java.util.List;

/**
 *
 * @author CRISTIAN
 */
public class outsidebr {

    public outsidebr() {
    }
    
     public boolean create(outsidebe o){
        return new outsidedao().crearOutSide(o);
    }
    
     public boolean validate(outsidebe o){
         return new outsidedao().autenticar(o);
     }
     
}
