/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
public class Registro {
    private Integer idPersona;
    private String Matricula;
    private String Nombre;
    private String AppellidoPa;
    private String AppellidoMa;
    private String Telefono;
    private String Usuario;
    private String Contraseña;
    private String CorreoElec;
    private TipoPersona TipoPer;

    public Registro(TipoPersona TipoPer) {
        this.TipoPer = TipoPer;
    }

    public Registro() {
    }

    public TipoPersona getTipoPer() {
        return TipoPer;
    }

    public void setTipoPer(TipoPersona TipoPer) {
        this.TipoPer = TipoPer;
    }

    
    public Integer getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(Integer idPersona) {
        this.idPersona = idPersona;
    }

    public String getMatricula() {
        return Matricula;
    }

    public void setMatricula(String Matricula) {
        this.Matricula = Matricula;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }
    
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getAppellidoPa() {
        return AppellidoPa;
    }

    public void setAppellidoPa(String AppellidoPa) {
        this.AppellidoPa = AppellidoPa;
    }

    public String getAppellidoMa() {
        return AppellidoMa;
    }

    public void setAppellidoMa(String AppellidoMa) {
        this.AppellidoMa = AppellidoMa;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public String getCorreoElec() {
        return CorreoElec;
    }

    public void setCorreoElec(String CorreoElec) {
        this.CorreoElec = CorreoElec;
    }
    
}
