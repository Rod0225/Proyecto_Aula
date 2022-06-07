/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DAO.Registro;
import DAO.TipoPersona;
import static Service.MySQLconnection.closeConnection;
import static Service.MySQLconnection.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 52553
 */
public class RegistroService {

    public RegistroService() {
    }
    public static List<Registro> getRegistroList( )
    {
        List<Registro>registroList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Registro registro = null;
        
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return null;
            }
            statement = connection.createStatement( );
            if( statement == null )
            {
                return null;
            }
            resultSet = statement.executeQuery( "select idPersona,Boleta,Nombre,ApellidoPa,ApellidoMa,Telefono,Usuario,Contaseña,CorreoElec,TipoPer from tblPersona inner join tblcattipoper on tblPersona.idTipoPer=tblcattipoper.IdTipoPer" );
            if( resultSet == null )
            {
                return null;
            }
            registroList = new ArrayList<>();
            while( resultSet.next() )
            {
                registro = new Registro(new TipoPersona());
                registro.setIdPersona(resultSet.getInt(1) );
                registro.setMatricula(resultSet.getString(2) );
                registro.setNombre(resultSet.getString(3) );
                registro.setAppellidoPa(resultSet.getString(4));
                registro.setAppellidoMa(resultSet.getString(5));
                registro.setTelefono(resultSet.getString(6) );
                registro.setUsuario(resultSet.getString(7));
                registro.setContraseña(resultSet.getString(8));
                registro.setCorreoElec(resultSet.getString(9));
                registro.getTipoPer().setTipoPer(resultSet.getString(10));
                registroList.add(registro);
            }
            resultSet.close();
            closeConnection(connection);
            return registroList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    public static boolean addRegistro( Registro registro )
    {
        Connection connection = null;        
        String sql = null;
        PreparedStatement preparedStatement = null;
        int row = 0;
        try 
        {
            if( registro == null)
            {
                return false;
            }
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            sql = "insert into tblPersona(Boleta,Nombre,ApellidoPa,ApellidoMa,Telefono,Usuario,Contaseña,CorreoElec,IdTipoPer) values(?,?,?,?,?,?,?,?,?);";
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setString(1, registro.getMatricula());
            preparedStatement.setString(2, registro.getNombre());
            preparedStatement.setString(3, registro.getAppellidoPa());
            preparedStatement.setString(4, registro.getAppellidoMa());
            preparedStatement.setString(5, registro.getTelefono());
            preparedStatement.setString(6, registro.getUsuario());
            preparedStatement.setString(7, registro.getContraseña());
            preparedStatement.setString(8, registro.getCorreoElec());
            preparedStatement.setInt(9, registro.getTipoPer().getIdTipoPer());
            row = preparedStatement.executeUpdate();
            if( row == 0 )
            {
                return false;
            }
            preparedStatement.close();
            closeConnection(connection);
            return true;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    public static List<Registro> getInicioList( )
    {
        List<Registro>registroList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Registro registro = null;
        
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return null;
            }
            statement = connection.createStatement( );
            if( statement == null )
            {
                return null;
            }
            resultSet = statement.executeQuery( "select Usuario,Contaseña from TblPersona" );
            if( resultSet == null )
            {
                return null;
            }
            registroList = new ArrayList<>();
            while( resultSet.next() )
            {
                registro = new Registro();
                registro.setUsuario(resultSet.getString(1) );
                registro.setContraseña(resultSet.getString(2) );
                registroList.add(registro);
            }
            resultSet.close();
            closeConnection(connection);
            return registroList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
}
