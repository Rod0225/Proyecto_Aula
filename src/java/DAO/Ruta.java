
package DAO;

import java.sql.Time;

/**
 *
 * @author 52553
 */
public class Ruta {
    private Integer IdRuta;
    private Registro Persona;
    private Integer Costo;
    private Time Tiempo;

    public Ruta(Registro registro) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer getIdRuta() {
        return IdRuta;
    }

    public void setIdRuta(Integer IdRuta) {
        this.IdRuta = IdRuta;
    }

    public Registro getPersona() {
        return Persona;
    }

    public void setPersona(Registro Persona) {
        this.Persona = Persona;
    }

    public Integer getCosto() {
        return Costo;
    }

    public void setCosto(Integer Costo) {
        this.Costo = Costo;
    }
    public Time getTiempo() {
        return Tiempo;
    }

    public void setTiempo(Time Tiempo) {
        this.Tiempo = Tiempo;
    }
    public Ruta() {
    }
    
}
