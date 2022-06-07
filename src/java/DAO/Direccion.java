/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
public class Direccion {
    private Integer idDir;
    private String Calle;
    private String Colonia;
    private String CP;
    private String NumInt;
    private String NumExt;
    private String Municipio;
    private String Ciudad;

    public Integer getIdDir() {
        return idDir;
    }

    public void setIdDir(Integer idDir) {
        this.idDir = idDir;
    }

    public String getCalle() {
        return Calle;
    }

    public void setCalle(String Calle) {
        this.Calle = Calle;
    }

    public String getColonia() {
        return Colonia;
    }

    public void setColonia(String Colonia) {
        this.Colonia = Colonia;
    }

    public String getCP() {
        return CP;
    }

    public void setCP(String CP) {
        this.CP = CP;
    }

    public String getNumInt() {
        return NumInt;
    }

    public void setNumInt(String NumInt) {
        this.NumInt = NumInt;
    }

    public String getNumExt() {
        return NumExt;
    }

    public void setNumExt(String NumExt) {
        this.NumExt = NumExt;
    }

    public String getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(String Municipio) {
        this.Municipio = Municipio;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }
    public Direccion() {
    }
    
    
}
