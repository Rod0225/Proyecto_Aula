/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import DAO.Registro;
import DAO.TipoPersona;
import Service.RegistroService;
import java.io.Serializable;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author 52553
 */
public class RegistroHelper implements Serializable {
    private List<Registro>list;
    private Registro registro;
    public RegistroHelper() {
    }
    
    public boolean loadList( )
    {
        list = new RegistroService().getRegistroList( );
        return list != null && list.size() > 0;
    }
        public boolean loadInicioList( )
    {
        list = new RegistroService().getInicioList( );
        return list != null && list.size() > 0;
    }
   
    public boolean addRegisro( HttpServletRequest request )
    {
        registro = new Registro( new TipoPersona());
        registro.setMatricula(request.getParameter( "Matricula" ));
        if( registro.getMatricula()== null || registro.getMatricula().length()==0 )
        {
            return false;
        }
        registro.setNombre(request.getParameter( "Nombre" ));
        if( registro.getNombre()== null || registro.getNombre().length()==0 )
        {
            return false;
        }
        registro.setAppellidoPa(request.getParameter( "AppellidoPa" ));
        if( registro.getAppellidoPa()== null || registro.getAppellidoPa().length()==0 )
        {
            return false;
        }
        registro.setAppellidoMa(request.getParameter( "AppellidoMa" ));
        if( registro.getAppellidoMa()== null || registro.getAppellidoMa().length()==0 )
        {
            return false;
        }
        registro.setTelefono(request.getParameter( "Telefono" ));
        if( registro.getTelefono()== null || registro.getTelefono().length()==0 )
        {
            return false;
        }
        registro.setUsuario(request.getParameter( "Usuario" ));
        if( registro.getUsuario()== null || registro.getUsuario().length()==0 )
        {
            return false;
        }
        registro.setContraseña(request.getParameter( "Contraseña" ));
        if( registro.getContraseña()== null || registro.getContraseña().length()==0 )
        {
            return false;
        }
        registro.setCorreoElec(request.getParameter( "Correo" ));
        if( registro.getCorreoElec()== null || registro.getCorreoElec().length()==0 )
        {
            return false;
        }
        registro.getTipoPer().setIdTipoPer(getInteger(request.getParameter( "TipoPersona" )));
        if( registro.getTipoPer().getIdTipoPer()== null || registro.getTipoPer().getIdTipoPer()==0 )
        {
            return false;
        }
        return RegistroService.addRegistro(registro);
    }
    public Integer getInteger( String campo )
    {
        Integer val = 0;
        if( campo == null || campo.length() == 0 )
        {
            return null;
        }
        try
        {
            val = new Integer(campo);
            return val;
        }
        catch(NumberFormatException ex)
        {
            ex.printStackTrace();
        }
        return null;
    }
    public List<Registro> getInicioList()
    {
        if( list == null || list.size( )== 0 )
        {
            if( !loadInicioList( ) )
            {
                return null;
            }
        }
        return list;
    }
    public void setInicioList(List<Registro> list) 
    {
        this.list = list;
    }
}
