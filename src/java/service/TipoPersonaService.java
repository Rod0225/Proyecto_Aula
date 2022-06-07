/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DAO.TipoPersona;
import static Service.MySQLconnection.closeConnection;
import static Service.MySQLconnection.getConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 52553
 */
public class TipoPersonaService {

    public TipoPersonaService() {
    }
    public static List<TipoPersona> getTipoPersonaList( )
    {
        List<TipoPersona>TipoPersonaList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        TipoPersona tipoPersona = null;
        
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
            resultSet = statement.executeQuery( "select * from TblCatTipoPer" );
            if( resultSet == null )
            {
                return null;
            }
            TipoPersonaList = new ArrayList<>();
            while( resultSet.next() )
            {
                tipoPersona = new TipoPersona();
                tipoPersona.setIdTipoPer(resultSet.getInt(1) );
                tipoPersona.setTipoPer(resultSet.getString(2) );
                TipoPersonaList.add(tipoPersona);
            }
            resultSet.close();
            closeConnection(connection);
            return TipoPersonaList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
}
