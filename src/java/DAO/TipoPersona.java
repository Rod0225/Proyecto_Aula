/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;

/**
 *
 * @author 52553
 */
public class TipoPersona implements Serializable{
    private Integer IdTipoPer;
    private String TipoPer;

    public TipoPersona() {
    }

    public Integer getIdTipoPer() {
        return IdTipoPer;
    }

    public void setIdTipoPer(Integer IdTipoPer) {
        this.IdTipoPer = IdTipoPer;
    }

    public String getTipoPer() {
        return TipoPer;
    }

    public void setTipoPer(String TipoPer) {
        this.TipoPer = TipoPer;
    }
    
}
