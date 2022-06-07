/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import DAO.TipoPersona;
import Service.TipoPersonaService;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author 52553
 */
public class TipoPersonaHelper implements Serializable{
    private List<TipoPersona>list;
    public boolean loadList( )
    {
        list = TipoPersonaService.getTipoPersonaList();
        return list != null && list.size() > 0;
    }
    public List<TipoPersona> getList()
    {
        if( list == null || list.size( )== 0 )
        {
            if( !loadList( ) )
            {
                return null;
            }
        }
        return list;
    }
    public void setList(List<TipoPersona> list) 
    {
        this.list = list;
    }
}
