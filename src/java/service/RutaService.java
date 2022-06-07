/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import DAO.Registro;
import DAO.Ruta;
import Service.MySQLconnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gerdoc
 */
public class RutaService 
{
    
    public List<Ruta> getRutaList( )
    {
        List<Ruta>rutaList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Ruta ruta = null;
        
        try 
        {
            connection = MySQLconnection.getConnection();
            if( connection == null )
            {
                return null;
            }
            statement = connection.createStatement( );
            if( statement == null )
            {
                return null;
            }
            resultSet = statement.executeQuery( "SELECT * FROM tblRutas" );
            if( resultSet == null )
            {
                return null;
            }
            rutaList = new ArrayList<>();
            while( resultSet.next() )
            {
                ruta = new Ruta(new Registro());
                ruta.setIdRuta(resultSet.getInt(1) );
                ruta.getPersona().setIdPersona(resultSet.getInt(2) );
                ruta.setCosto(resultSet.getInt(3) );
                ruta.setTiempo(resultSet.getTime(4));
                rutaList.add(ruta);
            }
            resultSet.close();
            MySQLconnection.closeConnection(connection);
            return rutaList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean addRuta( Ruta ruta )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO tblRuta(IdRuta,Persona,CAMPO3,CAMPO4) VALUES(?,?,?,?)";
        int row = 0;
        try 
        {
            connection = MySQLconnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(1, ruta.getIdRuta());
            preparedStatement.setInt(2, ruta.getPersona().getIdPersona());
            preparedStatement.setInt(3, ruta.getCosto());
            preparedStatement.setTime(4, new java.sql.Time( ruta.getTiempo().getTime() ) );
            row = preparedStatement.executeUpdate();
            MySQLconnection.closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteRuta( Ruta ruta )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM TBLruta WHERE IdRuta = ?";
        int row = 0;
        try 
        {
            connection = MySQLconnection.getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setInt(1, ruta.getIdRuta());
            row = preparedStatement.executeUpdate();
            MySQLconnection.closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
}
